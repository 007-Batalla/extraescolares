<div class="certificate-container flex items-center gap-10">
    <div class="card w-[500px] bg-secondary shadow-xl rounded-xl">
        <div class="card-body">
            <div class="flex flex-col justify-center items-center">
                <h2 class="card-title text-neutral-50 font-bold text-center uppercase">descargar constancia</h2>
                <form wire:submit.prevent="searchData" class="flex flex-col gap-8 w-full mt-6">
                    <div class="w-full">
                        <label for="search" class="textLabel">Matrícula:</label>
                        <input wire:model="search" type="text" name="search" class="label" required>
                        @error('search') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
                        </input>
                    </div>
                    <div class="w-full flex justify-between items-center">
                        <button type="button" id="btn-scan-qr" class="btn-primary flex justify-between gap-2">
                            <span>Verificar código QR</span>
                            <x-icon name="o-qr-code" class="h-6 w-6" />
                        </button>
                        <button type="submit" class="btn-primary flex justify-between gap-2">
                            <img wire:loading wire:target="searchData" src="/storage/images/spinner.svg" alt="spinner" class="h-6 mr-2">
                            <span>Buscar</span>
                            <x-icon name="o-magnifying-glass" class="h-6 w-6" />
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <x-modal wire:model="modalAlert" title="Constancias extraescolares" class="backdrop-blur">
        <div class="mb-5">{{ $alertModalText}}</div>
        <x-slot:actions>
            <x-button label="Aceptar" @click="$wire.modalAlert = false" class="btn-secondary" />
        </x-slot:actions>
    </x-modal>

    <x-modal wire:model="downloadCertificateModal" title="Constancias Extraescolares" subtitle="" separator>
        @if ($student_data === null)
        <h1 class="text-neutral-950">
            {{$downloadModalText}}
            <!-- <span class="uppercase font-medium">{{ $search }}</span> -->
        </h1>
        <x-slot:actions>
            <x-button label="Aceptar" class="btn-secondary" @click="$wire.downloadCertificateModal = false" />
        </x-slot:actions>
        @endif
        @if( $student_data !== null)
        <span>
            Nombre: <strong>{{ $student_data['name'] }}</strong><br>
            Actividad: <strong>{{ $student_data['activity']['name'] }}</strong>
        </span>
        <x-slot:actions>
            <x-button label="Cancelar" @click="$wire.downloadCertificateModal = false" />
            <x-button label="Descargar" class="btn-secondary" wire:click="downloadPdf()" />
        </x-slot:actions>
        @endif
    </x-modal>

    <x-modal id="modal-scan-qr" title="Escanear Código QR" subtitle="" separator>
        <canvas hidden="" id="qr-canvas" class="w-full"></canvas>

        <div id="qr-success" hidden="">
            <div id="output-success" hidden="">
                <b>Nombre:</b> <span id="data-name"></span><br />
                <b>Matrícula:</b> <span id="data-enrollment"></span><br />
                <b>Carrera:</b> <span id="data-career"></span><br>
                <b>Actividad:</b> <span id="data-activity"></span><br />
                <b>Responsable:</b> <span id="data-teacher"></span>
            </div>
            <div id="output-not-found" hidden="">
                <b>Se encontró un problema</b><br /><span id="not-found-message"></span>
            </div>
        </div>

        <x-slot:actions>
            <x-button label="Cerrar" onclick="qrScanModal.close()" />
        </x-slot:actions>
        <div>
        </div>
    </x-modal>

    @push('scripts')
    <script src="https://rawgit.com/sitepoint-editors/jsqrcode/master/src/qr_packed.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <script>
        const qrcodereader = window.qrcode;

        const video = document.createElement("video");
        const canvasElement = document.getElementById("qr-canvas");
        const canvas = canvasElement.getContext("2d");

        const qrScanModal = document.getElementById('modal-scan-qr');
        const btnScanQr = document.getElementById("btn-scan-qr");

        const qrSuccess = document.getElementById("qr-success");

        const outputSuccess = document.getElementById("output-success");
        const dataName = document.getElementById("data-name");
        const dataEnrollment = document.getElementById("data-enrollment");
        const dataCareer = document.getElementById("data-career");
        const dataActivity = document.getElementById("data-activity");
        const dataTeacher = document.getElementById("data-teacher");

        const outputNotFound = document.getElementById("output-not-found");
        const notFoundMessage = document.getElementById("not-found-message");


        let scanning = false;

        qrScanModal.addEventListener('close', () => {
            video.srcObject.getTracks().forEach(track => {
                track.stop();
            });

            video.srcObject = null;

            scanning = false;
            qrSuccess.hidden = true;
            btnScanQr.hidden = false;
            canvasElement.hidden = true;
            outputSuccess.hidden = true;
            outputNotFound.hidden = true;
        });

        qrcodereader.callback = (qrResponse) => {
            if (qrResponse) {
                axios.get('/api/v1/certificates/verify/' + qrResponse, {
                        headers: {
                            'Accept': 'application/json'
                        }
                    })
                    .then(function(httpResponse) {
                        // handle success
                        if (httpResponse.status === 200) {
                            // console.log(httpResponse.data.data);
                            outputSuccess.hidden = false;
                            dataName.innerHTML = httpResponse.data.data.name;
                            dataEnrollment.innerHTML = httpResponse.data.data.university_enrollment;
                            dataCareer.innerHTML = httpResponse.data.data.career;
                            dataActivity.innerHTML = httpResponse.data.data.activity;
                            dataTeacher.innerHTML = httpResponse.data.data.teacher;
                        }
                    })
                    .catch(function(error) {
                        if (error.response.status === 404) {
                            outputNotFound.hidden = false;
                            notFoundMessage.innerHTML = error.response.data.message;
                        }
                    })
                    .finally(function() {});
                scanning = false;

                video.srcObject.getTracks().forEach(track => {
                    track.stop();
                });

                qrSuccess.hidden = false;
                canvasElement.hidden = true;
                btnScanQr.hidden = false;

            }
        };

        btnScanQr.onclick = () => {
            qrScanModal.showModal();

            navigator.mediaDevices
                .getUserMedia({
                    video: {
                        facingMode: "environment"
                    }
                })
                .then(function(stream) {
                    scanning = true;
                    qrSuccess.hidden = true;
                    btnScanQr.hidden = true;
                    canvasElement.hidden = false;
                    video.setAttribute("playsinline", true); // required to tell iOS safari we don't want fullscreen
                    video.srcObject = stream;
                    video.play();
                    tick();
                    scan();
                });
        };

        function tick() {
            canvasElement.height = video.videoHeight;
            canvasElement.width = video.videoWidth;
            canvas.drawImage(video, 0, 0, canvasElement.width, canvasElement.height);

            scanning && requestAnimationFrame(tick);
        }

        function scan() {
            try {
                qrcodereader.decode();
            } catch (e) {
                setTimeout(scan, 300);
            }
        }
    </script>
    @endpush
</div>
<x-card title="" subtitle="" class="containerRegister" shadow separator>
	<h2 class="cardtitle">DATOS DEL ALUMNO</h2>
	<form wire:submit.prevent="saveData" class="mt-4 w-full">
		<div class="w-full grid grid-cols-1 sm:grid-cols-2 gap-8">
			<div class="col-span-1">
				<div class="mb-2 w-full">
					<label for="inscription_code" class="textLabel">Número de ficha</label>
					<input wire:model="inscription_code" type="text" name="inscription_code" class="label" required>
					@error('inscription_code') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
					</input>
				</div>

				<div class="mb-2 w-full">
					<label for="name" class="textLabel">Nombre</label>
					<input wire:model="name" type="text" name="name" class="label" required>
					@error('name') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
					</input>
				</div>

				<div class="mb-2 w-full">
					<label for="gender" class="textLabel">Género</label>
					<select wire:model="gender" class="selects" required>
						<option value="" class="text-neutral-600 font-sans">Selecciona una opción</option>
						@foreach ($genders as $gender)
						<option value="{{ $gender->value }}">{{ $gender->label() }}</option>
						@endforeach
					</select>
					@error('gender') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror

				</div>


				<div class="mb-2 w-full">
					<label for="career" class="textLabel">Carrera</label>
					<select wire:model="career" class="selects" required>
						<option value="" class="text-neutral-600">Selecciona una opción</option>
						@foreach ($careers as $career)
						<option value="{{ $career['id'] }}">{{ $career['name'] }}</option>
						@endforeach
					</select>
					@error('career') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
				</div>
			</div>
			<div class="col-span-1">
				<div class="mb-2 w-full">
					<label for="period" class="textLabel">Periodo</label>
					<div class="flex justify-between items-center">
						<select wire:change="searchPeriod" wire:model="period" class="selects" required>
							<option value="" class="text-neutral-600">Selecciona una opción</option>
							@foreach ($periods as $period)
							<option value="{{ $period['id'] }}">{{ $period['lapse'] }}</option>
							@endforeach
						</select>
						<img wire:loading wire:target="searchPeriod" src="/storage/images/spinner.svg" alt="spinner" class="rounded-md h-8 bg-white">
					</div>
					@error('period') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
				</div>
				<div class="mb-2 w-full">
					<label for="activity" class="textLabel">Extraescolar</label>
					<select wire:model="activity" class="selects" required>
						<option value="" class="text-neutral-600">Selecciona una opción</option>
						@foreach ($activities as $activity)
						<option value="{{ $activity['id'] }}">{{ $activity['name'] }}</option>
						@endforeach
					</select>
					@error('activity') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
				</div>
				<div class="mb-2 w-full">
					<label for="illnes" class="textLabel">¿Padeces alguna enfermedad crónica o degenerativa?</label>
					<textarea wire:model="illnes" type="text" name="illnes" class="block w-full px-4 py-2 rounded-lg ring-0 border-r-0 outline-none resize-none placeholder-neutral-500" placeholder="En caso no padecer alguna enfermedad escribir ninguna" rows="4" cols="50" required></textarea>
					@error('illnes') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
				</div>
			</div>
		</div>

		<div class="flex flex-col mt-4">
			<div class="g-recaptcha" data-sitekey={{config('services.recaptcha.key')}} data-callback="reCaptchaCallback" wire:ignore></div>
			@error('recaptcha') <span class="text-red-500 text-sm">{{ $message }}</span> @enderror
		</div>

		<div class="w-full flex justify-center mt-8">
			<!-- Google Recaptcha -->
			<button type="submit" class="bg-neutral-50 rounded-xl px-4 py-2 font-medium text-blue-950 flex items-center justify-between text-lg">
				<img wire:loading wire:target="saveData" class="h-4 mr-2" src="/storage/images/spinner.svg" alt="spinner">
				Registrarse
			</button>
		</div>
	</form>

	<x-modal wire:model="showAlertModal" title="Registro extraescolares" class="backdrop-blur">
		<div class="mb-5">{{ $alertModalText}}</div>
		<x-slot:actions>
			<x-button label="Aceptar" @click="$wire.showAlertModal = false" class="btn-secondary" />
		</x-slot:actions>
	</x-modal>
</x-card>

@push('scripts')
<script async src="https://www.google.com/recaptcha/api.js"></script>
<script>
	const reCaptchaCallback = (response) => {
		Livewire.first().set('recaptcha', response);
	}

	window.reCaptchaCallback = reCaptchaCallback;
</script>
@endpush

@script
<script>
	$wire.on('reload-recaptcha', () => {
		grecaptcha.reset();
	});
</script>
@endscript
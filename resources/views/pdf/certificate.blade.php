<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Certificado</title>
	<style>
		html {
			margin: 0px;
			padding: 0px;
			font-family: Arial, Helvetica, sans-serif;
		}

		.body {
			font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", "Liberation Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
			font-size: 1rem;
			background-color: black;
			display: flex;
			justify-content: center;
			align-items: center;
			width: 100%;
			min-height: 100vh;
		}

		.image-background {
			height: 100%;
			width: 100%;
			z-index: -1;
			position: absolute;
		}

		.text {
			position: absolute;
			font-size: 1rem;
			width: 80%;
			top: 42%;
			left: 51.5%;
			transform: translate(-50%, -50%);
			text-align: justify;
			text-justify: auto;
			line-height: 150%;
		}

		.admin-services {
			position: absolute;
			font-size: 1rem;
			width: 300px;
			top: 27%;
			left: 29.6%;
			transform: translate(-50%, -50%);
			text-align: left;
		}

		.admin-services-activity {
			position: absolute;
			font-size: 1rem;
			width: 450px;
			top: 29%;
			left: 39%;
			transform: translate(-50%, -50%);
			text-align: left;
		}

		.user {
			position: absolute;
			font-size: 0.75rem;
			width: 230px;
			top: 73%;
			left: 29%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.user-activity {
			position: absolute;
			font-size: 0.75rem;
			width: 230px;
			top: 74.5%;
			left: 29%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.admin {
			position: absolute;
			font-size: 0.75rem;
			width: 230px;
			top: 73%;
			left: 75%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.admin-activity {
			position: absolute;
			font-size: 0.75rem;
			width: 230px;
			top: 74.8%;
			left: 75%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.content {
			text-align: left;
			z-index: 1;
		}

		.token {
			position: absolute;
			z-index: 1;
			font-size: 0.8rem;
			bottom: 95px;
			right: 300px;
			transform: translate(0%, -50%);
		}

		.token-qr {
			position: absolute;
			z-index: 1;
			bottom: 50px;
			right: 160px;
			transform: translate(0%, -50%);
		}
	</style>
</head>

<body>
	<img class="image-background" src="{{ storage_path('certificate/template.png') }}" alt="template">
	{{-- <h2>{{ $student['name'] }}</h2> --}}
	<span class="admin-services">Lic. Mortimer Castellanos Cruz</span>
	<span class="admin-services-activity"><strong>Jefe del Departamento de Servicios Escolares</strong></span>
	<p class="text">
		El que suscribe <strong>{{ $student['activity']['user'][0]['name'] }}</strong>, por este medio se permite hacer de
		su
		conocimiento que el (la)
		estudiante <strong>{{ $student['name'] }}</strong>, con número de control <strong>{{
			$student['university_enrollment'] }}</strong> de
		la
		carrera de <strong>{{ $student['career']['name'] }}</strong>, ha cumplido su actividad Cultural y/o Deportiva de
		<strong>{{ $student['activity']['name'] }}</strong> con un nivel de desempeño <strong>{{ $student['performance']
			}}</strong> y un valor numérico de <strong>{{
			$student['points'] }}</strong> durante el
		periodo escolar <strong>{{ $student['period']['lapse'] }}</strong>
		con un valor curricular de <strong>2</strong> créditos.<br><br>
		Se extiende la presente en la ciudad de Teapa Tabasco; con fecha de <strong>{{ $student['validated_at'] }}</strong>.
	</p>
	<span class="user">{{ $student['activity']['user'][0]['name'] }}</span>
	<span class="user-activity"><strong>Responsable {{$student['activity']['name']}}</strong></span>
	<span class="admin">L.E. Carmen Godínez Vidal</span>
	<span class="admin-activity"><strong>Jefe del Departamento de Difusión y Concertación</strong></span>
	<p class="token">{{ $student['validation_token'] }}</p>
	<div class="token-qr">
		<img src="data:image/png;base64,{{  $qrcode  }}" alt="qr-code">
	</div>
</body>

</html>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport"
		content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Estudiantes</title>
	<style>
		html,
		body {
			height: 100%;
			margin: 0;
			padding-top: 315px;
			padding-left: 100px;
			padding-bottom: 280px;
		}

		table {
			page-break-inside: avoid !important;
		}

		.container {
			height: 200mm; // to makes each ticket has it's own page
			margin: 0 auto;
			padding: 0;
		}

		.image-background {
			margin: 0;
			height: 100%;
			width: 100%;
			z-index: -1;
			position: fixed;
		}

		.activity-span {
			position: fixed;
			font-size: 1rem;
			width: 230px;
			top: 24%;
			left: 35%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.date-span {
			position: fixed;
			font-size: 1rem;
			width: 230px;
			top: 74%;
			left: 35%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.teacher-span {
			position: fixed;
			font-size: 1rem;
			width: 230px;
			top: 84%;
			left: 18%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.admin1-span {
			position: fixed;
			font-size: 1rem;
			width: 230px;
			top: 84%;
			left: 48%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.admin2-span {
			position: fixed;
			font-size: 1rem;
			width: 230px;
			top: 84%;
			left: 80%;
			transform: translate(-50%, -50%);
			text-align: center;
		}

		.table {
			position: fixed;
			font-size: 1rem;
			width: 80%;
			top: 29%;
			left: 12.3%;
			padding: 100px;
			/* transform: translate(-50%, -50%); */
		}

		/* header {
			position: fixed;
			top: -60px;
			left: 0;
			right: 0;
			height: 100%;
		} */
	</style>
</head>

<body>
	<img class="image-background" src="{{ storage_path('list/template.jpg') }}" alt="template">
	<span class="activity-span">{{ $activity }}</span>
	<span class="date-span"> Teapa, Tabasco a {{ $date }}</span>
	<span class="teacher-span">{{ $teacher }}</span>
	<span class="admin1-span">L.E. Carmen Godínez Vidal</span>
	<span class="admin2-span">L.E. Carmen Godínez Vidal</span>
	<div></div>
	@foreach($students as $student)
	<table>
		<tbody>
			<tr>
				<td style="height: 20px; width: 30px">{{ $student['number'] + 1 }}</td>
				<td style="width: 240px; font-size: 0.9rem">{{ $student['name'] }}</td>
				<td style="width: 75px;">{{ $student['university_enrollment'] }}</td>
				<td style="font-size:0.9rem">{{ $student['career'] }}</td>
			</tr>
		</tbody>
	</table>
	@endforeach
	</div>
</body>

</html>
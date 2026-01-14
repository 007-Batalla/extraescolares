<?php

namespace App\Filament\Admin\Widgets;

use App\Models\Activity;
use App\Models\Career;
use App\Models\Period;
use App\Models\Selective;
use App\Models\Student;
use App\Models\User;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class AdminResourcesStats extends BaseWidget
{
	protected function getStats(): array
	{
		return [
			Stat::make('Administradores', User::role('admin')->get()->count()),
			Stat::make('Maestros', User::role('teacher')->get()->count()),
			Stat::make('Carreras', Career::get()->count()),
			Stat::make('Periodos', Period::get()->count()),
			Stat::make('Actividades', Activity::get()->count()),
			Stat::make('Estudiantes inscritos', Student::get()->count()),
			Stat::make('Estudiantes selectivos', Selective::get()->count()),
		];
	}
}

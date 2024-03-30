<?php

namespace Database\Seeders;

use App\Models\Activity;
use App\Models\Career;
use App\Models\Period;
use App\Models\Teacher;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TestSeeder extends Seeder
{
	/**
	 * Run the database seeds.
	 */
	public function run(): void
	{
		Career::create([
			'name' => 'Ing. Informática'
		]);

		$activity = Activity::create([
			'name' => 'Guitarra',
			'capacity' => 50,
			'user_id' => 1,
		]);

		$period = Period::create([
			'lapse' => 'Enero - Junio 2024',
		]);

		$period2 = Period::create([
			'lapse' => 'Julio - Dic 2024',
		]);

		$period->activities()->attach($activity);
		$period2->activities()->attach($activity);
	}
}

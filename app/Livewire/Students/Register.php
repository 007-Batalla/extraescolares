<?php

namespace App\Livewire\Students;

use App\Enums\Genders;
use App\Models\Activity;
use App\Models\Career;
use App\Models\Period;
use App\Models\Student;
use App\Rules\ReCaptchaRule;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;
use Livewire\Attributes\Validate;
use Livewire\Component;
use Mary\Traits\Toast;

class Register extends Component
{
	use Toast;

	#[Validate(['required'], message: ['required' => 'Este campo es requerido'])]
	#[Validate(['regex:/^\d{8}$/'], message: ['regex' => 'Debes introducir un número de ficha válido'])]
	#[Validate(['unique:students,inscription_code'], message: ['unique' => 'El número de ficha ya ha sido registrado'])]
	public string $inscription_code;

	#[Validate(['required'], message: ['required' => 'Debes proporcionar tu nombre'])]
	public string $name;

	#[Validate(['required'], message: ['required' => 'Debes seleccionar una carrera'])]
	public string $career;

	#[Validate(['required'], message: ['required' => 'Debes seleccionar una actividad'])]
	public string $activity;

	#[Validate(['required'], message: ['required' => 'Debes seleccionar un periodo'])]
	public string $period;

	#[Validate(['required'], message: ['required' => 'Debes especificar tu estado de salud'])]
	public string $illnes;

	#[Validate(['required'], message: ['required' => 'Debes seleccionar un género'])]
	public string $gender;

	public $careers;
	public $activities;
	public $periods;
	public $genders;

	public $recaptcha;

	public bool $showAlertModal = false;

	public string $alertModalText = '';

	public function mount()
	{
		$this->activities = [];
		$this->genders = Genders::cases();
		$this->careers = Career::get()->toArray();
		$this->periods = Period::orderByDesc('id')->orderBy('created_at', 'desc')->get()->toArray();
	}

	public function saveData()
	{
		$validator = Validator::make(
			[
				'recaptcha' => $this->recaptcha,
			],
			[
				'recaptcha' => ['required', new ReCaptchaRule],
			]
		);

		if ($validator->fails()) {
			$this->setErrorBag($validator->errors());
			$this->dispatch('resetReCaptcha');

			return null;
		}

		$this->validate();

		if (Student::where('activity_id', $this->activity)->where('period_id', $this->period)->count() < Activity::where('id', $this->activity)->first()->capacity) {
			Student::create([
				'inscription_code' => $this->inscription_code,
				'name'  => $this->name,
				'gender' => $this->gender,
				'career_id' => $this->career,
				'activity_id' => $this->activity,
				'period_id' => $this->period,
				'illnes' => $this->illnes,
			]);

			$this->alertModalText = "Tu registro se ha completado con éxito";

			$this->clearData();
		} else {
			$this->alertModalText = "Al parecer no hay espacios disponibles para la actividad a la que te deseas inscribir";
		}

		$this->showAlertModal = true;
	}

	public function clearData()
	{
		$this->inscription_code = '';
		$this->name = '';
		$this->career = '';
		$this->activity = '';
		$this->period = '';
		$this->gender = '';
		$this->illnes = '';

		$this->dispatch('reload-recaptcha');
	}

	public function searchPeriod()
	{
		$this->activities = Activity::with('periods')
			->whereHas('periods', function ($query) {
				$query->where('period_id', $this->period);
			})
			->get()
			->filter(function ($activity) {
				if ((Student::where('activity_id', $activity->id)->where('period_id', $this->period)->count() < $activity->capacity)) return $activity;
			})
			->toArray();
	}

	public function render()
	{
		return view('livewire.students.register')
			->extends('components.layouts.students')
			->section('content')
			->title('Registro extraescolares');
	}
}

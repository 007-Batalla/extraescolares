<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('selectives', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('gender')->max(1);
            $table->foreignId('career_id')
                ->constrained('careers')
                ->cascadeOnDelete();
            $table->string('university_enrollment')->nullable();
            $table->foreignId('activity_id')
                ->constrained('activities')
                ->cascadeOnDelete();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('selectives');
    }
};

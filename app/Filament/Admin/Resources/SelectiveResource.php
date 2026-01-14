<?php

namespace App\Filament\Admin\Resources;

use App\Enums\Genders;
use App\Filament\Admin\Resources\SelectiveResource\Pages;
use App\Filament\Admin\Resources\SelectiveResource\RelationManagers;
use App\Models\Selective;
use App\Models\Student;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SelectiveResource extends Resource
{
    protected static ?string $model = Selective::class;

    protected static ?string $navigationIcon = 'heroicon-o-academic-cap';

    protected static ?string $modelLabel = 'Selectivo';

    protected static ?string $pluralModelLabel = 'Selectivos';

    protected static ?int $navigationSort = 6;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255)
                    ->label('Nombre'),
                Forms\Components\Select::make('gender')
                    ->required()
                    ->options(fn(): array => Genders::forSelect())
                    // ->formatStateUsing(fn (string|null $state): string => Genders::getLabel($state))
                    ->label('Género'),
                Forms\Components\Select::make('career_id')
                    ->relationship('career', 'name')
                    ->required()
                    ->label('Carrera'),
                Forms\Components\Select::make('activity_id')
                    ->relationship('activity', 'name')
                    ->required()
                    ->label('Actividad'),
                Forms\Components\TextInput::make('university_enrollment')
                    ->unique(ignoreRecord: true)
                    ->regex('/^\d{2}[A-Z]\d{5}$/')
                    ->validationMessages([
                        'unique' => 'El número de matrícula ya existe',
                        'regex' => 'La matrícula debe tener el formato 00E00000',
                    ])
                    ->maxLength(8)
                    ->label('Matrícula'),
            ])
            ->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->sortable()
                    ->searchable()
                    ->label('Nombre'),
                Tables\Columns\TextColumn::make('gender')
                    ->sortable()
                    ->label('Género')
                    ->getStateUsing(function (Model $record) {
                        return $record->gender->label();
                    })
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('activity.name')
                    ->numeric()
                    ->sortable()
                    ->searchable()
                    ->label('Actividad'),
                Tables\Columns\TextColumn::make('university_enrollment')
                    ->searchable()
                    ->label('Matrícula'),
                Tables\Columns\TextColumn::make('career.name')
                    ->numeric()
                    ->sortable()
                    ->searchable()
                    ->toggleable()
                    ->label('Carrera'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSelectives::route('/'),
            'create' => Pages\CreateSelective::route('/create'),
            'edit' => Pages\EditSelective::route('/{record}/edit'),
        ];
    }
}

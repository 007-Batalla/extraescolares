<?php

namespace App\Filament\Admin\Resources\SelectiveResource\Pages;

use App\Filament\Admin\Resources\SelectiveResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSelective extends EditRecord
{
    protected static string $resource = SelectiveResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

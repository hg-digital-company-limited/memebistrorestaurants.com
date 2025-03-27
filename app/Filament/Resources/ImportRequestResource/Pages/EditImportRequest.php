<?php

namespace App\Filament\Resources\ImportRequestResource\Pages;

use App\Filament\Resources\ImportRequestResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditImportRequest extends EditRecord
{
    protected static string $resource = ImportRequestResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

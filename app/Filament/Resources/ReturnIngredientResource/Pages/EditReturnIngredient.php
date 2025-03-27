<?php

namespace App\Filament\Resources\ReturnIngredientResource\Pages;

use App\Filament\Resources\ReturnIngredientResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditReturnIngredient extends EditRecord
{
    protected static string $resource = ReturnIngredientResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

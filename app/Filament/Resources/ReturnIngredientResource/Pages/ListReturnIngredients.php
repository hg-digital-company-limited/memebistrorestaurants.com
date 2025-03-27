<?php

namespace App\Filament\Resources\ReturnIngredientResource\Pages;

use App\Filament\Resources\ReturnIngredientResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListReturnIngredients extends ListRecords
{
    protected static string $resource = ReturnIngredientResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

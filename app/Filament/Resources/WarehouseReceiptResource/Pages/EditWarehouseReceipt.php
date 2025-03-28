<?php

namespace App\Filament\Resources\WarehouseReceiptResource\Pages;

use App\Filament\Resources\WarehouseReceiptResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditWarehouseReceipt extends EditRecord
{
    protected static string $resource = WarehouseReceiptResource::class;
    protected static ?string $title = 'Chỉnh sửa phiếu nhập kho';

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

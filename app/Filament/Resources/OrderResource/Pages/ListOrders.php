<?php

namespace App\Filament\Resources\OrderResource\Pages;

use App\Filament\Resources\OrderResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Database\Eloquent\Builder;

class ListOrders extends ListRecords
{
    protected static string $resource = OrderResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tạo đơn hàng'),
        ];
    }

    protected function getTableQuery(): Builder
    {
        return parent::getTableQuery()->orderBy('created_at', 'desc'); // Sắp xếp theo created_at mới nhất
    }
}
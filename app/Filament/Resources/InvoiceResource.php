<?php

namespace App\Filament\Resources;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Storage;
use Filament\Tables\Actions\Action;
use App\Filament\Resources\InvoiceResource\Pages;
use App\Filament\Resources\InvoiceResource\RelationManagers;
use App\Filament\Resources\InvoiceResource\RelationManagers\InvoiceItemsRelationManager;
use App\Models\Invoice;
use App\Models\Restaurant;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

class InvoiceResource extends Resource
{
    protected static ?string $model = Invoice::class;
    protected static ?string $navigationGroup = 'Quản lý Hóa đơn';
    protected static ?string $navigationLabel = 'Đơn hàng trực tiếp';
    protected static ?string $title = 'Đơn hàng trực tiếp';

    public static function getPluralModelLabel(): string
    {
        return 'Danh sách hóa đơn';
    }
    protected static ?int $navigationSort = 2;

    protected static ?string $navigationIcon = 'heroicon-o-credit-card';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('invoice_code')
                    ->label('Mã hóa đơn')
                    ->required()
                    ->maxLength(255)
                    ->default(function () {
                        do {
                            $code = 'INV-' . strtoupper(uniqid());
                        } while (Invoice::where('invoice_code', $code)->exists());

                        return $code;
                    }),
                Forms\Components\Select::make('restaurant_id')
                    ->label('Nhà hàng')
                    ->options(Restaurant::all()->pluck('name', 'id'))
                    ->required()
                   ,
                // Forms\Components\TextInput::make('total_amount')
                //     ->label('Tổng tiền')
                //     ->required()
                //     ->numeric()
                //     ->suffix('VNĐ'),
                Forms\Components\Select::make('status')
                    ->label('Trạng thái')
                    ->options([
                        'pending' => 'Chưa thanh toán',
                        'paid' => 'Đã thanh toán',
                    ])
                    ->default('pending')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('invoice_code')->label('Mã hóa đơn')->searchable(),
                Tables\Columns\TextColumn::make('restaurant.name')->label('Cơ sở')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('total_amount')->label('Tổng tiền')->numeric()->money('VND'),
                Tables\Columns\TextColumn::make('status')->label('Trạng thái')->badge()->formatStateUsing(function ($state) {
                    switch ($state) {
                        case 'pending':
                            return 'Chưa thanh toán';
                        case 'paid':
                            return 'Đã thanh toán';
                    }
                }),
                Tables\Columns\TextColumn::make('created_at')->label('Ngày tạo')->dateTime()->sortable(),
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->label('Xem'),
                    Tables\Actions\EditAction::make()
                        ->label('Chỉnh sửa'),
                    Tables\Actions\DeleteAction::make()
                        ->label('Xóa'),
                    Tables\Actions\Action::make('print')
                        ->label('In hóa đơn')
                        ->icon('heroicon-o-printer')
                        ->url(fn (Invoice $record) => route('invoices.print', $record))
                        ->openUrlInNewTab(), // Mở file PDF trong tab mới
                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()->label('Xóa'),
                    ExportBulkAction::make(),
                ]),
            ]);
    }

     public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }

    public static function getRelations(): array
    {
        return [
            InvoiceItemsRelationManager::class,
        ];
    }

    public static function printInvoice(Invoice $invoice)
    {
        $pdf = Pdf::loadView('pdf.invoice', ['invoice' => $invoice]);

        $filePath = 'invoices/invoice_' . $invoice->invoice_code . '.pdf';
        Storage::put('public/' . $filePath, $pdf->output());

        return Storage::url($filePath);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListInvoices::route('/'),
            'create' => Pages\CreateInvoice::route('/create'),
            'edit' => Pages\EditInvoice::route('/{record}/edit'),
        ];
    }
}

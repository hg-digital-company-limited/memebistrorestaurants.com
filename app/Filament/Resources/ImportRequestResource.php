<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ImportRequestResource\Pages;
use App\Filament\Resources\ImportRequestResource\RelationManagers;
use App\Models\ImportRequest;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ImportRequestResource extends Resource
{
    protected static ?string $model = ImportRequest::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'Quản lý Nguyên Liệu';
    protected static ?string $title = 'Phiếu yêu cầu nhập hàng';
    protected static ?string $pluralModelLabel = 'Phiếu yêu cầu nhập hàng';
    protected static ?int $navigationSort = 99;
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\DatePicker::make('request_date')
                    ->label('Ngày yêu cầu')
                    ->required(),
                Forms\Components\Select::make('requested_by')
                    ->label('Người yêu cầu')
                    ->options(User::all()->pluck('name', 'id'))
                    ->required()
                 ,
                Forms\Components\Select::make('status')
                    ->label('Trạng thái')
                    ->options([
                        'pending' => 'Chờ xác nhận',
                        'approved' => 'Đã xác nhận',
                        'rejected' => 'Đã từ chối',
                    ])
                    ->disabled()
                    ->default('pending')
                    ->required()
                ,
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('request_date')
                    ->label('Ngày yêu cầu')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('user.name')
                        ->label('Người yêu cầu')
                    ->searchable(),
                Tables\Columns\SelectColumn::make('status')
                    ->label('Trạng thái')
                    ->options([
                        'pending' => 'Chờ xác nhận',
                        'approved' => 'Đã xác nhận',
                        'rejected' => 'Đã từ chối',
                    ])
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày tạo')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->label('Ngày cập nhật')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->label('Xem'), // Đổi nhãn sang tiếng Việt
                    Tables\Actions\EditAction::make()
                        ->label('Chỉnh Sửa'), // Đổi nhãn sang tiếng Việt
                    Tables\Actions\DeleteAction::make()
                        ->label('Xóa'), // Đổi nhãn sang tiếng Việt
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->label('Xóa'), // Đổi nhãn sang tiếng Việt
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
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListImportRequests::route('/'),
            'create' => Pages\CreateImportRequest::route('/create'),
            'edit' => Pages\EditImportRequest::route('/{record}/edit'),
        ];
    }
}

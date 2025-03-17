<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ReservationResource\Pages;
use App\Filament\Resources\ReservationResource\RelationManagers;
use App\Models\Reservation;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ReservationResource extends Resource
{
    protected static ?string $model = Reservation::class;
    protected static ?string $navigationGroup = 'Quản lý Nhà Hàng';
    public static function getPluralModelLabel(): string
    {
        return 'Danh sách đặt bàn';
    }
    protected static ?string $navigationIcon = 'heroicon-o-calendar';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Thông tin người đặt')
                    ->schema([
                        Forms\Components\TextInput::make('name')
                            ->required()
                            ->maxLength(255)
                            ->label('Tên'),
                        Forms\Components\TextInput::make('phone')
                            ->tel()
                            ->required()
                            ->maxLength(255)
                            ->label('Số điện thoại'),
                    ]),

                Forms\Components\Section::make('Thông tin đặt chỗ')
                    ->schema([
                        Forms\Components\TextInput::make('user_id')
                            ->numeric()
                            ->label('ID người dùng'),
                        Forms\Components\TextInput::make('restaurant_id')
                            ->numeric()
                            ->label('ID nhà hàng'),
                        Forms\Components\TextInput::make('number_of_people')
                            ->required()
                            ->numeric()
                            ->label('Số lượng người'),
                        Forms\Components\DatePicker::make('reservation_day')
                            ->required()
                            ->label('Ngày đặt'),
                        Forms\Components\DateTimePicker::make('reservation_time')
                            ->required()
                            ->label('Thời gian đặt'),
                        Forms\Components\TextInput::make('reservation_code')
                            ->maxLength(255)
                            ->label('Mã đặt chỗ'),
                        Forms\Components\Textarea::make('notes')
                            ->required()
                            ->maxLength(255)
                            ->label('Ghi chú'),
                    ]),

                Forms\Components\Section::make('Trạng thái')
                    ->schema([
                        Forms\Components\Select::make('status')
                            ->required()
                            ->options([
                                'pending' => 'Chờ xác nhận',
                                'confirmed' => 'Đã xác nhận',
                                'cancelled' => 'Đã hủy',
                            ])
                            ->label('Trạng thái'),
                    ]),
            ]);
    }
    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('reservation_code')
                    ->searchable()
                    ->label('Mã đặt bàn'),
                Tables\Columns\TextColumn::make('user.name')
                    ->numeric()
                    ->searchable()
                    ->label('Tên người đặt')
                    ->sortable(),
                Tables\Columns\TextColumn::make('restaurant.name')
                    ->numeric()
                    ->searchable()
                    ->label('Tên nhà hàng')
                    ->sortable(),
                Tables\Columns\TextColumn::make('number_of_people')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('reservation_time')
                    ->dateTime()
                    ->sortable()
                    ->label('Thời gian đặt')
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('notes')
                    ->searchable()
                    ->label('Ghi chú')
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->label('Tên người đặt'),
                Tables\Columns\TextColumn::make('phone')
                    ->searchable()
                    ->label('Số điện thoại'),
                Tables\Columns\TextColumn::make('reservation_day')
                    ->date()
                    ->sortable()
                    ->label('Ngày đặt'),
                Tables\Columns\TextColumn::make('status')
                    ->badge()
                    ->label('Trạng thái'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->label('Ngày đặt')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->label('Ngày cập nhật')
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
            'index' => Pages\ListReservations::route('/'),
            'create' => Pages\CreateReservation::route('/create'),
            'edit' => Pages\EditReservation::route('/{record}/edit'),
        ];
    }
}

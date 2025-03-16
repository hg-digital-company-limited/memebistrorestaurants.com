<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DishResource\Pages;
use App\Filament\Resources\DishResource\RelationManagers;
use App\Models\Dish;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DishResource extends Resource
{
    protected static ?string $model = Dish::class;
    protected static ?string $navigationGroup = 'Quản lý Món Ăn';
    public static function getPluralModelLabel(): string
    {
        return 'Danh sách món ăn';
    }
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('Thông tin món ăn')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Chi tiết')
                            ->schema([
                                Forms\Components\Select::make('restaurant_id')
                                    ->relationship('restaurant', 'name')
                                    ->label('Nhà hàng')
                                    ->required()
                                    ->columnSpanFull(),
                                Forms\Components\Select::make('food_category_id')
                                    ->relationship('food_category', 'name')
                                    ->label('Danh mục món ăn')
                                    ->required()
                                    ->columnSpanFull(),
                                Forms\Components\TextInput::make('name')
                                    ->label('Tên món ăn')
                                    ->required()
                                    ->maxLength(255)
                                    ->columnSpanFull(),
                                Forms\Components\TextInput::make('slug')
                                    ->label('Slug')
                                    ->required()
                                    ->maxLength(255)
                                    ->columnSpanFull(),
                                Forms\Components\TextInput::make('sold_quantity')
                                    ->label('Số lượng đã bán')
                                    ->required()
                                    ->numeric()
                                    ->columnSpanFull(),
                                Forms\Components\FileUpload::make('image')
                                    ->label('Tải lên hình ảnh')
                                    ->image()
                                    ->required()
                                    ->columnSpanFull(),
                                Forms\Components\Textarea::make('description')
                                    ->label('Mô tả')
                                    ->columnSpanFull(),
                                Forms\Components\TextInput::make('price')
                                    ->label('Giá')
                                    ->required()
                                    ->numeric()
                                    ->prefix('$')
                                    ->columnSpanFull(),
                            ]),

                        Forms\Components\Tabs\Tab::make('Công thức')
                            ->schema([
                                Forms\Components\Repeater::make('recipes')
                                    ->relationship('recipes') // Mối quan hệ với model Recipe
                                    ->schema([
                                        Forms\Components\Select::make('ingredient_id')
                                            ->relationship('ingredient', 'name')
                                            ->label('Nguyên liệu')
                                            ->required()
                                            ->columnSpanFull(),
                                        Forms\Components\TextInput::make('quantity')
                                            ->label('Số lượng')
                                            ->required()
                                            ->numeric()
                                            ->columnSpanFull(),
                                    ])
                                    ->createItemButtonLabel('Thêm nguyên liệu')
                                    ->columnSpanFull(),
                            ]),
                    ])
                    ->columnSpanFull(), // Đặt chiều rộng cho toàn bộ tab
            ]);
    }
    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image'),
                Tables\Columns\TextColumn::make('restaurant.name')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('price')
                    ->money()
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
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
            'index' => Pages\ListDishes::route('/'),
            'create' => Pages\CreateDish::route('/create'),
            'edit' => Pages\EditDish::route('/{record}/edit'),
        ];
    }
}

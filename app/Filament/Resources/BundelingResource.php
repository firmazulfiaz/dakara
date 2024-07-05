<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BundelingResource\Pages;
use App\Filament\Resources\BundelingResource\RelationManagers;
use App\Models\Bundeling;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class BundelingResource extends Resource
{
    protected static ?string $model = Bundeling::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([

                    Forms\Components\TextInput::make('nama_bundeling')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('harga')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\Textarea::make('deskripsi')
                        ->required(),
                ])
                ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_bundeling'),
                Tables\Columns\TextColumn::make('harga'),
                Tables\Columns\TextColumn::make('deskripsi'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListBundelings::route('/'),
            'create' => Pages\CreateBundeling::route('/create'),
            'edit' => Pages\EditBundeling::route('/{record}/edit'),
        ];
    }    
}

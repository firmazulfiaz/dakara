<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FotograferResource\Pages;
use App\Filament\Resources\FotograferResource\RelationManagers;
use App\Models\Fotografer;
use Filament\Forms;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class FotograferResource extends Resource
{
    protected static ?string $model = Fotografer::class;

    protected static ?string $navigationIcon = 'heroicon-o-identification';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nama_fotografer')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Select::make('spesialis_fotografer')->options([
                        'Fotografer' => 'Fotografer',
                        'Videografer' => 'Videografer'
                ]),
                Forms\Components\TextInput::make('notelp_fotografer')
                    ->tel()
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_fotografer'),
                Tables\Columns\TextColumn::make('spesialis_fotografer'),
                Tables\Columns\TextColumn::make('notelp_fotografer'),
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
            'index' => Pages\ListFotografers::route('/'),
            'create' => Pages\CreateFotografer::route('/create'),
            'edit' => Pages\EditFotografer::route('/{record}/edit'),
        ];
    }    
}

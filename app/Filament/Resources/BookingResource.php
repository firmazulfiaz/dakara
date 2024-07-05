<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BookingResource\Pages;
use App\Filament\Resources\BookingResource\RelationManagers;
use App\Models\Booking;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class BookingResource extends Resource
{
    protected static ?string $model = Booking::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([

                    Forms\Components\TextInput::make('nama_customers')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('email')
                        ->email()
                        ->required()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('alamat')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('no_telp')
                        ->tel()
                        ->required()
                        ->maxLength(255),
                    Forms\Components\DatePicker::make('tanggal_appointment')
                        ->required(),
                    Forms\Components\TextInput::make('waktu_appointment')
                        ->required(),
                    Forms\Components\Select::make('bundeling')->options([
                        'Event'=> 'Event',
                        'Wedding'=> 'Wedding',
                        'Graduation'=> 'Graduation'
                    ]),
                    Forms\Components\TextInput::make('tempat_shoot')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('total_pembayaran')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\Select::make('jenis_pembayaran')->options([
                            'Cash'=> 'Cash',
                            'Transfer'=> 'Transfer',
                    ]),
                    Forms\Components\Select::make('status_pembayaran')->options([
                        'Lunas'=> 'Lunas',
                        'DP'=> 'DP',
                    ])
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_customers'),
                Tables\Columns\TextColumn::make('email'),
                Tables\Columns\TextColumn::make('alamat'),
                Tables\Columns\TextColumn::make('no_telp'),
                Tables\Columns\TextColumn::make('tanggal_appointment')
                    ->date(),
                Tables\Columns\TextColumn::make('waktu_appointment'),
                Tables\Columns\TextColumn::make('tempat_shoot'),
                Tables\Columns\TextColumn::make('total_pembayaran'),
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
            'index' => Pages\ListBookings::route('/'),
            'create' => Pages\CreateBooking::route('/create'),
            'edit' => Pages\EditBooking::route('/{record}/edit'),
        ];
    }    
}

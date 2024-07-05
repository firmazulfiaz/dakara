<?php

namespace App\Filament\Resources\FotograferResource\Pages;

use App\Filament\Resources\FotograferResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListFotografers extends ListRecords
{
    protected static string $resource = FotograferResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

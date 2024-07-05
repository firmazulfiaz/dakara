<?php

namespace App\Filament\Resources\BundelingResource\Pages;

use App\Filament\Resources\BundelingResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBundelings extends ListRecords
{
    protected static string $resource = BundelingResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

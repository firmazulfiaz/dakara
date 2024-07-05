<?php

namespace App\Filament\Resources\BundelingResource\Pages;

use App\Filament\Resources\BundelingResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditBundeling extends EditRecord
{
    protected static string $resource = BundelingResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

<?php

namespace App\Filament\Resources\FotograferResource\Pages;

use App\Filament\Resources\FotograferResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditFotografer extends EditRecord
{
    protected static string $resource = FotograferResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

<?php
// From "Using Livewire in a multitenant Laravel application": https://sharing-experience.com/en/knowledge-base/system-design/using-livewire-in-a-multitenant-laravel-application

namespace App\Providers;

use Illuminate\Support\Facades\Route as RouteFacade;
use Livewire\Controllers\FilePreviewHandler;
use Livewire\Controllers\FileUploadHandler;
use Livewire\Controllers\HttpConnectionHandler;
use Livewire\Controllers\LivewireJavaScriptAssets;
use Livewire\LivewireServiceProvider;

/**
 * This custom service provider overwrites the default LivewireServiceProvider.
 * It is required so that the routes are registered inside a tenant's namespace.
 *
 * <ul>
 * <li>Add <em>livewire/livewire</em> to the <em>dont-discover</em> section inside your <em>composer.json</em></li>
 * <li>Call CustomLivewireServiceProvider::registerLivewireRoutes() in your <em>routes/web.php</em></li>
 * </ul>
 */
class CustomLivewireServiceProvider extends LivewireServiceProvider
{
    /**
     * Register the default Livewire routes.
     *
     * @return void
     */
    public static function registerLivewireRoutes()
    {
        RouteFacade::post('/livewire/message/{name}', HttpConnectionHandler::class)
            ->name('livewire.message')
            ->middleware(config('livewire.middleware_group', ''));

        RouteFacade::post('/livewire/upload-file', [FileUploadHandler::class, 'handle'])
            ->name('livewire.upload-file')
            ->middleware(config('livewire.middleware_group', ''));

        RouteFacade::get('/livewire/preview-file/{filename}', [FilePreviewHandler::class, 'handle'])
            ->name('livewire.preview-file')
            ->middleware(config('livewire.middleware_group', ''));
    }

    protected function registerRoutes()
    {
        // we are fine with the JavaScript files being registered in the default namespace
        RouteFacade::get('/livewire/livewire.js', [LivewireJavaScriptAssets::class, 'source']);
        RouteFacade::get('/livewire/livewire.js.map', [LivewireJavaScriptAssets::class, 'maps']);
    }
}

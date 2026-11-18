// From "Using Livewire in a multitenant Laravel application": https://sharing-experience.com/en/knowledge-base/system-design/using-livewire-in-a-multitenant-laravel-application
Route::domain('{subdomain}.' . config('app.domain'))
    ->name('subdomain.')
    ->middleware(['tenant.subdomain'])
    ->group(function () {
		// ...
		// register custom livewire routes
        \App\Providers\CustomLivewireServiceProvider::registerLivewireRoutes();
        
		// accept temporary uploads for media library
        // @see https://spatie.be/docs/laravel-medialibrary/v10/handling-uploads-with-media-library-pro/installation
        Route::mediaLibrary();
	});

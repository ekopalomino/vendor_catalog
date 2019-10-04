<?php

namespace Erp\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Erp\Models\Sale;
use Erp\Models\Purchase;
use Erp\Models\InternalTransfer;
use Erp\Models\Delivery;
use Erp\Models\Invoice;
use Auth;

class NotificationServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('apps.includes.sidebar',function($views) {
            if(Auth::check()) {
                $views->with('sales',Sale::where('status_id','8083f49e-f0aa-4094-894f-f64cd2e9e4e9')->count())
                      ->with('purchases',Purchase::where('status','8083f49e-f0aa-4094-894f-f64cd2e9e4e9')->count())
                      ->with('transfers',InternalTransfer::where('status_id','ffa20f52-a023-4333-b945-a46d04de961c')->count())
                      ->with('deliveries',Sale::where('status_id','458410e7-384d-47bc-bdbe-02115adc4449')->count())
                      ->with('invoices',Invoice::where('status_id','3da32f6e-494f-4b61-b010-7ccc0e006fb3')->count());
            }
        });
    }
}

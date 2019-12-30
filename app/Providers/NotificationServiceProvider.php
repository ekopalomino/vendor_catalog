<?php

namespace iteos\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use iteos\Models\Sale;
use iteos\Models\Purchase;
use iteos\Models\InternalTransfer;
use iteos\Models\Delivery;
use iteos\Models\Invoice;
use iteos\Models\Manufacture;
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
                      ->with('invoices',Sale::where('status_id','e9395add-e815-4374-8ed3-c0d5f4481ab8')->count())
                      ->with('receipts',Purchase::where('status','458410e7-384d-47bc-bdbe-02115adc4449')->count())
                      ->with('manrequest',Manufacture::where('status_id','5bc79891-e396-4792-a0f3-617ece2a00ce')->count())
                      ->with('manorders',Manufacture::where('status_id','45e139a2-a423-46ef-8901-d07b25b461a3')->count());
            }
        });
    }
}

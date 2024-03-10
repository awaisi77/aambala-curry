<?php

namespace App\Http\Controllers;
use App\Order;
use App\User;
use Carbon\Carbon;
use Spatie\Permission\Models\Role;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        if(auth()->user()->hasRole('admin')){
            //first analytics
            $last30days = Carbon::now()->subDays(30);
            $last30daysOrders = Order::all()->where('created_at', '>', $last30days)->count();
            $last30daysOrdersValue = Order::all()->where('created_at', '>', $last30days)->sum('order_price');
            $uniqueUsersOrders = Order::all()->unique('address_id')->count();
            $allClients = User::all()->count();

            //Last 7 months sales values
            $sevenMonthsDate = Carbon::now()->subMonths(6)->startOfMonth();
            $salesValue = DB::table('orders')
                        ->select(DB::raw('SUM(order_price + delivery_price) AS sumValue'))
                        ->where('created_at', '>', $sevenMonthsDate)
                        ->groupBy(DB::raw("YEAR(created_at), MONTH(created_at)"))
                        ->orderBy(DB::raw("YEAR(created_at), MONTH(created_at)"), 'asc')
                        ->pluck('sumValue');

            $monthLabels = DB::table('orders')
                        ->select(DB::raw('MONTH(created_at) as month'))
                        ->where('created_at', '>', $sevenMonthsDate)
                        ->groupBy(DB::raw("YEAR(created_at), MONTH(created_at)"))
                        ->orderBy(DB::raw("YEAR(created_at), MONTH(created_at)"), 'asc')
                        ->pluck('month');

            $totalOrders = DB::table('orders')
                        ->select(DB::raw('count(id) as totalPerMonth'))
                        ->where('created_at', '>', $sevenMonthsDate)
                        ->groupBy(DB::raw("YEAR(created_at), MONTH(created_at)"))
                        ->orderBy(DB::raw("YEAR(created_at), MONTH(created_at)"), 'asc')
                        ->pluck('totalPerMonth');

                        //dd(Carbon::now()->format('M'));

            return view('dashboard', [
                'last30daysOrders' => $last30daysOrders,
                'last30daysOrdersValue'=> $last30daysOrdersValue,
                'uniqueUsersOrders' => $uniqueUsersOrders,
                'allClients' => $allClients,
                'salesValue' => $salesValue,
                'monthLabels' => $monthLabels,
                'totalOrders' => $totalOrders
            ]);
        }else if(auth()->user()->hasRole('owner')){
            //first analytics
            $restorant_id = auth()->user()->restorant->id;
            $last30days = Carbon::now()->subDays(30);
            $last30daysOrders = Order::all()->where('created_at', '>', $last30days, 'AND', 'restorant_id', '=' ,$restorant_id)->count();
            $last30daysOrdersValue = Order::all()->where('created_at', '>', $last30days, 'AND', 'restorant_id', '=', $restorant_id)->sum('order_price');
            $uniqueUsersOrders = Order::all()->unique('address_id')->where('restorant_id', '=', $restorant_id)->count();
            //update this query when will be added user id column in the orders
            $allClients = User::all()->count();

            //Last 7 months sales values
            $sevenMonthsDate = Carbon::now()->subMonths(6)->startOfMonth();
            $salesValue = DB::table('orders')
                        ->select(DB::raw('SUM(order_price + delivery_price) AS sumValue'))
                        ->where('created_at', '>', $sevenMonthsDate, 'AND', 'restorant_id', '=', $restorant_id)
                        ->groupBy(DB::raw("YEAR(created_at), MONTH(created_at)"))
                        ->orderBy(DB::raw("YEAR(created_at), MONTH(created_at)"), 'asc')
                        ->pluck('sumValue');

            $monthLabels = DB::table('orders')
                        ->select(DB::raw('MONTH(created_at) as month'))
                        ->where('created_at', '>', $sevenMonthsDate, 'AND', 'restorant_id', '=', $restorant_id)
                        ->groupBy(DB::raw("YEAR(created_at), MONTH(created_at)"))
                        ->orderBy(DB::raw("YEAR(created_at), MONTH(created_at)"), 'asc')
                        ->pluck('month');

            $totalOrders = DB::table('orders')
                        ->select(DB::raw('count(id) as totalPerMonth'))
                        ->where('created_at', '>', $sevenMonthsDate, 'AND', 'restorant_id', '=', $restorant_id)
                        ->groupBy(DB::raw("YEAR(created_at), MONTH(created_at)"))
                        ->orderBy(DB::raw("YEAR(created_at), MONTH(created_at)"), 'asc')
                        ->pluck('totalPerMonth');

            return view('dashboard', [
                'last30daysOrders' => $last30daysOrders,
                'last30daysOrdersValue'=> $last30daysOrdersValue,
                'uniqueUsersOrders' => $uniqueUsersOrders,
                'allClients' => $allClients,
                'salesValue' => $salesValue,
                'monthLabels' => $monthLabels,
                'totalOrders' => $totalOrders
            ]);
        }else if(auth()->user()->hasRole('driver')){
            return redirect()->route('orders.index');
        }else if(auth()->user()->hasRole('client')){
            return redirect()->route('front');
        }
    }
}

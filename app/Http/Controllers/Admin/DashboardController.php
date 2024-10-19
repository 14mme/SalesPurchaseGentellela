<?php

namespace App\Http\Controllers\Admin;

use App\Models\Auth\User\User;
use Arcanedev\LogViewer\Entities\Log;
use Arcanedev\LogViewer\Entities\LogEntry;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Routing\Route;
use App\Models\Customers;
use COM;

class DashboardController extends Controller
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
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $counts = [
            'users' => \DB::table('users')->count(),
            'users_unconfirmed' => \DB::table('users')->where('confirmed', false)->count(),
            'users_inactive' => \DB::table('users')->where('active', false)->count(),
            'protected_pages' => 0,
        ];

        foreach (\Route::getRoutes() as $route) {
            foreach ($route->middleware() as $middleware) {
                if (preg_match("/protection/", $middleware, $matches)) $counts['protected_pages']++;
            }
        }

        return view('admin.dashboard', ['counts' => $counts]);
    }


    public function getLogChartData(Request $request)
    {
        \Validator::make($request->all(), [
            'start' => 'required|date|before_or_equal:now',
            'end' => 'required|date|after_or_equal:start',
        ])->validate();

        $start = new Carbon($request->get('start'));
        $end = new Carbon($request->get('end'));

        $dates = collect(\LogViewer::dates())->filter(function ($value, $key) use ($start, $end) {
            $value = new Carbon($value);
            return $value->timestamp >= $start->timestamp && $value->timestamp <= $end->timestamp;
        });


        $levels = \LogViewer::levels();

        $data = [];

        while ($start->diffInDays($end, false) >= 0) {

            foreach ($levels as $level) {
                $data[$level][$start->format('Y-m-d')] = 0;
            }

            if ($dates->contains($start->format('Y-m-d'))) {
                /** @var  $log Log */
                $logs = \LogViewer::get($start->format('Y-m-d'));

                /** @var  $log LogEntry */
                foreach ($logs->entries() as $log) {
                    $data[$log->level][$log->datetime->format($start->format('Y-m-d'))] += 1;
                }
            }

            $start->addDay();
        }

        return response($data);
    }

    public function getRegistrationChartData()
    {

        $data = [
            'registration_form' => User::whereDoesntHave('providers')->count(),
            'google' => User::whereHas('providers', function ($query) {
                $query->where('provider', 'google');
            })->count(),
            'facebook' => User::whereHas('providers', function ($query) {
                $query->where('provider', 'facebook');
            })->count(),
            'twitter' => User::whereHas('providers', function ($query) {
                $query->where('provider', 'twitter');
            })->count(),
        ];

        return response($data);
    }

    public function getReportingPage()
    {
        $MasterData = Customers::all();
        return view('admin.reporting',["MasterData" => $MasterData]);
    }

    public function getReportingcustomerGrouping(){
        $data = [
            'less_50000' => 50,
            '_50000_99999' => 50,
            '_100000_999999' => 50,
            'more_than_equal_1000000' => 50
        ];
        return response($data);
    }

    public function getDataAllMasterData(){
        $MasterData = Customers::all();
        for ($i=0; $i<count($MasterData); $i++){
            if ($MasterData[$i]["price"] <= 50000){
                $MasterData[$i]['price_range'] = 'less_50000';
            }else if ($MasterData[$i]["price"] > 50000 && $MasterData[$i]["price"] <= 99999){
                $MasterData[$i]['price_range'] = '_50000_99999';
            }else if ($MasterData[$i]["price"] > 100000 && $MasterData[$i]["price"] <= 999999){
                $MasterData[$i]['price_range'] = '_50000_99999';
            }else{
                $MasterData[$i]['price_range'] = 'more_than_equal_1000000';
            }
            $MasterData[$i]['created_range'] = substr($MasterData[$i]['created_at'],0,7);
        }
        return response($MasterData);
    }
}

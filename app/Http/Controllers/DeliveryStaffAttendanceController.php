<?php

namespace App\Http\Controllers;

use App\DeliveryStaffAttendance;
use App\User;
use Illuminate\Http\Request;
use Auth;
class DeliveryStaffAttendanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


        $todayDate = now();

        if(auth()->user()->hasRole('driver')){
            $attendances = DeliveryStaffAttendance::where("driver_id",Auth::user()->id)->get();
            return view('attendance.index',compact('attendances','todayDate'));
        }
        if(auth()->user()->hasRole('admin')){
            $attendances = DeliveryStaffAttendance::all();
            $drivers = User::role('driver')->where(['active'=>1])->get();
            //BY DRIVER
            if(isset($_GET['driver_id'])){
                $did = $_GET['driver_id'];
                $attendances =DeliveryStaffAttendance::where(['driver_id'=>$did])->get();
//
            }
//            $attendances = $attendances->paginate(10);
            return view('attendance.admin-attendance',compact('attendances','todayDate','drivers'));
        }
        return redirect()->route('front');

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
     //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\DeliveryStaffAttendance  $deliveryStaffAttendance
     * @return \Illuminate\Http\Response
     */
    public function show(DeliveryStaffAttendance $deliveryStaffAttendance)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\DeliveryStaffAttendance  $deliveryStaffAttendance
     * @return \Illuminate\Http\Response
     */
    public function edit(DeliveryStaffAttendance $deliveryStaffAttendance)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DeliveryStaffAttendance  $deliveryStaffAttendance
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DeliveryStaffAttendance $deliveryStaffAttendance)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\DeliveryStaffAttendance  $deliveryStaffAttendance
     * @return \Illuminate\Http\Response
     */
    public function destroy(DeliveryStaffAttendance $deliveryStaffAttendance)
    {
        //
    }

    public function checkIn($id){


       $time =now();
        $driverId = $id ;

        $checkIn = new DeliveryStaffAttendance;

        $checkIn->driver_id = $driverId;
        $checkIn->check_in = $time;
        $checkIn->status = 2;

        $checkIn ->save();
        return redirect()->back();
    }
    public function checkOut($id){

        $time =now();
        $checkOut = DeliveryStaffAttendance::find($id);

        if(auth()->user()->hasRole('driver')){
            $checkOut->check_out = $time;
            $checkOut->status = 1;
        }
        if(auth()->user()->hasRole('admin')){
            $checkOut->check_out = null;
            $checkOut->check_in = null;
            $checkOut->created_at = $time;
            $checkOut->status = 0;
        }

        $checkOut ->save();
        return redirect()->back();
    }
}

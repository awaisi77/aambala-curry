<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeliveryStaffAttendance extends Model
{
    public function user()
    {
        return $this->hasOne('App\User')->paginate();
    }
}

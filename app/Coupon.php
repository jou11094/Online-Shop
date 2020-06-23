<?php

namespace App;

use App\Coupon;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    public function findByCode($code)
    {
    	return Coupon::where('code', $code)->first();
    }

    public function discount($total)
    {
    	if($this->type == 'value')
    	{
    		return $this->value;
    	}
    	elseif ($this->type == 'percent_off') 
    	{
    		return $this->percent_off / 100 * $total;
    	}
    }
}

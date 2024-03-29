<?php

namespace App\Http\Controllers;
use App\Restorant;
use App\Items;
use Illuminate\Http\Request;

class FrontEndController extends Controller
{
    public function getSubDomain(){
        $subdomain = substr_count($_SERVER['HTTP_HOST'], '.') > 1 ? substr($_SERVER['HTTP_HOST'], 0, strpos($_SERVER['HTTP_HOST'], '.')) : '';
        if($subdomain==""|in_array($subdomain,config('app.ignore_subdomains'))){
            return false;
        }
        return $subdomain;
    }

    public function index(){

        //Check if it has DB access - otherwise go to install
        try {
            \DB::connection()->getPdo();
            //return redirect()->route('LaravelInstaller::welcome');
        } catch (\Exception $e) {
            return redirect()->route('LaravelInstaller::welcome');
        }

        //Check if it is sudomain
        

	$subDomain=$this->getSubDomain();
        if($subDomain){
            $restorant = Restorant::where('subdomain',$subDomain)->get();
            if(count($restorant)!=1){
                return view('restorants.alertdomain',['subdomain' =>$subDomain]);
            }
            return view('restorants.show',['restorant' =>$restorant[0]]);

        }


        if(\Request::has('q')&&strlen(\Request::input('q'))>1){
            //1. Find all items
            $items = Items::where(['available' => 1])
                    ->where('name', 'like','%'.strip_tags(\Request::input('q'))."%")
                    ->orWhere('description', 'like','%'.strip_tags(\Request::input('q'))."%")
                    ->with('category.restorant')
                    ->get();

            $restorants = Restorant::where(['active' => 1])
                        ->where('name', 'like','%'.strip_tags(\Request::input('q'))."%")
                        ->orWhere('description', 'like','%'.strip_tags(\Request::input('q'))."%");

            $restorants=array();
            foreach($items as $item) {
                if(isset($restorantUnordered[$item->category->restorant->id])){
                    //Enlarge
                    $restorants[$item->category->restorant->id]->items_count++;
                }else{
                    //Add
                    $restorants[$item->category->restorant->id]=$item->category->restorant;
                    $restorants[$item->category->restorant->id]->items_count=1;
                }

            }

            usort($restorants, function($a, $b) {return strcmp($a->items_count, $b->items_count);});
        }else{
            $restorants = Restorant::where('active', 1)
                //->orderBy('name', 'desc')
                ->get();
        }

        return view('welcome',['restorants' =>$restorants,'title'=>\Request::has('q')&&strlen(\Request::input('q'))>1?__('Restaurant where you can find '.\Request::input('q')):__('Popular Restaurants')]);
    }

    public function restorant($alias){
        $subDomain=$this->getSubDomain();
        if($subDomain&&$alias!==$subDomain){
            return redirect()->route('restorant',$subDomain);
        }
        $restorant = Restorant::where('subdomain',$alias)->get();


        //Working hours
        $ourDateOfWeek=[6,0,1,2,3,4,5][date('w')];

        $format="G:i";
        if(env('TIME_FORMAT',"24hours")=="AM/PM"){
            $format="g:i A";
        }

        /*$openingTime=date($format, strtotime($restorant[0]->hours[$ourDateOfWeek."_from"]));
        $closingTime=date($format, strtotime($restorant[0]->hours[$ourDateOfWeek."_to"]));

        return view('restorants.show',[
            'restorant' => $restorant[0],
            'openingTime' => $restorant[0]->hours&&$restorant[0]->hours[$ourDateOfWeek."_from"]?$openingTime:null,
            'closingTime' => $restorant[0]->hours&&$restorant[0]->hours[$ourDateOfWeek."_to"]?$closingTime:null,
        ]);*/

        $openingTime = $restorant[0]->hours&&$restorant[0]->hours[$ourDateOfWeek."_from"] ? date($format, strtotime($restorant[0]->hours[$ourDateOfWeek."_from"])) : null;
        $closingTime = $restorant[0]->hours&&$restorant[0]->hours[$ourDateOfWeek."_to"] ? date($format, strtotime($restorant[0]->hours[$ourDateOfWeek."_to"])) : null;

        return view('restorants.show',[
            'restorant' => $restorant[0],
            'openingTime' => $openingTime,
            'closingTime' => $closingTime,
        ]);
    }
}

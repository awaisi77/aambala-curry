<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use App\Pages;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Auth;

class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Pages $pages)
    {
        if(auth()->user() && auth()->user()->hasRole('admin')){
            return view('pages.index', ['pages' => $pages->paginate(10)]);
        }else if(auth()->guest()){
            return redirect()->route('front');
        }else return redirect()->route('orders.index')->withStatus(__('No Access'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->user() && auth()->user()->hasRole('admin')){
            return view('pages.create');
        }else if(auth()->guest()){
            return redirect()->route('front');
        }else return redirect()->route('orders.index')->withStatus(__('No Access'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $page = new Pages;
        $page->title = strip_tags($request->title);
        $page->content = $request->input('ckeditor');

        $page->save();

        return redirect()->route('pages.index')->withStatus(__('Page successfully created!'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Pages $page)
    {
        return view('pages.show',['page' => $page]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Pages $page)
    {
        if(auth()->user() && auth()->user()->hasRole('admin')){
            return view('pages.edit',['page' => $page]);
        }else if(auth()->guest()){
            return redirect()->route('front');
        }else return redirect()->route('orders.index')->withStatus(__('No Access'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pages $page)
    {
        $page->title = strip_tags($request->title);
        $page->content = $request->input('ckeditor');

        $page->update();
        return redirect()->route('pages.index')->withStatus(__('Page successfully updated!'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pages $page)
    {
        $page->delete();

        return redirect()->route('pages.index')->withStatus(__('Page successfully deleted!'));
    }

    public function upload(Request $request)
    {
        if($request->hasFile('upload')) {
            //get filename with extension
            $filenamewithextension = $request->file('upload')->getClientOriginalName();

            //get filename without extension
            $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);

            //get file extension
            $extension = $request->file('upload')->getClientOriginalExtension();

            //filename to store
            $filenametostore = $filename.'_'.time().'.'.$extension;

            //Upload File
            $request->file('upload')->storeAs('public/uploads', $filenametostore);

            $CKEditorFuncNum = $request->input('CKEditorFuncNum');
            $url = asset('storage/uploads/'.$filenametostore);
            $msg = 'Image successfully uploaded';
            $re = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url', '$msg')</script>";

            // Render HTML output
            @header('Content-type: text/html; charset=utf-8');
            echo $re;
        }
    }

    public function change(Pages $page, Request $request)
    {
        $page->showAsLink = $request->value;
        $page->update();

        return response()->json([
            'data' => [
                'showAsLink' => $page->showAsLink
            ],
            'status' => true,
            'errMsg' => ''
        ]);
    }

    public function getPages(){
        return response()->json([
            'data' => Pages::where(['showAsLink'=>1])->get(),
        ]);
    }

    public function guestLogin(){
        return view('auth.guest-form');
    }
    public function guestRegister(Request $request){
        $this->validate($request,[
           'name' => 'required',
           'email' => 'required|unique:users',
           'phone' => 'required'
        ],
            [
                'email.unique'      => 'Sorry, This Email Address Is Already Used By Another User. Please Try With Different One, Or Login with it if its Your.',
            ]
        );
        $password = Str::random(8);

        $user = User::create([
            'name' => $request['name'],
            'email' => $request['email'],
            'phone' => $request['phone'],
            'password' => Hash::make($password),
            'api_token' => Str::random(80)
        ]);

//        Mail::send();

        //Make login
        Auth::login($user);

        $user->assignRole('client');

        return redirect(route('cart.checkout'));
    }
}

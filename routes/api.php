<?php

use Illuminate\Http\Request;
use App\Fivestar;
use App\Fourstar;
use App\Threestar;
use App\Twostar;
use App\Onestar;
use App\Survey;



Route::group(['middleware' => 'api'], function (){


    //new store
    Route::post('survey/store/fivestar', function (Request $request){
        return Survey::create([

            'fivestar' => 5

        ]);
    });

    Route::post('survey/store/fourstar', function (Request $request){
        return Survey::create([

            'fourstar' => 4

        ]);
    });

    Route::post('survey/store/threestar', function (Request $request){
        return Survey::create([

            'threestar' => 3
        ]);
    });

    Route::post('survey/store/twostar', function (Request $request){
        return Survey::create([

            'twostar' => 2

        ]);
    });

    Route::post('survey/store/onestar', function (Request $request){
        return Survey::create([
            'onestar' => 1,

        ]);
    });



    //for Admin
    Route::get('admin/fivestar', function (){
        return Survey::where('fivestar',5)->count();
    });

    Route::get('admin/fourstar', function (){
        return Survey::where('fourstar',4)->count();
    });

    Route::get('admin/threestar', function (){
        return Survey::where('threestar',3)->count();
    });

    Route::get('admin/twostar', function (){
        return Survey::where('twostar',2)->count();
    });

    Route::get('admin/onestar', function (){
        return Survey::where('onestar',1)->count();
    });
    Route::get('admin/total', function (){
        return Survey::all()->count();
    });

});


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

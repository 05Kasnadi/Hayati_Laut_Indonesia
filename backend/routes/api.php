<?php

use App\Http\Controllers\Api\HayatiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

route::get('hayati',[HayatiController::class,'index']);

route::get('hayati/{id}',[HayatiController::class,'show']);

route::post('hayati',[HayatiController::class,'store']);

route::put('hayati/{id}',[HayatiController::class,'update']);
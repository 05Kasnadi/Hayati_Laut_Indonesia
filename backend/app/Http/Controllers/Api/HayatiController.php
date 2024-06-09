<?php

namespace App\Http\Controllers\Api;
use App\models\Hayati;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HayatiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Hayati::orderBy('nama','asc')->get();
        return response()->json([

            'status'=>true,
            'message'=>'data ditemukan',
            'data'=>$data
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $dataHayati = new Hayati;

        $rules =[
            'nama'=>'required',
            'jenis'=>'required',
        ];

        $dataHayati->nama = $request->nama;
        $dataHayati->jenis = $request->jenis;
        $dataHayati->lokalitas = $request->lokalitas;
        $dataHayati->deskripsi = $request->deskripsi;

        $post = $dataHayati->save();

        return response()->json([
            'status'=> true,
            'message'=> 'Berhasil memasukkan data'
        ]);

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $data = Hayati::find($id);
        if($data){
            return response()->json([
                'status'=>true,
                'message'=>'Data ditemukan',
                'data'=>$data
            ],200);
        }else{
            return response()->json([
                'status' => false,
                'message' =>'data tidak ditemukan'
            ]);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;

class SiswaController extends Controller
{
    public function index(Request $request){
        if($request->has('cari')){
            $data_siswa = Siswa::where('nama_depan', 'LIKE', '%'.$request->cari.'%')->get();
        }else{
            $data_siswa = Siswa::all();
        }
        return view('siswa.index', ['data_siswa' => $data_siswa]);
    }

    public function create(Request $request){
        Siswa::create($request->all());
        return redirect('/siswa')->with('sukses', "Data berhasil di tambahkan!");
    }

    public function edit($id){
        $siswa = Siswa::findOrFail($id);
        return view('siswa.edit', ['siswa' => $siswa]);
    }

    public function update(Siswa $siswa, Request $request){
        // dd($request->all());
        $siswa = Siswa::find($siswa->id);
        $siswa->nama_depan      = request('nama_depan');
        $siswa->nama_belakang   = request('nama_belakang');
        $siswa->jenis_kelamin   = request('jenis_kelamin');
        $siswa->agama           = request('agama');
        $siswa->alamat          = request('alamat');
        $siswa->save();
        if($request->hasFile('avatar')){
            $request->file('avatar')->move('images/', $request->file('avatar')->getClientOriginalName());
            $siswa->avatar = $request->file('avatar')->getClientOriginalName();
            $siswa->save();
        }

        return redirect('/siswa')->with('sukses', 'Data berhasil di Update!');
    }

    public function delete($siswa){
        $siswa = Siswa::find($siswa);
        $siswa->delete();
        return redirect('/siswa')->with('sukses', "Data berhasil di hapus!");
    }

    public function profile($id){
        $siswa = Siswa::findOrFail($id);
        return view('siswa.profile', ['siswa' => $siswa]);
    }
}

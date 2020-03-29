<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    protected $table = 'siswa';
    protected $fillable = ['nama_depan', 'nama_belakang', 'alamat', 'jenis_kelamin', 'agama', 'avatar'];

    public function getAvatar(){
        if(!$this->avatar){
            return asset('images/default.jpg');
        }

        return asset('images/'.$this->avatar);
    }
}

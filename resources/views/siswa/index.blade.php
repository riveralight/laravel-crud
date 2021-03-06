@extends('layouts.master')

@section('content')
<div class="main">
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Data Mahasiswa</h3>
                                <div class="right">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-toggle="modal" data-target="#staticBackdrop"><i class="lnr lnr-plus-circle"></i> Tambah Data</button>
                                    <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
                                        Launch static backdrop modal
                                    </button> -->
                                </div>
                            </div>
                            @if(session()->has('pesan'))
                                <div class="alert alert-success alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <i class="fa fa-check-circle"></i> {{session()->get('pesan')}}
                                </div>
                            @endif
                            <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nama Depan</th>
                                            <th>Nama Belakang</th>
                                            <th>Jenis Kelamin</th>
                                            <th>Agama</th>
                                            <th>Alamat</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($data_siswa as $siswa)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td><a href="/siswa/{{ $siswa->id }}/profile">{{ $siswa->nama_depan }}</a></td>
                                            <td><a href="/siswa/{{ $siswa->id }}/profile">{{ $siswa->nama_belakang }}</a></td>
                                            <td>{{ $siswa->jenis_kelamin }}</td>
                                            <td>{{ $siswa->agama }}</td>
                                            <td>{{ $siswa->alamat }}</td>
                                            <td>
                                                <a href="/siswa/{{ $siswa->id }}/edit" class="btn btn-warning btn-sm">Edit</a>
                                                <a href="/siswa/{{ $siswa->id }}/hapus" class="btn btn-danger btn-sm" onclick="return confirm('Yakin data {{ $siswa->nama_depan . " ".$siswa->nama_belakang }} dihapus?')">Delete</a>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection



<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Tambah Data Siswa Baru</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/siswa/create" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="nama_depan">Nama Depan</label>
                        <input type="text" name="nama_depan" class="form-control @error('nama_depan') has-error @enderror" id="nama_depan" value="{{ old('nama_depan') }}">
                        @error('nama_depan')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="nama_belakang">Nama Belakang</label>
                        <input type="text" name="nama_belakang" class="form-control" id="nama_belakang" value="{{ old('nama_belakang') }}">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" value="{{ old('email') }}">
                    </div>
                    @error('email')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                    <div class="form-group">
                        <label for="jenis_kelamin">Jenis Kelamin</label>
                        <select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
                            <option value="L" {{ old('jenis_kelamin') == 'L' ? 'selected' : '' }}>Laki-Laki</option>
                            <option value="P" {{ old('jenis_kelamin') == 'P' ? 'selected' : '' }}>Perempuan</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="agama">Agama</label>
                        <input type="text" name="agama" class="form-control @error('agama') is-invalid @enderror" id="agama" value="{{ old('agama') }}">
                    </div>
                    @error('agama')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                    <div class="form-group">
                        <label for="alamat">Alamat</label>
                        <textarea name="alamat" id="alamat" rows="3" class="form-control">{{ old('alamat') }}</textarea>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
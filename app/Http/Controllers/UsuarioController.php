<?php

namespace App\Http\Controllers;

use App\Models\usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return usuario::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
            $usuario = new Usuario();
            $usuario-> nombre =$request -> nombres;
            $usuario-> apellido =$request -> apellido;
            $usuario-> correo =$request -> correo;
            $usuario-> fecha =$request -> fechaa;
            $usuario-> save();
        return "has Creado un Nuevo Usuario";
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return Usuario::where('id',$id)->get();
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(usuario $usuario)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $usuario = Usuario::find($id);
        
            $usuario-> nombre =$request -> nombres;
            $usuario-> apellido =$request -> apellido;
            $usuario-> correo =$request -> correo;
            $usuario-> fecha =$request -> fechaa;
            $usuario-> save();

            return $usuario;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $usuario = Usuario::all() -> find($id);
        $usuario -> delete();
        return "Has eleminado al Usuario";
    }
}

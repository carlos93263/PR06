/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var validaFormulario=function(){
    var devolver = true;
    ///////////////// NOMBRE /////////////////
    var valor = document.getElementById("nombre").value;
    if( valor === null || valor.length === 0 || /^\s+$/.test(valor) ) {
      document.getElementById("error_nombre").style.display = "block";
      document.getElementById("error_nombre").innerHTML = "Please, introduce your name.";
      devolver = false;
    }else{
      document.getElementById("error_nombre").style.display = "none";
    }
    ///////////////// APELLIDOS /////////////////
    var valor = document.getElementById("apellidos").value;
    if( valor === null || valor.length === 0 || /^\s+$/.test(valor) ) {
      document.getElementById("error_apellidos").style.display = "block";
      document.getElementById("error_apellidos").innerHTML = "Please, introduce your surnames.";
      devolver = false;
    }else{
      document.getElementById("error_apellidos").style.display = "none";
    }
    ///////////////// EMAIL /////////////////
    var email = document.getElementById("correo").value;
    if(email === null || email.length === 0){
      document.getElementById("error_correo_vacio").style.display = "block";
      document.getElementById("error_correo_vacio").innerHTML='Please, introduce your e-Mail.';
      devolver = false;
    }else if(!/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/.test(email)){
      document.getElementById("error_correo_vacio").style.display = "none";
       document.getElementById("error_correo_formato").style.display = "block";
      document.getElementById("error_correo_formato").innerHTML='e-Mail format is not correct.';
      devolver = false;
    }else{
      document.getElementById("error_correo_vacio").style.display = "none";
      document.getElementById("error_correo_formato").style.display = "none";
    }
    /////////////// CONTRASEÑA ///////////////
    var contrasena = document.getElementById("contrasena").value;
    if(contrasena === null || contrasena.length === 0){
       document.getElementById("error_contrasena_vacio").style.display = "block";
      document.getElementById("error_contrasena_vacio").innerHTML = 'Please, introduce your password.';
      devolver = false;
    }else{  
      document.getElementById("error_contrasena_vacio").style.display = "none";
    }
    ////////// CONFIRMAR CONTRASEÑA //////////
    var pass = document.getElementById("contrasena").value;
    var confirmar_contrasena = document.getElementById("confirmar_contrasena").value;
    if(confirmar_contrasena === null || confirmar_contrasena.length === 0) {
      document.getElementById("error_confirmar_contrasena_vacio").style.display = "block";
      document.getElementById("error_confirmar_contrasena_vacio").innerHTML = 'Please, introduce your password again.';
      devolver = false;
    } else if(pass!==confirmar_contrasena){
      document.getElementById("error_confirmar_contrasena_vacio").style.display = "none";
      document.getElementById("error_confirmar_contrasena_incorrecto").style.display = "block";
      document.getElementById("error_confirmar_contrasena_incorrecto").innerHTML = 'Password does not match.';
      devolver = false;
    }else{
      document.getElementById("error_confirmar_contrasena_vacio").style.display = "none";
      document.getElementById("error_confirmar_contrasena_incorrecto").style.display = "none";
    }
    return devolver;
};


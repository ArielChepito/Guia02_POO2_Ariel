<%-- 
    Document   : index
    Created on : 06-ago-2016, 17:23:04
    Author     : Ariel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>GUIA 2</title>
    <meta charset="utf-8">
<!-- Author: Aniuska Maita @aniusk18-->
    <!-- This file has been downloaded from Codepen.io. Enjoy! 
    http://codepen.io/aniusk18/pen/bedWwG-->
    <title>Formulario--codepen</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<!-- Google fonts -->
 <link href='https://fonts.googleapis.com/css?family=Lobster|Abel' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
    
    
    
        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>

  <body>

    <div class="container">
  <!--head form-->
  <section>
    <h1>GUIA 2 Ariel</h1>
  </section>
  <!--end head form-->
  <!--body form-->
  <section class="col-md-12">
    <form class="form-horizontal">
      <div class="form-group barra">
      <div class="col-md-6">
      		<label for="inputEmail3" class="control-label">Nombre</label>
          <input type="text" class="form-control" name="txtNombre" id="txtNombre">
      </div>
      <div class="col-md-6">
      		  <label for="inputEmail3" class="control-label">Apellido</label>
          <input type="text" class="form-control" name="txtApellido" id="txtApellido">
      </div>
      <div class="col-md-6">
      		<label for="inputEmail3" class="control-label">Foto</label>
          <input type="text" class="form-control" name="txtFoto" id="txtFoto">
      </div>
      <div class="col-md-6">
      		<label for="inputEmail3" class="control-label">Tipo:</label>
          <select name="cmbTipo" class="form-control" id="cmbTipo">
                  
                   </select>
      </div>
      <div class="col-md-6">
      		<label for="inputEmail3" class="control-label">Genero</label>
                   <select name="cmbGenero" class="form-control" id="cmbGenero">
                   <option value="F" >Femenino</option>
                   <option value="M" >Masculino</option>
                   </select>
      </div>
      
      <div class="col-md-6">
      <label for="inputPassword3" class="control-label">Fecha de nacimiento </label>       
			        <input type="date"class="form-control" name="txtFechNaci" id="txtFechNaci">
      </div>
      <div class="col-md-4">
      <label for="inputEmail3" class="control-label">DUI</label>
          <input type="text" class="form-control" name="txtDUI" id="txtDUI">
      </div>
      <div class="col-md-4">
       <label for="inputEmail3" class="control-label">NIT</label>
          <input type="text" class="form-control" name="txtNIT" id="txtNIT">
      </div>
      <div class="col-md-4">
      
          <label for="inputEmail3" class="control-label">Tipo de sangre</label>
          <select name="cmbTipoSangre" class="form-control" id="cmbTipoSangre">
                   <option value="A+" >A+</option>
                   <option value="A-" >A-</option>
                   <option value="B+" >B+</option>
                   <option value="B-" >B-</option>
                   <option value="AB+" >AB+</option>
                   <option value="AB-" >AB-</option>
                   <option value="O+" >O+</option>
                   <option value="O-" >O-</option>
                   <option value="AB+" >AB+</option>
                   </select>
      </div>     
             </div>     
              <div class="form-group barra">  
         
          

        <div class="col-md-3">
          <button type="submit" class="btn">Guardar</button>
        </div>
        <div class="col-md-3">
          <button type="submit" class="btn">Editar</button>
        </div>
        <div class="col-md-3">
          <button type="submit" class="btn">Eliminar</button>
        </div>
        <div class="col-md-3">
          <button type="submit" class="btn">Ver reporte</button>
        </div>
        <br><br><br>
        <div class="col-md-12">
         <table class="table table-condensed">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table></div>
      
     
    
    </form>
    </div>
  </section>
  <!--end body form-->
</div>
    
    
    
    
    
  </body>
</html>

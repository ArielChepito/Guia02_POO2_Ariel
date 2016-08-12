<%-- 
    Document   : index
    Created on : 06-ago-2016, 17:23:04
    Author     : Ariel
--%>

<%@page import="com.sv.udb.controlador.PersonaCtrl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

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
      <!-- jqeury -->
    <script   src="https://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>
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
        <section class="col-md-12"  id ="recargarForm">
            <form method="POST" name="formulario" action="PersonaServ" class="form-horizontal">
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

                        <input type="file" name="txtFoto" id="txtFoto" class="form-control"/>

              </div>
              <div class="col-md-6">
                        <label for="inputEmail3" class="control-label">Tipo:</label>
                  <select name="cmbTipo" class="form-control" id="cmbTipo">
                          <jsp:useBean id="beanUnidadCtrl" class="com.sv.udb.controlador.TipoPersonaCtrl" scope="page"/>
                                                <c:forEach items="${beanUnidadCtrl.consTodo()}" var="fila">
                                                    <c:choose>
                                                        <c:when test="${fila.codiTipoPers eq cmbTipo}">
                                                            <option name="codi_TipoPers" value="${fila.codiTipoPers}" selected="">${fila.nombTipoPers}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                    <option name="codi_TipoPers" value="${fila.codiTipoPers}">${fila.nombTipoPers}</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
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

               <div class="col-md-1">

              </div>  

              <div class="col-md-2">
                <input type="submit" class="btn" id="cursBoton"name="cursBoton" value="Guardar"/>
              </div>
              <div class="col-md-2">
                <input type="submit" class="btn" name="cursBoton" value="Modificar"/>
              </div>
              <div class="col-md-2">
                <input type="submit" class="btn" name="cursBoton" value="Eliminar"/>
              </div>
              <div class="col-md-2">
                <input type="submit" class="btn" name="cursBoton" value="Reporte"/>
              </div>
              <div class="col-md-2">
                <input type="submit" class="btn" name="cursBoton" value="Historial"/>
              </div>

              <br><br><br>
              <div class="col-md-12">
                       <% request.setAttribute( "displayBod", new PersonaCtrl().consTodo() ); %>
                       <div id = "tablita">
                          <display:table id="tablBod" name="displayBod" class="table table-condensed">
                             <display:column property="nombPers" title="Nombre" sortable="true"/>
                             <display:column property="apelPers" title="Apellido" sortable="true"/>                    
                             <display:column property="fechNaciPers" title="Fecha Nacimiento" sortable="true"/> 
                             <display:column title="*" sortable="true">
                                 <input type="radio" name="codiPersRadi" value="${tablBod.codiPers}"/>
                             </display:column>
                         </display:table> 
                         </div>
              </div>
            </div>
          </form>
        </section>
        <!--end body form-->
    </div>    
  </body>
</html>

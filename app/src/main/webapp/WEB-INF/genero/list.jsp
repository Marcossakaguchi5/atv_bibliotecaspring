<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Genero</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <div class="container">

            <h1>Genero</h1>
            <a href="/insertG" class="btn btn-primary"> novo genero</a>
            <table class="table">

<tr>
    <th>Id</th>
    <th>nome</th>
    <th>&nbsp</th>
</tr>
<c:forEach var="item" items="${generos}">
    
<tr>
    <td>${item.id}</td>
    <td>${item.nome}</td>
  
    <td>
        <a href="/updateG?id=${item.id}" class="btn btn-warning"> editar</a>
        <a href="/deleteG?id=${item.id}" class="btn btn-danger"> deletar</a>
    </td> 
</tr>



</c:forEach>
            </table>
         
        </div>
    </body>
</html>


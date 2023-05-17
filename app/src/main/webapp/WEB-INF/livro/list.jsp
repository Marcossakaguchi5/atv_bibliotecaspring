<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Livros</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
        <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"> -->
    </head>
    <body>
        <div class="container">

            <h1>Livros</h1>
            <a href="/insert" class="btn btn-primary"> novo livro</a>
            <table class="table">

<tr>
    <th>Id</th>
    <th>Titulo</th>
    <th>Isbn</th>
    <th>&nbsp</th>
    <th>&nbsp</th>
</tr>
<c:forEach var="item" items="${livros}">
    
<tr>
    <td>${item.id}</td>
    <td>${item.titulo}</td>
    <td>${item.isbn}</td>
    <td>
        <a href="/update?id=${item.id}" class="btn btn-warning"> editar</a>
        <a href="/delete?id=${item.id}" class="btn btn-danger">deletar </a>
    </td> 
</tr>



</c:forEach>
            </table>
         
        </div>
    </body>
</html>

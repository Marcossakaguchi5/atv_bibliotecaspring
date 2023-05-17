<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
        <meta charset="UTF-8" />
        <title>Excluir genero</title>
    </head>
    <body>
        <div class="container">
            <h1>Excluir genero</h1>
            <a href="/genero" class="btn btn-primary">voltar</a>
            <a>Deseja remover o genero <strong> "${genero.nome}"</strong>?</a>
            <form action="/deleteG" method="post">
                <input type="hidden" name="id" value="${genero.id}" />
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
 
    </body>
</html>
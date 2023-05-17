<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
        <meta charset="UTF-8" />
        <title>Excluir Livro</title>
    </head>
    <body>
        <div class="container">
            <h1>Excluir Livro</h1>
            <a href="/livro" class="btn btn-primary">voltar</a>
            <a>Deseja remover o livro <strong> "${livro.titulo}"</strong>?</a>
            <form action="/delete" method="post">
                <input type="hidden" name="id" value="${livro.id}" />
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
 
    </body>
</html>
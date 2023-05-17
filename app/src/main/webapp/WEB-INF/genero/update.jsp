<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Atualizar Livro</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <div class="container">
            <a href="/genero" class="btn btn-primary">voltar</a>
            <h1>Atualizar Livro</h1>
            <form action="/updateG" method="post">
                <input type="hidden" name="id" value="${genero.id}" />
                <div class="form-group">
                    <label for="nome"> nome</label>
                    <input type="text" name="nome" value="${genero.nome}" />
                   
                </div>
                <button type="submit" class="btn btn-sucess">Salvar</button>
            </form>
            

        </div>
     
    </body>
</html>
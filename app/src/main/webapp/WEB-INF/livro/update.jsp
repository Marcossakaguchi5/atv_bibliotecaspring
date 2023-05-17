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
            <a href="/livro" class="btn btn-primary">voltar</a>
            <h1>Atualizar Livro</h1>
            <form action="/update" method="post">
                <input type="hidden" name="id" value="${livro.id}" />
                <div class="form-group">
                    <label for="titulo"> titulo</label>
                    <input type="text" name="titulo" value="${livro.titulo}" />
                    <label for="isbn"> isbn</label>
                    <input type="text" name="isbn" value="${livro.isbn}" />
                </div>
                <button type="submit" class="btn btn-sucess">Salvar</button>
            </form>
            

        </div>
     
    </body>
</html>
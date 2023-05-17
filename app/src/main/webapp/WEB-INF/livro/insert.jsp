<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Livro</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <div class="container">
            <h1>novo livro</h1>
            <a href="/livro" class="btn btn-primary">voltar</a>
            <form action="/insert" method="post">
                    <div class="form-group">
                        <label for="titulo">titulo</label>
                        <input type="text" name="titulo" class="form-control" /> 
                        <label for="isbn">isbn</label>
                        <input type="text" name="isbn" class="form-control" /> 

                    </div>
                    <br/>
                    <button type="submit" class="btn btn-sucess"> salvar</button>
            </form>
        </div>
        
    </body>
</html>


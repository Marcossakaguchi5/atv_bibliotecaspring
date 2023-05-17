<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo genero</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <div class="container">
            <h1>novo genero</h1>
            <a href="/genero" class="btn btn-primary">voltar</a>
            <form action="/insertG" method="post">
                    <div class="form-group">
                        <label for="nome">nome</label>
                        <input type="text" name="nome" class="form-control" /> 
                       
                    </div>
                    <br/>
                    <button type="submit" class="btn btn-sucess"> salvar</button>
            </form>
        </div>
        
    </body>
</html>


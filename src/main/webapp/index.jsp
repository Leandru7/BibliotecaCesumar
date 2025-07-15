<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Livro</title>
    <style>
        body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-image: url('img/img.jpg');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                margin: 0;
                padding: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;

            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .card {
            background: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 24px;
            color: #333;
        }

        label {
            display: block;
            margin-top: 12px;
            margin-bottom: 4px;
            font-weight: 500;
            color: #444;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .link {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #0066cc;
            text-decoration: none;
            font-size: 15px;
        }

        .link:hover {
            text-decoration: underline;
        }

        .erro {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="card">
    <h2>Cadastro de Livro</h2>
    <form action="livro" method="post">
        <label for="titulo">Título</label>
        <input type="text" name="titulo" id="titulo">

        <label for="autor">Autor</label>
        <input type="text" name="autor" id="autor">

        <label for="ano">Ano</label>
        <input type="text" name="ano" id="ano">

        <label for="isbn">ISBN</label>
        <input type="text" name="isbn" id="isbn">

        <input type="submit" value="Cadastrar">
    </form>

    <%
        String erro = (String) request.getAttribute("erro");
        if (erro != null) {
    %>
    <div class="erro"><%= erro %></div>
    <%
        }
    %>

    <a class="link" href="lista.jsp">Ver livros cadastrados</a>
</div>
</body>
</html>

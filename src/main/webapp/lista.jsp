<%@ page import="br.edu.cesumar.controller.LivroServlet" %>
<%@ page import="br.edu.cesumar.model.Livro" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Livros</title>
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

        .container {
            background: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 800px;
        }

        h2 {
            text-align: center;
            margin-bottom: 24px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f0f0f0;
        }

        a.excluir {
            color: red;
            text-decoration: none;
            font-weight: bold;
        }

        a.excluir:hover {
            text-decoration: underline;
        }

        .voltar {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 15px;
            color: #0066cc;
            text-decoration: none;
        }

        .voltar:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Livros Cadastrados</h2>

    <table>
        <tr>
            <th>Título</th>
            <th>Autor</th>
            <th>Ano</th>
            <th>ISBN</th>
            <th>Ação</th>
        </tr>
        <%
            for (Livro l : LivroServlet.getLivros()) {
        %>
        <tr>
            <td><%= l.getTitulo() %></td>
            <td><%= l.getAutor() %></td>
            <td><%= l.getAno() %></td>
            <td><%= l.getIsbn() %></td>
            <td><a class="excluir" href="livro?isbn=<%= l.getIsbn() %>">Excluir</a></td>
        </tr>
        <%
            }
        %>
    </table>

    <a class="voltar" href="index.jsp">← Voltar para cadastro</a>
</div>
</body>
</html>

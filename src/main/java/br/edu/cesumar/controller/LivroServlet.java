package br.edu.cesumar.controller;

import br.edu.cesumar.dao.LivroDAO;
import br.edu.cesumar.model.Livro;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.List;

@WebServlet("/livro")
public class LivroServlet extends HttpServlet {

    // Expor o método estático para o JSP acessar
    public static List<Livro> getLivros() {
        return LivroDAO.listar();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anoStr = request.getParameter("ano");
        String isbn = request.getParameter("isbn");

        if (titulo.isEmpty() || autor.isEmpty() || anoStr.isEmpty() || isbn.isEmpty()) {
            request.setAttribute("erro", "Todos os campos são obrigatórios!");
            request.getRequestDispatcher("cadastro.jsp").forward(request, response);
            return;
        }

        try {
            int ano = Integer.parseInt(anoStr);
            Livro livro = new Livro(titulo, autor, ano, isbn);
            LivroDAO.adicionar(livro);
        } catch (NumberFormatException e) {
            request.setAttribute("erro", "Ano deve ser um número!");
            request.getRequestDispatcher("cadastro.jsp").forward(request, response);
            return;
        }

        response.sendRedirect("lista.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String isbn = request.getParameter("isbn");
        if (isbn != null) {
            LivroDAO.excluir(isbn);
        }
        response.sendRedirect("lista.jsp");
    }
}

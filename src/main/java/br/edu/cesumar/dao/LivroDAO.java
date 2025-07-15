package br.edu.cesumar.dao;

import br.edu.cesumar.model.Livro;
import java.util.*;

public class LivroDAO {
    private static List<Livro> livros = new ArrayList<>();

    public static void adicionar(Livro livro) {
        livros.add(livro);
    }

    public static List<Livro> listar() {
        return livros;
    }

    public static void excluir(String isbn) {
        livros.removeIf(l -> l.getIsbn().equals(isbn));
    }
}

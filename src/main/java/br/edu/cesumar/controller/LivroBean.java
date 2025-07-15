package br.edu.cesumar.controller;

import br.edu.cesumar.dao.LivroDAO;

import javax.faces.bean.ManagedBean;

@ManagedBean
public class LivroBean {
    private String isbn;

    public void excluir() {
        if (isbn != null && !isbn.trim().isEmpty()) {
            LivroDAO.excluir(isbn);
        }
    }

    public String getIsbn() { return isbn; }
    public void setIsbn(String isbn) { this.isbn = isbn; }
}

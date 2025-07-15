# 📚 Sistema Web - Biblioteca Cesumar

Este é um sistema web simples desenvolvido como projeto acadêmico para modernização do controle de acervo da Biblioteca da Universidade Cesumar. O objetivo é substituir o uso de planilhas manuais, permitindo o **cadastro**, **listagem** e **exclusão** de livros de forma intuitiva e acessível via navegador.

---

## 🔧 Tecnologias utilizadas

- Java (Servlets, JSP, JSF)
- Maven (gerenciamento de dependências)
- HTML + CSS (estilização manual)
- Padrão MVC (Model-View-Controller)
- Codificação UTF-8

---

## ✅ Funcionalidades

- 📘 Cadastro de livros com:
  - Título
  - Autor
  - Ano de publicação
  - ISBN

- 📋 Listagem dos livros cadastrados em tabela estilizada
- ❌ Exclusão de livros por ISBN
- ⚠️ Validação de campos obrigatórios
- 💻 Interface web responsiva com layout limpo

---

## 📁 Organização do projeto

```
br.edu.cesumar/
├── controller/      # Servlets (lógica e controle)
├── model/           # Classe Livro (estrutura de dados)
├── view/ (webapp/)  # Páginas JSP e JSF (interface do usuário)
├── WEB-INF/         # web.xml, faces-config.xml
└── pom.xml          # Configuração do Maven
```

---

## 🚀 Como executar

1. Importe o projeto no **IntelliJ IDEA** ou **Eclipse** como um projeto Maven.
2. Execute em um servidor compatível com Java EE (como **Apache Tomcat**).
3. Acesse `http://localhost:8080/BibliotecaCesumar_war/` no navegador.

---

## 📌 Observações

Este projeto foi desenvolvido com foco educacional, respeitando a estrutura solicitada: **sem frameworks externos além de Servlet, JSP e JSF**. Todo o código é autoral.

---

📬 Fique à vontade para contribuir ou adaptar o sistema para fins didáticos!

public class Main {

    public static void main(String[] args) {

        Biblioteca biblioteca = new Biblioteca(10);

        Livro livro1 =
                new Livro("L001", "Java para Iniciantes");

        Livro livro2 =
                new Livro("L002", "Programação Orientada a Objetos");

        Livro livro3 =
                new Livro("L003", "Banco de Dados");

        Revista revista1 =
                new Revista("R001", "Revista Tecnologia");

        biblioteca.adicionarItem(livro1);
        biblioteca.adicionarItem(livro2);
        biblioteca.adicionarItem(livro3);
        biblioteca.adicionarItem(revista1);

        Aluno aluno = new Aluno("João");

        biblioteca.emprestar(livro1, aluno);
        biblioteca.emprestar(livro2, aluno);
        biblioteca.emprestar(revista1, aluno);

        // Aqui o aluno já possui 3 itens
        biblioteca.emprestar(livro3, aluno);

        biblioteca.listarAcervo();
    }
}

public class Biblioteca {

    private ItemBiblioteca[] acervo;
    private int quantidadeItens;

    public Biblioteca(int tamanho) {
        acervo = new ItemBiblioteca[tamanho];
        quantidadeItens = 0;
    }

    public void adicionarItem(ItemBiblioteca item) {
        if (quantidadeItens < acervo.length) {
            acervo[quantidadeItens] = item;
            quantidadeItens++;

            System.out.println("Item cadastrado: " + item.getTitulo());
        } else {
            System.out.println("Acervo cheio.");
        }
    }

    public void emprestar(ItemBiblioteca item, Usuario usuario) {

        if (!item.isDisponivel()) {
            System.out.println("O item não está disponível.");
            return;
        }

        if (usuario.getQuantidadeEmprestada() >= usuario.getLimiteItens()) {
            System.out.println("Empréstimo recusado para "
                    + usuario.getNome()
                    + ". Limite de itens atingido.");
            return;
        }

        item.emprestar();
        usuario.adicionarEmprestimo();

        System.out.println("Empréstimo realizado com sucesso.");
    }

    public void devolver(ItemBiblioteca item, Usuario usuario) {

        if (item.isDisponivel()) {
            System.out.println("Este item já está disponível.");
            return;
        }

        item.devolver();
        usuario.removerEmprestimo();

        System.out.println("Devolução realizada com sucesso.");
    }

    public void listarAcervo() {

        System.out.println("\n--- ACERVO ---");

        for (int i = 0; i < quantidadeItens; i++) {

            ItemBiblioteca item = acervo[i];

            System.out.println(
                    "Código: " + item.getCodigo()
                    + " | Título: " + item.getTitulo()
                    + " | Disponível: " + item.isDisponivel()
                    + " | Prazo: " + item.getPrazoEmprestimo()
                    + " dias"
                    + " | Multa: R$ " + item.getMultaPorDia()
            );
        }
    }
}

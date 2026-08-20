INSERT INTO item
(codigo, titulo, tipo, autor, edicao, disponivel)
VALUES
('L001', 'Java para Iniciantes', 'LIVRO', 'João Silva', '1ª', FALSE),
('L002', 'Banco de Dados', 'LIVRO', 'Maria Souza', '2ª', TRUE),
('R001', 'Revista Tecnologia', 'REVISTA', 'Editora Tech', '10ª', FALSE),
('R002', 'Revista Ciência', 'REVISTA', 'Editora Ciência', '5ª', TRUE);


INSERT INTO usuario
(nome, tipo, limite_itens)
VALUES
('João', 'ALUNO', 3),
('Maria', 'PROFESSOR', 5);


INSERT INTO emprestimo
(item_id, usuario_id, data_retirada, data_devolucao_prevista,
 data_devolucao, valor_multa)
VALUES
(1, 1, '2026-08-01', '2026-08-15', NULL, 0.00),
(3, 2, '2026-07-01', '2026-07-08', '2026-07-10', 2.00);

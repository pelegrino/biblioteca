-- 1. Listar todo o acervo
SELECT
    codigo,
    titulo,
    tipo,
    disponivel
FROM item;


-- 2. Listar empréstimos em aberto
SELECT
    usuario.nome,
    item.titulo,
    emprestimo.data_retirada,
    emprestimo.data_devolucao_prevista
FROM emprestimo
JOIN usuario
    ON emprestimo.usuario_id = usuario.id
JOIN item
    ON emprestimo.item_id = item.id
WHERE emprestimo.data_devolucao IS NULL;


-- 3. Total de multas acumuladas por usuário
SELECT
    usuario.nome,
    SUM(emprestimo.valor_multa) AS total_multas
FROM usuario
JOIN emprestimo
    ON usuario.id = emprestimo.usuario_id
GROUP BY usuario.nome;


-- 4. Itens que nunca foram emprestados
SELECT
    item.codigo,
    item.titulo,
    item.tipo
FROM item
LEFT JOIN emprestimo
    ON item.id = emprestimo.item_id
WHERE emprestimo.id IS NULL;

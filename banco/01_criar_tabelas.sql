CREATE TABLE item (

    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(200) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    autor VARCHAR(150),
    edicao VARCHAR(50),
    disponivel BOOLEAN NOT NULL DEFAULT TRUE,

    CHECK (tipo IN ('LIVRO', 'REVISTA'))
);


CREATE TABLE usuario (

    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    limite_itens INTEGER NOT NULL,

    CHECK (tipo IN ('ALUNO', 'PROFESSOR'))
);


CREATE TABLE emprestimo (

    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    item_id INTEGER NOT NULL,
    usuario_id INTEGER NOT NULL,
    data_retirada DATE NOT NULL,
    data_devolucao_prevista DATE NOT NULL,
    data_devolucao DATE,
    valor_multa NUMERIC(10, 2) DEFAULT 0.00,

    FOREIGN KEY (item_id) REFERENCES item(id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

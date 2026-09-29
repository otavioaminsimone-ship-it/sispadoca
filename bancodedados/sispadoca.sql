
-- =========================
-- SISPADOCA
-- =========================

CREATE TABLE FILIAL (
  id_filial INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  cnpj VARCHAR(18) UNIQUE,
  telefone VARCHAR(20),
  email VARCHAR(150),
  logradouro VARCHAR(150),
  numero VARCHAR(20),
  bairro VARCHAR(100),
  cidade VARCHAR(100),
  cep VARCHAR(9),
  horario_abertura TIME,
  horario_fechamento TIME,
  status VARCHAR(30)
) ENGINE=InnoDB;

CREATE TABLE CLIENTE (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  cpf VARCHAR(14) UNIQUE,
  data_nascimento DATE,
  telefone VARCHAR(20),
  email VARCHAR(150),
  logradouro VARCHAR(150),
  numero VARCHAR(20),
  bairro VARCHAR(100),
  cidade VARCHAR(100),
  cep VARCHAR(9),
  data_cadastro DATE,
  status VARCHAR(30)
) ENGINE=InnoDB;

CREATE TABLE FUNCIONARIO (
  id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  cpf VARCHAR(14) UNIQUE,
  rg VARCHAR(20),
  data_nascimento DATE,
  telefone VARCHAR(20),
  email VARCHAR(150),
  cargo VARCHAR(100),
  salario DECIMAL(12,2),
  data_admissao DATE,
  status VARCHAR(30),
  id_filial INT,
  CONSTRAINT fk_funcionario_filial
    FOREIGN KEY (id_filial) REFERENCES FILIAL(id_filial)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE CATEGORIA (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  descricao TEXT,
  tipo VARCHAR(50),
  margem_lucro DECIMAL(5,2),
  validade_padrao INT,
  temperatura_armazenamento VARCHAR(50),
  status VARCHAR(30),
  data_cadastro DATE
) ENGINE=InnoDB;

CREATE TABLE FORNECEDOR (
  id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
  razao_social VARCHAR(200),
  nome_fantasia VARCHAR(150),
  cnpj VARCHAR(18) UNIQUE,
  inscricao_estadual VARCHAR(20),
  telefone VARCHAR(20),
  email VARCHAR(150),
  logradouro VARCHAR(150),
  numero VARCHAR(20),
  bairro VARCHAR(100),
  cidade VARCHAR(100),
  cep VARCHAR(9),
  status VARCHAR(30)
) ENGINE=InnoDB;

CREATE TABLE PRODUTO (
  id_produto INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  descricao TEXT,
  preco_venda DECIMAL(12,2),
  custo DECIMAL(12,2),
  peso DECIMAL(12,3),
  unidade_medida VARCHAR(30),
  validade_dias INT,
  id_categoria INT,
  id_fornecedor INT,
  status VARCHAR(30),
  data_cadastro DATE,
  CONSTRAINT fk_produto_categoria
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_produto_fornecedor
    FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDOR(id_fornecedor)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE ESTOQUE (
  id_estoque INT AUTO_INCREMENT PRIMARY KEY,
  id_produto INT,
  quantidade DECIMAL(12,3),
  quantidade_minima DECIMAL(12,3),
  quantidade_maxima DECIMAL(12,3),
  lote VARCHAR(60),
  data_entrada DATE,
  data_validade DATE,
  localizacao VARCHAR(100),
  status VARCHAR(30),
  ultima_atualizacao DATETIME,
  CONSTRAINT fk_estoque_produto
    FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE VENDA (
  id_venda INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  id_funcionario INT,
  id_filial INT,
  data_venda DATE,
  hora_venda TIME,
  valor_subtotal DECIMAL(12,2),
  desconto DECIMAL(12,2),
  valor_total DECIMAL(12,2),
  status VARCHAR(30),
  CONSTRAINT fk_venda_cliente
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_venda_funcionario
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_venda_filial
    FOREIGN KEY (id_filial) REFERENCES FILIAL(id_filial)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE ITEM_VENDA (
  id_item_venda INT AUTO_INCREMENT PRIMARY KEY,
  id_venda INT,
  id_produto INT,
  quantidade DECIMAL(12,3),
  preco_unitario DECIMAL(12,2),
  desconto DECIMAL(12,2),
  subtotal DECIMAL(12,2),
  observacao TEXT,
  CONSTRAINT fk_item_venda_venda
    FOREIGN KEY (id_venda) REFERENCES VENDA(id_venda)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_item_venda_produto
    FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE FORMA_PAGAMENTO (
  id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
  id_venda INT,
  tipo VARCHAR(50),
  valor DECIMAL(12,2),
  data_pagamento DATE,
  hora_pagamento TIME,
  troco DECIMAL(12,2),
  numero_transacao VARCHAR(100),
  status VARCHAR(30),
  CONSTRAINT fk_pagamento_venda
    FOREIGN KEY (id_venda) REFERENCES VENDA(id_venda)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE ENTREGA (
  id_entrega INT AUTO_INCREMENT PRIMARY KEY,
  id_venda INT,
  id_cliente INT,
  endereco VARCHAR(200),
  numero VARCHAR(20),
  bairro VARCHAR(100),
  cidade VARCHAR(100),
  cep VARCHAR(9),
  data_entrega DATE,
  hora_entrega TIME,
  status VARCHAR(30),
  observacao TEXT,
  CONSTRAINT fk_entrega_venda
    FOREIGN KEY (id_venda) REFERENCES VENDA(id_venda)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_entrega_cliente
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

-- (Opcional) Se você quiser garantir 1:1 entre VENDA e ENTREGA, descomente:
-- ALTER TABLE ENTREGA ADD UNIQUE KEY uq_entrega_venda (id_venda);

CREATE TABLE COMPRA (
  id_compra INT AUTO_INCREMENT PRIMARY KEY,
  id_fornecedor INT,
  id_funcionario INT,
  data_compra DATE,
  numero_nota VARCHAR(80),
  valor_produtos DECIMAL(12,2),
  frete DECIMAL(12,2),
  desconto DECIMAL(12,2),
  valor_total DECIMAL(12,2),
  forma_pagamento VARCHAR(50),
  status VARCHAR(30),
  CONSTRAINT fk_compra_fornecedor
    FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDOR(id_fornecedor)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_compra_funcionario
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE ITEM_COMPRA (
  id_item_compra INT AUTO_INCREMENT PRIMARY KEY,
  id_compra INT,
  id_produto INT,
  quantidade DECIMAL(12,3),
  preco_unitario DECIMAL(12,2),
  desconto DECIMAL(12,2),
  subtotal DECIMAL(12,2),
  lote VARCHAR(60),
  data_validade DATE,
  CONSTRAINT fk_item_compra_compra
    FOREIGN KEY (id_compra) REFERENCES COMPRA(id_compra)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_item_compra_produto
    FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE PRODUCAO (
  id_producao INT AUTO_INCREMENT PRIMARY KEY,
  id_produto INT,
  id_funcionario INT,
  data_producao DATE,
  hora_inicio TIME,
  hora_fim TIME,
  quantidade_produzida DECIMAL(12,3),
  quantidade_perdida DECIMAL(12,3),
  custo_producao DECIMAL(12,2),
  status VARCHAR(30),
  observacao TEXT,
  CONSTRAINT fk_producao_produto
    FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_producao_funcionario
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE MOVIMENTACAO_ESTOQUE (
  id_movimentacao INT AUTO_INCREMENT PRIMARY KEY,
  id_produto INT,
  id_funcionario INT,
  tipo VARCHAR(50),
  quantidade DECIMAL(12,3),
  data DATE,
  hora TIME,
  motivo VARCHAR(150),
  estoque_anterior DECIMAL(12,3),
  estoque_atual DECIMAL(12,3),
  observacao TEXT,
  CONSTRAINT fk_mov_estoque_produto
    FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_mov_estoque_funcionario
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE PROMOCAO (
  id_promocao INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  descricao TEXT,
  tipo_desconto VARCHAR(50),
  valor_desconto DECIMAL(12,2),
  data_inicio DATE,
  data_fim DATE,
  quantidade_minima DECIMAL(12,3),
  status VARCHAR(30)
) ENGINE=InnoDB;

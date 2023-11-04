-- criação do banco de dados para cenário de Ecommerce
drop database ECOMMERCE;
create database ECOMMERCE;
use ECOMMERCE;

create table FORNECEDOR(
						ID				integer auto_increment primary key,
						CNPJ			varchar(14) not null default '',
                        RAZAO_SOCIAL	varchar(45) not null default '',
                        NOME_FANTASIA	varchar(20) not null default '',
                        DATA_CADASTRO   date,
                        STATUS          enum('ATIVO', 'INATIVO') default 'ATIVO',
                        constraint UNIQUE_FORNECEDOR_CNPJ unique (CNPJ)
);

create table PRODUTO(
						ID				integer auto_increment primary key,
						CATEGORIA	    enum('VESTUARIO', 'ELETRONICO', 'BRINQUEDOS', 'FERRAMENTAS', 'NAO DEFINIDO') default 'NAO DEFINIDO',
                        DESCRICAO	    varchar(45) not null default '',
                        VALOR	        float not null default '0',
                        CODIGO_BARRAS   varchar(13) not null default '',
                        DIMENSOES       varchar(10) not null default '',
                        constraint UNIQUE_PRODUTO_CODIGO_BARRAS unique (CODIGO_BARRAS)
);

create table PRODUTO_POR_FORNECEDOR(
						PRODUTO_ID		integer,
						FORNECEDOR_ID	integer,
                        primary key (PRODUTO_ID, FORNECEDOR_ID),
                        foreign key FK_PRODFORNEC_ID_PRODUTO (PRODUTO_ID) references PRODUTO(ID),
                        foreign key FK_PRODFORNEC_ID_FORNECEDOR (FORNECEDOR_ID) references FORNECEDOR(ID)
);

create table LOCAL(
						ID				integer auto_increment  primary key,
						DESCRICAO		varchar(45) not null default ''
);

create table ESTOQUE(
						LOCAL_ID		integer not null,
						PRODUTO_ID	    integer not null,
                        QT_ESTOQUE      integer not null default '0',
                        QT_RESERVADO    integer not null default '0',
                        QT_DISPONIVEL   integer not null default '0',
                        primary key (LOCAL_ID, PRODUTO_ID),
                        foreign key FK_ESTOQUE_ID_PRODUTO (PRODUTO_ID) references PRODUTO(ID),
                        foreign key FK_ESTOQUE_ID_LOCAL (LOCAL_ID) references LOCAL(ID)
);

create table VENDEDOR(
						ID				integer auto_increment primary key,
						RAZAO_SOCIAL	varchar(45) not null default '',
                        CNPJ		    varchar(14) not null default '',
                        DATA_CADASTRO   date,
                        STATUS          enum('ATIVO', 'INATIVO') default 'ATIVO',
                        constraint UNIQUE_VENDEDOR_CNPJ unique (CNPJ)
);

create table PRODUTO_POR_VENDEDOR(
						PRODUTO_ID		integer,
						VENDEDOR_ID  	integer,
                        primary key (PRODUTO_ID, VENDEDOR_ID),
                        foreign key FK_PRODVEND_ID_PRODUTO (PRODUTO_ID) references PRODUTO(ID),
                        foreign key FK_PRODVEND_ID_VENDEDOR (VENDEDOR_ID) references VENDEDOR(ID)
);

create table CLIENTE(
						ID				integer auto_increment primary key,
						NOME		    varchar(45) not null default '',
						NOME_MEIO		char(3) not null default '',
						NOME_FINAL		varchar(20) not null default '',
                        DATA_NASCIMENTO date,
                        ENDERECO	    varchar(45) not null default '',
                        NUMERO  	    varchar(10) not null default '',
                        COMPLEMENTO	    varchar(20) not null default '',
                        BAIRRO	        varchar(45) not null default '',
                        MUNICIPIO	    varchar(45) not null default '',
                        UF	            char(2) not null default '',
                        CEP             varchar(10) not null default '',
                        IDENTIFICACAO   varchar(45) not null default '',
                        DATA_CADASTRO   date,
						JURFIS          enum('FISICA', 'JURIDICA') default 'FISICA',
                        CNPJ_CPF        varchar(14) not null default '',
                        STATUS          enum('ATIVO', 'INATIVO') default 'ATIVO',
                        constraint UNIQUE_CLIENTE_CNPJ_CPF unique (CNPJ_CPF)
);
                        
create table PEDIDO(
						ID		        integer auto_increment primary key,
                        CLIENTE_ID  	integer not null,
                        STATUS          enum('PENDENTE', 'CANCELADO', 'ENTREGUE', 'EM PROCESSAMENTO') default 'EM PROCESSAMENTO',
                        DESCRICAO       varchar(45) default '',
                        VALOR_TOTAL     float,
                        foreign key FK_PEDIDO_ID_CLIENTE (CLIENTE_ID) references CLIENTE(ID)
);

create table PRODUTO_POR_PEDIDO(
						PRODUTO_ID		integer,
						PEDIDO_ID     	integer,
                        QUANTIDADE      integer not null default '0',
                        VALOR_UNIT		float not null default '0',
                        VALOR_TOTAL     float not null default '0',
                        primary key (PRODUTO_ID, PEDIDO_ID),
                        foreign key FK_PRODPED_ID_PRODUTO (PRODUTO_ID) references PRODUTO(ID),
                        foreign key FK_PRODPED_ID_PEDIDO (PEDIDO_ID) references PEDIDO(ID)
);

create table ENTREGA(
						ID		         integer auto_increment primary key,
                        ENTREGA          enum('CORREIO', 'TRANSPORTADORA') not null default 'CORREIO',
                        STATUS_ENTREGA   enum('PENDENTE', 'EM TRANSITO', 'ENTREGUE') not null default 'PENDENTE',
                        VALOR_FRETE      float not null default '0',
                        CODIGO_RASTREIRO varchar(45) not null default '',
                        PEDIDO_ID        integer not null,
                        foreign key FK_ENTREGA_ID_PEDIDO (PEDIDO_ID) references PEDIDO(ID),
                        constraint UNIQUE_ENTREGA_PEDIDO_ID unique (PEDIDO_ID)
);

create table PAGAMENTO(
						ID		           integer auto_increment primary key,
                        TIPO_DE_PAGAMENTO  enum('CARTAO', 'BOLETO', 'PIX') not null default 'CARTAO',
                        CARTAO_NUMERO      varchar(45) not null default '',
                        CARTAO_VALIDADE    varchar(10) not null default '',
                        CARTAO_NOME        varchar(45) not null default '',
                        CLIENTE_ID         integer not null,
                        foreign key FK_PAGAMENTO_ID_CLIENTE (CLIENTE_ID) references CLIENTE(ID)
);

create table PAGAMENTO_POR_PEDIDO(
						PAGAMENTO_ID		integer,
						PEDIDO_ID     	 	integer,
                        primary key (PAGAMENTO_ID, PEDIDO_ID),
                        foreign key FK_PAGPED_ID_PAGAMENTO (PAGAMENTO_ID) references PAGAMENTO(ID),
                        foreign key FK_PAGPED_ID_PEDIDO (PEDIDO_ID) references PEDIDO(ID)
);

show tables;

 
 
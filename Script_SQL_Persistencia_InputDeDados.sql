 alter table FORNECEDOR auto_increment = 1;
 
  insert into FORNECEDOR ( CNPJ, RAZAO_SOCIAL, NOME_FANTASIA, DATA_CADASTRO, STATUS )
			       values ('11578605000101', 'FABRICA DE ROUPAS OGOCHI LTDA', 'OGOCHI', '2023-11-03', 'ATIVO'),
                          ('22579607000102', 'INDUSTRIA DE ELETRONICOS SAMSUNG', 'SAMSUNG', '2023-11-03', 'ATIVO'),
                          ('33579609000103', 'INDUSTRIA DE BRINQUEDOS LEGO', 'LEGO', '2023-11-03', 'ATIVO'),
                          ('44579609000104', 'INDUSTRIA TRAMONTINA', 'TRAMONTINA', '2023-11-03', 'ATIVO');
 
  alter table PRODUTO auto_increment = 1;
 
 insert into PRODUTO ( CATEGORIA, DESCRICAO, VALOR, CODIGO_BARRAS, DIMENSOES )
			  values ('VESTUARIO', 'CALCA', '89.90', '7891234567898', '12X80X50'),
                     ('ELETRONICO', 'CELULAR', '2999.90', '7896784567898', '12X15X2'),
                     ('BRINQUEDOS', 'BLOCOS DE MONTAR', '129.90', '7891234587698', '5X10X10'),
					 ('FERRAMENTAS', 'CHAVE DE FENDA', '5.90', '7887834512898', '3X15X5'),
					 ('VESTUARIO', 'CAMISETA', '49.90', '7892234567898', '30X80X50'),
                     ('ELETRONICO', 'TABLET', '4999.90', '7896784123898', '25X35X2'),
                     ('BRINQUEDOS', 'KIT LEGO MARVEL', '559.90', '7891234582298', '50X10X10'),
					 ('FERRAMENTAS', 'BALDE', '19.90', '7887834567898', '20X20X15'),
					 ('FERRAMENTAS', 'PINCEL', '9.90', '7887834533898', '10X10X2'),
					 ('FERRAMENTAS', 'FURADEIRA', '159.90', '7887834447898', '25X20X15');

  insert into PRODUTO_POR_FORNECEDOR ( PRODUTO_ID, FORNECEDOR_ID )
			       values ('1', '1'),
                          ('2', '2'),
                          ('3', '3'),
                          ('4', '4'),
                          ('5', '1'),
                          ('6', '2'),
                          ('7', '3'),
                          ('8', '4'),
                          ('9', '4'),
                          ('10', '4');


  alter table LOCAL auto_increment = 1;
 
  insert into LOCAL ( DESCRICAO )
			       values ('MATRIZ'),
                          ('FILIAL'); 

  insert into ESTOQUE ( LOCAL_ID, PRODUTO_ID, QT_ESTOQUE, QT_RESERVADO, QT_DISPONIVEL )
               values ( '1', '1', '200', '0', '200'),
                      ( '1', '2', '50', '0', '50'),
                      ( '1', '3', '33', '0', '33'),
                      ( '1', '4', '10', '0', '10'),
                      ( '1', '5', '7', '0', '7'),
                      ( '1', '6', '500', '0', '500'),
                      ( '1', '7', '99', '0', '99'),
                      ( '1', '8', '100', '0', '100'),
                      ( '1', '9', '900', '0', '900'),
                      ( '1', '10', '1237', '0', '1237');

 alter table VENDEDOR auto_increment = 1;
 
   insert into VENDEDOR ( RAZAO_SOCIAL, CNPJ, DATA_CADASTRO, STATUS )
			       values ('VENDAS E REPRESENTACOES BRASIL', '11578605000100', '2023-11-03', 'ATIVO'),
                          ('EXPERT REPRESENTACOES', '22578605000199', '2023-11-03', 'ATIVO'); 

 insert into PRODUTO_POR_VENDEDOR ( PRODUTO_ID, VENDEDOR_ID )
				values ('1', '2'),
                       ('2', '1'),
                       ('3', '1'),
                       ('4', '2'),
                       ('5', '2'),
                       ('6', '1'),
                       ('7', '1'),
                       ('8', '2'),
                       ('9', '2'),
                       ('10', '2');
                       
 alter table CLIENTE auto_increment = 1;
 
 insert into CLIENTE ( 	NOME,
						NOME_MEIO,
						NOME_FINAL,
                        DATA_NASCIMENTO,
                        ENDERECO,
                        NUMERO,
                        COMPLEMENTO,
                        BAIRRO,
                        MUNICIPIO,
                        UF,
                        CEP,
                        IDENTIFICACAO,
                        DATA_CADASTRO,
                        JURFIS,
                        CNPJ_CPF,
                        STATUS )
              values ('LUIS','B','SILVA','1979-08-21','Rua Euclides', '340', 'Ap 301', 'Centro', 'Chapeco', 'SC', '90890-000', '', '2023-11-03', 'FISICA', '00112233001', 'ATIVO'),          
                     ('EDUARDO','L','SANTOS','1983-07-12','Rua Euclides', '340', 'Ap 302', 'Centro', 'Chapeco', 'SC', '90890-000', '', '2023-11-03', 'FISICA', '11112233002', 'ATIVO'),
                     ('PEDRO','C','SILVA','1990-12-06','Avenida Sertorio', '300', 'Ap 101', 'Centro', 'Porto Alegre', 'RS', '91350-000', '', '2023-11-03', 'FISICA', '22112233003', 'ATIVO'), 
                     ('MARIA','D','LUZ','1985-01-28','Rua Euclides', '340', 'Ap 401', 'Centro', 'Chapeco', 'SC', '90890-000', '', '2023-11-03', 'FISICA', '33112233004', 'ATIVO'),
                     ('ALICE','B','DA SILVA','2001-05-23','Avenida Sertorio', '300', 'Ap 201', 'Centro', 'Porto Alegre', 'RS', '91350-000', '', '2023-11-03', 'FISICA', '44112233005', 'ATIVO'),
                     ('RAFAEL','A','MARQUES','2006-07-25','Rua Euclides', '340', 'Ap 501', 'Centro', 'Chapeco', 'SC', '90890-000', '', '2023-11-03', 'FISICA', '55112233006', 'ATIVO'),
                     ('JOAO','E','OLIVEIRA','1963-04-02','Avenida Sertorio', '300', 'Ap 301', 'Centro', 'Porto Alegre', 'RS', '91350-000', '', '2023-11-03', 'FISICA', '66112233007', 'ATIVO'), 
                     ('BRUNO','F','SANTOS','1999-09-20','Rua Euclides', '340', 'Ap 601', 'Centro', 'Chapeco', 'SC', '90890-000', '', '2023-11-03', 'FISICA', '77112233008', 'ATIVO'), 
                     ('HEIOR','F','FERNADEZ','1998-11-21','Avenida Sertorio', '300', 'Ap 401', 'Centro', 'Porto Alegre', 'RS', '91350-000', '', '2023-11-03', 'FISICA', '88112233009', 'ATIVO'), 
                     ('MIGUEL','C','MESSIAS','1997-12-29','Rua Euclides', '340', 'Ap 301', 'Centro', 'Chapeco', 'SC', '90890-000', '', '2023-11-03', 'FISICA', '99112233010', 'ATIVO');

  insert into  PEDIDO (  CLIENTE_ID, STATUS, DESCRICAO, VALOR_TOTAL )
               values ('1', 'PENDENTE', '', '505.40'),  
					  ('2', 'PENDENTE', '', '789.70'),  
                      ('3', 'PENDENTE', '', '5034.90'),  
                      ('4', 'CANCELADO', '', '159.90'),  
                      ('5', 'ENTREGUE', '', '432.90'),  
                      ('6', 'EM PROCESSAMENTO', '', '556.90'),  
                      ('7', 'EM PROCESSAMENTO', '', '5559.80'),  
                      ('8', 'ENTREGUE', '', '1245.10'),  
                      ('9', 'ENTREGUE', '', '55.90'),  
                      ('10', 'CANCELADO', '', '4999.90');   

  insert into  PRODUTO_POR_PEDIDO ( PRODUTO_ID, PEDIDO_ID, QUANTIDADE, VALOR_UNIT, VALOR_TOTAL )   
                           values ('1', '1', '5', '89.90', '449.50'),
                                  ('4', '1', '1', '5.90', '5.90'),
                                  ('3', '2', '1', '129.90', '129.90'),
                                  ('5', '2', '1', '49.90', '49.90'),
                                  ('7', '2', '1', '559.90', '559.90'),
								  ('6', '3', '1', '4999.90', '4999.90'),
                                  ('10', '4', '1', '159.90', '159.90'),
								  ('8', '5', '10', '19.90', '199.00'),
                                  ('9', '5', '20', '9.90', '198.00'),
                                  ('10', '6', '1', '159.90', '159.90'),
                                  ('8', '6', '10', '19.90', '199.00'),
                                  ('9', '6', '20', '9.90', '198.00'),
                                  ('7', '7', '1', '559.90', '559.90'),
                                  ('6', '7', '1', '4999.90', '4999.90'),
                                  ('1', '8', '5', '89.90', '449.50'),
                                  ('4', '8', '1', '5.90', '5.90'),
                                  ('3', '8', '1', '129.90', '129.90'),
                                  ('5', '8', '1', '49.90', '49.90'),
                                  ('7', '8', '1', '559.90', '559.90'),
                                  ('4', '9', '1', '5.90', '5.90'),
                                  ('6', '10', '1', '4999.90', '4999.90');

  insert into  ENTREGA ( ENTREGA, STATUS_ENTREGA, VALOR_FRETE, CODIGO_RASTREIRO, PEDIDO_ID )
				values ('CORREIO', 'EM TRANSITO', '50.00', 'QS345098768', '1'),  
                       ('CORREIO', 'EM TRANSITO', '50.00', 'QS334546498', '2'),  
                       ('TRANSPORTADORA', 'EM TRANSITO', '35.00', 'TXQ5678', '3'),  
                       ('TRANSPORTADORA', 'ENTREGUE', '35.00', 'TXQ5367', '5'),  
                       ('CORREIO', 'ENTREGUE', '50.00', 'QS345234768', '8'),  
                       ('CORREIO', 'ENTREGUE', '50.00', 'QS346767768', '9');
               
  insert into PAGAMENTO ( TIPO_DE_PAGAMENTO, CARTAO_NUMERO, CARTAO_VALIDADE, CARTAO_NOME, CLIENTE_ID )
				 values ('CARTAO', '5679-8888-3210-8976', '08/2024', 'LUIS B SILVA', '1'),          
                        ('BOLETO', '', '', '', '2'), 
                        ('BOLETO', '', '', '', '3'), 
                        ('CARTAO', '5678-9999-3210-6578', '01/2025', 'MARIA D LUZ', '4'), 
                        ('CARTAO', '4312-7777-3210-8976', '07/2026', 'ALICE SILVA', '5'), 
                        ('PIX', '', '', '', '6'), 
                        ('PIX', '', '', '', '7'), 
                        ('CARTAO', '5690-6666-3210-3423', '08/2028', 'BRUNO SANTOS', '8'), 
                        ('PIX', '', '', '', '9'), 
                        ('CARTAO', '5655-5555-3210-8976', '03/2024', 'MIGUEL MESSIAS', '10');

  insert into PAGAMENTO_POR_PEDIDO ( PAGAMENTO_ID, PEDIDO_ID )
                            values ('1', '1'), 
                                   ('2', '2'), 
                                   ('3', '3'), 
                                   ('4', '4'), 
                                   ('5', '5'), 
                                   ('6', '6'), 
                                   ('7', '7'), 
                                   ('8', '8'), 
                                   ('9', '9'), 
                                   ('10', '10');
                            
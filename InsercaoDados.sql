-- Criar 15 registros para cada tabela

/*Genero */
INSERT INTO genero (idgenero, nome) VALUES
(1,'Drama'),
(2,'Comédia'),
(3,'Aventura'),
(4,'Romance'),
(5,'Ficção Científica'),
(6,'Tragédia'),
(7,'Terror'),
(8,'Sobrenatural'),
(9,'Animação'),
(10,'Policial'),
(11,'Biografia'),
(12,'Documentario'),
(13,'Guerra'),
(14,'Suspense'),
(15,'Ação');


/*Sala*/
INSERT INTO sala (idsala, nome, tipo) VALUES
(1, 'Sala 1', 'Normal'),
(2, 'Sala 2', 'Normal'),
(3, 'Sala 3', 'Normal'),
(4, 'Sala 4', 'Normal'),
(5, 'Sala 5', 'Normal'),
(6, 'Sala 6', 'Normal'),
(7, 'Sala 7', 'Normal'),
(8, 'Sala 8', 'VIP'),
(9, 'Sala 9', 'Normal'),
(10, 'Sala 10', 'Normal'),
(11, 'Sala 11', 'Normal'),
(12, 'Sala 12', 'Normal'),
(13, 'Sala 13', 'VIP'),
(14, 'Sala 14', 'Normal'),
(15, 'Sala 15', 'VIP');


/*Assento*/
INSERT INTO assento (idassento, nome, Sala_idSala) VALUES
(1, 'A1',1),
(2, 'A2',1),
(3, 'A3',1),
(4, 'A4',1),
(5, 'A5',1),
(6, 'B1',2),
(7, 'B2',2),
(8, 'B3',2),
(9, 'B4',2),
(10, 'B5',2),
(11, 'C1',3),
(12, 'C2',3),
(13, 'C3',3),
(14, 'C4',3),
(15, 'C5',3);

/* Filme*/
INSERT INTO filme (idfilme, nome, sinopse, duracao, classificacaoIndicativa, Genero_idGenero) Values
(1, 'Vingadores: Ultimato', 'Os heróis se unem em uma batalha épica para derrotar Thanos.', 181, 12, 15),
(2, 'Rei Leão', 'A história do jovem leão Simba.', 118, 0, 9),
(3, 'Frozen II', 'Anna e Elsa descobrem a origem dos poderes da Elsa.', 103, 0, 9),
(4, 'Homem-Aranha: Sem Volta Para Casa', 'Peter Parker enfrenta novos vilões.', 148, 12, 15),
(5, 'IT: A coisa', 'Crianças enfrentam o palhaço Pennywise.', 135, 16, 7),
(6, 'Procurando Nemo', 'Um peixe-palhaço busca seu filho perdido.', 100, 0, 9),
(7, 'A Viagem de Chihiro', 'Chihiro entra em um mundo mágico para salvar seus pais.', 125, 0, 9),
(8, 'O Castelo Animado', 'Sophie é transformada em idosa e encontra um misterioso mago.', 119, 0, 9),
(9, 'Titanic', 'Romance a bordo do navio trágico.', 195, 12, 6),
(10, 'Your Name', 'Dois adolescentes descobrem uma conexão misteriosa.', 112, 0, 9),
(11, 'Kiki: Entregas a Domicílio', 'Jovem bruxa descobre independência e amizade.', 80, 0, 9),
(12,'O Resgate do Soldado Ryan', 'Soldados americanos buscam resgatar um colega durante a Segunda Guerra Mundial.', 169, 16, 13),
(13,'Ilha do Medo', 'Um detetive investiga o desaparecimento de uma paciente em um hospital psiquiátrico.', 138, 16, 14),
(14, 'As Branquelas', 'Dois agentes se disfarçam de socialites para investigar um crime.', 109, 14, 2),
(15, 'A Culpa é das Estrelas', 'Dois jovens enfrentam doença e se apaixonam.', 126, 12, 1);

/* Cliente */
INSERT INTO cliente (idCliente, nome, cpf, metodoPagamento) VALUES
(1, 'Mariana Lopes Souza', '12345678901', 'Credito'),
(2, 'Carlos Henrique Dias', '98765432100', 'Pix'),
(3, 'Fernanda Costa Almeida', '45678912355', 'Débito'),
(4, 'João Ricardo Silva', '65498732144', 'Pix'),
(5, 'Lucas Gabriel Pereira', '11223344556', 'Pix'),
(6, 'Beatriz Fernandes Lima', '55667788990', 'Débito'),
(7, 'Rafael Augusto Nunes', '44332211009', 'Credito'),
(8, 'Camila Rocha Santos', '66778899001', 'Pix'),
(9, 'Gustavo Henrique Costa', '33445566778', 'Débito'),
(10, 'Larissa Almeida Vieira', '77889900112', 'Credito'),
(11, 'Thiago Martins Oliveira', '22113344556', 'Pix'),
(12, 'Juliana Ribeiro Souza', '88990011223', 'Credito'),
(13, 'Felipe dos Santos Lima', '11224466880', 'Débito'),
(14,'Patrícia Gomes Ferreira', '99001122334', 'Pix'),
(15, 'Vinícius Andrade Souza', '22334455667', 'Pix');

/*Trailer */
INSERT INTO trailer (idTrailer, nome, duracao) VALUES
(1,'Vingadores: Ultimato - Trailer Oficial', 3),
(2,'Rei Leão - Trailer Oficial', 2),
(3,'Frozen II - Trailer Oficial', 3),
(4,'Homem-Aranha: Sem Volta Para Casa - Trailer Oficial', 3),
(5,'IT: A coisa - Trailer Oficial', 2),
(6,'Procurando Nemo - Trailer Oficial', 3),
(7,'A Viagem de Chihiro - Trailer Oficial', 1),
(8,'O Castelo Animado - Trailer Oficial', 1),
(9,'Titanic - Trailer Oficial', 2),
(10,'Your Name - Trailer Oficial', 1),
(11,'Kiki: Entregas a Domicílio - Trailer Oficial', 1),
(12,'O Resgate do Soldado Ryan - Trailer Oficial', 1),
(13,'Ilha do Medo - Trailer Oficial', 2),
(14,'As Branquelas - Trailer Oficial', 1),
(15,'A Culpa é das Estrelas - Trailer Oficial', 1);

/* Sessao*/
INSERT INTO sessao (idSessao, formato, idioma, Filme_idFilme, Sala_idSala, data, horario) VALUES 
(1, '2D', 'Dublado', 1, 1, '2026-01-30', '14:00'),
(2, '3D', 'Legendado', 1, 1, '2026-01-30', '16:30'),
(3, '2D', 'Dublado', 1, 1, '2026-01-30', '20:00'),
(4, '2D', 'Legendado', 4, 4, '2025-01-10', '14:30'),
(5, '3D', 'Dublado', 4, 4, '2025-01-10', '18:00'),
(6, '2D', 'Dublado', 6, 6, '2025-01-10', '21:30'),
(7, '2D', 'Legendado', 7, 7, '2025-12-25', '10:00'),
(8, '3D', 'Dublado', 7, 7, '2025-12-25', '14:30'),
(9, '2D', 'Legendado', 9, 9, '2025-12-25', '20:00'),
(10, '2D', 'Dublado', 10, 10, '2025-01-10', '15:00'),
(11, '3D', 'Legendado', 11, 11, '2024-01-10', '17:30'),
(12, '2D', 'Dublado', 12, 12, '2023-02-9', '19:00'),
(13, '2D', 'Legendado', 13, 13, '2025-11-06', '21:00'),
(14, '3D', 'Dublado', 14, 14, '2025-11-06', '14:15'),
(15, '2D', 'Dublado', 15, 15, '2025-01-10', '16:45');

/*Sessao_has_Assento */
INSERT INTO Sessao_has_assento (Sessao_idSessao, Assento_idAssento, ocupado) VALUES
-- Sessão 1 (assento 1 - 5)
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 0),
-- Sessão 2 (assento 1 - 5)
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 0),
(2, 5, 0),
-- Sessão 3 (assento 1 - 5)
(3, 1, 1),
(3, 2, 1),
(3, 3, 1),
(3, 4, 0),
(3, 5, 0),
-- Sessão 4 (assento 1 - 5)
(4, 1, 1),
(4, 2, 1),
(4, 3, 1),
(4, 4, 1),
(4, 5, 1),

-- Sessão 5 (assento 1 - 5)
(5, 1, 1),
(5, 2, 0),
(5, 3, 0),
(5, 4, 0),
(5, 5, 0);

 /*Ingresso */
INSERT INTO ingresso (idIngresso, valor, tipo, 
Cliente_idCliente, Sessao_has_Assento_Sessao_idSessao, Sessao_has_Assento_Assento_idAssento ) VALUES
-- Sessão 1 (4 ocupados)
(1, 30.00, 'INTEIRA', 1, 1, 1),
(2, 30.00, 'INTEIRA', 1, 1, 2),
(3, 15.00, 'MEIA',    2, 1, 3),
(4, 15.00, 'MEIA',    2, 1, 4),

-- Sessão 2 (3 ocupados)
(5, 30.00, 'INTEIRA', 5, 2, 1),
(6, 15.00, 'MEIA',    6, 2, 2),
(7, 30.00, 'INTEIRA', 7, 2, 3),

-- Sessão 3 (3 ocupados)
(8, 15.00, 'MEIA', 8, 3, 1),
(9, 15.00, 'MEIA', 8, 3, 2),
(10, 30.00, 'INTEIRA', 10, 3, 3),

-- Sessão 4 (5 ocupados)
(11, 30.00, 'INTEIRA', 11, 4, 1),
(12, 30.00, 'INTEIRA', 11, 4, 2),
(13, 30.00, 'INTEIRA', 11, 4, 3),
(14, 15.00, 'MEIA',    14, 4, 4),
(15, 30.00, 'INTEIRA', 15, 4, 5),

-- Sessão 5 (1 ocupado)
(16, 15.00, 'MEIA', 3, 5, 1);

/*Trailer_has_Sessao */
INSERT INTO trailer_has_sessao (Trailer_idTrailer, Sessao_idSessao) VALUES
(2,1),
(3,1),
(4,1),
(5,2),
(6,2),
(7,2),
(8,3),
(9,3),
(10,3),
(11,4),
(12,4),
(13,4),
(14,5),
(15,5),
(1,5),
(2,6),
(3,6),
(4,7),
(5,7),
(6,8);

use cinema;

Delete From cliente
Where idCliente = 16;

Update cliente
set nome = "Gustavo Henrique Almeida" 
Where idCliente = 9;

--  SELECT com LIKE
Select nome, cpf, metodoPagamento
From cliente
Where nome Like "F%";

-- SELECT com ORDER BY
Select idIngresso, valor, tipo
From Ingresso
Order By valor desc;

-- SELECT com GROUP BY e HAVING
Select Genero_idGenero, count(*)
From filme
Group By Genero_idGenero
Having count(*) > 1;


-- SELECT com JOIN com 2 tabelas
Select genero.nome, count(*)
From (filme join genero on filme.Genero_idGenero = genero.idGenero)
Group By genero.nome
Having count(*) > 1;

-- SELECT com JOIN com 3 tabelas
Select filme.nome, sessao.idioma, sessao.formato, sessao.data, sessao.horario, sala.nome, sala.tipo
From (sessao Join filme on sessao.Filme_idFilme = filme.idFilme) Join sala On sessao.Sala_idSala = sala.idSala;

-- SELECT com JOIN com 4 tabelas
Select filme.nome, genero.nome, sessao.idioma, sessao.formato, sessao.data, sessao.horario, sala.nome, sala.tipo
From ((sessao Join filme on sessao.Filme_idFilme = filme.idFilme) Join sala On sessao.Sala_idSala = sala.idSala) JOIN genero On filme.Genero_idGenero = genero.idGenero;

-- SELECT com JOIN com no mínimo 3 tabelas + GROUP BY + HAVING
Select genero.nome, count(*)
From ((sessao Join filme On sessao.Filme_idFilme = filme.idFilme) Join sala On sessao.Sala_idSala = sala.idSala) Join genero On filme.Genero_idGenero = genero.idGenero
Group by genero.nome
Having Count(*) > 2;

-- SELECT com JOIN com no mínimo 3 tabelas + GROUP BY (diferente do item 11) 
Select ingresso.tipo, count(*)
From ingresso Join cliente On ingresso.Cliente_idCliente = cliente.idCliente Join sessao_has_assento
On ingresso.Sessao_has_Assento_Sessao_idSessao = sessao_has_assento.Sessao_idSessao
AND ingresso.Sessao_has_Assento_Assento_idAssento = sessao_has_assento.Assento_idAssento
Group by ingresso.tipo;

-- SELECT com JOIN com no mínimo 2 tabelas + WHERE + GROUP BY + HAVING (diferente do item 11 e 12)
Select cliente.nome, Sum(ingresso.valor)
From ingresso Join cliente On ingresso.Cliente_idCliente = cliente.idCliente
Where cliente.nome Like '%ra'
Group By cliente.nome
Having Sum(ingresso.valor) > 15;


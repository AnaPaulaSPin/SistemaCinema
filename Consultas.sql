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
Select idGenero, count(*)
From filme
Group By idGenero
Having count(*) > 1;


-- SELECT com JOIN com 2 tabelas
Select g.nome, count(*)
From (filme f join genero g on f.idGenero = g.idGenero)
Group By g.nome
Having count(*) > 1;

-- SELECT com JOIN com 3 tabelas
Select f.nome, se.idioma, se.formato, se.data, se.horario, sa.nome, sa.tipo
From (sessao se Join filme f on se.idFilme = f.idFilme) Join sala sa On se.idSala = sa.idSala;

-- SELECT com JOIN com 4 tabelas
Select f.nome, g.nome, se.idioma, se.formato, se.data, se.horario, sa.nome, sa.tipo
From ((sessao se Join filme f on se.idFilme = f.idFilme) Join sala sa On se.idSala = sa.idSala) JOIN genero g On f.idGenero = g.idGenero;

-- SELECT com JOIN com no mínimo 3 tabelas + GROUP BY + HAVING
Select g.nome, count(*)
From ((sessao se Join filme f On se.idFilme = f.idFilme) Join sala sa On se.idSala = sa.idSala) Join genero g On f.idGenero = g.idGenero
Group by g.nome
Having Count(*) > 2;

-- SELECT com JOIN com no mínimo 3 tabelas + GROUP BY (diferente do item 11) 
Select i.tipo, count(*)
From ingresso i Join cliente c On i.idCliente = c.idCliente Join sessao_has_assento s
On i.idSessao = s.idSessao AND i.idAssento = s.idAssento
Group by i.tipo;

-- SELECT com JOIN com no mínimo 2 tabelas + WHERE + GROUP BY + HAVING (diferente do item 11 e 12)
Select c.nome, Sum(i.valor)
From ingresso i Join cliente c On i.idCliente = c.idCliente
Where c.nome Like '%ra'
Group By c.nome
Having Sum(i.valor) > 15;


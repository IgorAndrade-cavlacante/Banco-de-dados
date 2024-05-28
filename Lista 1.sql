#1
INSERT INTO livros (titulo, autor, categoria, isbn, editora, paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

#2
INSERT INTO livros (titulo, autor, ano_publicacao, status, categoria, isbn, editora, paginas, idioma)
VALUES 
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, 'disponível', 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, 'disponível', 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, 'disponível', 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

#3
INSERT INTO livros (titulo, autor, ano_publicacao, status, categoria, isbn, editora, paginas, idioma)
VALUES 
('O Despertar da Civilização', 'Emily Smith', 2023, 'disponível', 'História', '978-1234567890', 'Editora Fictícia', 300, 'Português');

#4
UPDATE livros
SET status = 'FALSE'
WHERE ano_publicacao < 2000;

#5
UPDATE livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

#6
UPDATE livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';

#7
UPDATE livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn = '978-0439708180';

#8
DELETE FROM livros
WHERE categoria = 'Terror';

#9
DELETE FROM livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;

#10
DELETE FROM livros
WHERE titulo = 'As Crônicas de Nárnia';

#11
DELETE FROM livros
WHERE editora = 'Penguin Books';

#12
SELECT *
FROM livros
WHERE paginas > 500;

#13
SELECT categoria, COUNT(*) AS total_de_livros
FROM livros
GROUP BY categoria;

#14
SELECT *
FROM livros
ORDER BY id
LIMIT 5;

#15
SELECT 
SUM(paginas) AS total_de_paginas,
AVG(paginas) AS media_de_paginas
FROM livros
WHERE categoria = 'Drama';

#16
SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM livros
WHERE status = 'disponível';

#17
SELECT 
MAX(ano_publicacao) AS livro_mais_recente,
MIN(ano_publicacao) AS livro_mais_antigo
FROM livros;

#18
SELECT *
FROM livros
ORDER BY ano_publicacao DESC;

#19
SELECT titulo
FROM livros
WHERE idioma = 'Inglês'
UNION
SELECT titulo
FROM livros
WHERE idioma = 'Português';

#20
SELECT *
FROM livros
WHERE autor = 'George Orwell';

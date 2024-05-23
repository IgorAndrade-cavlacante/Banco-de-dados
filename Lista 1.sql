#1
INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, num_paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

#2
INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, num_paginas, idioma)
VALUES 
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

#3
INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, num_paginas, idioma)
VALUES ('Pinoquio', 'Igor de moraes', 2000, TRUE, 'História', '000-0000000000', 'escrever e bom', 300, 'Inglês');

#4
UPDATE livros SET disponivel = FALSE WHERE ano_publicacao < 2000;

#5
UPDATE livros SET editora = 'Plume Books' WHERE titulo = '1984';

#6
UPDATE livros SET idioma = 'Inglês' WHERE editora = 'Penguin Books';

#7
UPDATE livros SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)' WHERE isbn = '978-0439708180';

#8
DELETE FROM livros WHERE categoria = 'Terror';

#9
DELETE FROM livros WHERE idioma = 'Francês' AND ano_publicacao < 1970;

#10
DELETE FROM livros WHERE titulo = 'As Crônicas de Nárnia';

#11
DELETE FROM livros WHERE editora = 'Penguin Books';

#12
SELECT * FROM livros WHERE num_paginas > 500;

#13
SELECT categoria, COUNT(*) AS total FROM livros GROUP BY categoria;

#14
SELECT * FROM livros LIMIT 5;

#15
SELECT SUM(num_paginas) AS total_paginas, AVG(num_paginas) AS media_paginas FROM livros WHERE categoria = 'Drama';

#16
SELECT AVG(ano_publicacao) AS media_ano_publicacao FROM livros WHERE disponivel = TRUE;

#17
SELECT MAX(ano_publicacao) AS mais_recente, MIN(ano_publicacao) AS mais_antigo FROM livros;

#18
SELECT * FROM livros ORDER BY ano_publicacao DESC;

#19
(SELECT titulo FROM livros WHERE idioma = 'Inglês')
UNION
(SELECT titulo FROM livros WHERE idioma = 'Português');

#20
SELECT * FROM livros WHERE autor = 'George Orwell';
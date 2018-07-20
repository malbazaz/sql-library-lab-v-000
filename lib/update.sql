
UPDATE species FROM characters GROUP BY characters.id DESC LIMIT 1 SET name = 'Martian';

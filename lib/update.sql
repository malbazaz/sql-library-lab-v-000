
UPDATE species FROM characters GROUP BY id DESC LIMIT 1 SET name = 'Martian';

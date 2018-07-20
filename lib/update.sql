"SELECT characters.species FROM characters WHERE id=(SELECT MAX(id) FROM characters) "
"UPDATE species FROM characters GROUP BY characters.id DESC LIMIT 1 SET name = 'Martian';"
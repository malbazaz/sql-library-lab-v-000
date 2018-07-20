def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books LEFT JOIN series ON books.series_id = series.id WHERE series.id=1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY motto ASC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, count(characters.species) AS count_species FROM characters GROUP BY species ORDER BY count_species DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors LEFT JOIN series ON authors.id = series.author_id LEFT JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series LEFT JOIN characters ON series.id = characters.series_id WHERE characters.species='human' ORDER BY characters.species DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.character_id) FROM characters LEFT JOIN character_books ON characters.id = character_books.character_id; "
end

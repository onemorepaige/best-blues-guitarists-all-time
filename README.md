# best-blues-guitarists-all-time

To create a database for the best blues guitarists of all time in PostgreSQL and add some test data, we first need to define the schema based on the entities and their relationships. Here's a basic outline of the schema:

Guitarists Table: Contains information about the guitarists.

guitarist_id (Primary Key)
name
birth_date
birth_place
biography
Albums Table: Contains information about the albums released by guitarists.

album_id (Primary Key)
title
release_year
guitarist_id (Foreign Key referencing guitarist_id in Guitarists Table)
Songs Table: Contains information about the songs included in albums.

song_id (Primary Key)
title
duration
album_id (Foreign Key referencing album_id in Albums Table)

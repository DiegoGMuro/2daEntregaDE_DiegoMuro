
-- Creacion de tabla en Amazon Redshift para almacenar datos de WallstreetBets-------------

CREATE TABLE wallstreetbets_data (
    no_of_comments INT,
    sentiment VARCHAR(50),
    sentiment_score FLOAT,
    ticker VARCHAR(10)
);
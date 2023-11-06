
-- Creacion de tabla en Amazon Redshift para almacenar datos de API de  WallstreetBets-------------

CREATE TABLE wallstreetbets_data (
    no_of_comments INT,
    sentiment VARCHAR(50),
    sentiment_score FLOAT,
    ticker VARCHAR(10)
);

DROP TABLE IF EXISTS wallstreetbets_data;

-- Modifico a TICKER como Primary Key-------------

CREATE TABLE wallstreetbets_data (
    no_of_comments INT,
    sentiment VARCHAR(50),
    sentiment_score FLOAT,
    ticker VARCHAR(10) PRIMARY KEY
);


select * from wallstreetbets_data


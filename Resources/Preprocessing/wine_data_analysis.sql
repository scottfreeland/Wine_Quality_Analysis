CREATE TABLE wine_quality (
     type VARCHAR(40) NOT NULL,
     fixed_acidity real NOT NULL,
	 volatile_acidity real NOT NULL,
	 citric_acid real NOT NULL,
	 residual_sugar real NOT NULL,
	 chlorides real NOT NULL,
	 free_sulfur_dioxide real NOT NULL,
	 total_sulfur_dioxide real NOT NULL,
	 density real NOT NULL,
	 ph real NOT NULL,
	 sulfates real NOT NULL,
	 alcohol real NOT NULL,
	 quality real NOT NULL
);

SELECT *
INTO white_wine_quality
FROM wine_quality
WHERE type LIKE '%white%'

SELECT *
INTO red_wine_quality
FROM wine_quality
WHERE type LIKE '%red%'
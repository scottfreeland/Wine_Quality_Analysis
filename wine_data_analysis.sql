CREATE TABLE wine_quality (
     type VARCHAR(40) NOT NULL,
     fixed_acidity VARCHAR(40) NOT NULL,
	 volatile_acidity VARCHAR(40) NOT NULL,
	 citric_acid VARCHAR(40) NOT NULL,
	 residual_sugar VARCHAR(40) NOT NULL,
	 chlorides VARCHAR(40) NOT NULL,
	 free_sulfur_dioxide VARCHAR(40) NOT NULL,
	 total_sulfur_dioxide VARCHAR(40) NOT NULL,
	 density VARCHAR(40) NOT NULL,
	 ph VARCHAR(40) NOT NULL,
	 sulfates VARCHAR(40) NOT NULL,
	 alcohol VARCHAR(40) NOT NULL,
	 quality VARCHAR(40) NOT NULL
);

SELECT *
INTO white_wine_quality
FROM wine_quality
WHERE type LIKE '%white%'

SELECT *
INTO red_wine_quality
FROM wine_quality
WHERE type LIKE '%red%'
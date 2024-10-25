#  Articles par ordre alphabétique par désignation
SELECT *
from article
ORDER BY designation ASC;

#	Articles dans l’ordre des prix décroissant
SELECT *
from article
ORDER BY prix DESC;

#	Articles qui sont des boulons et triés par ordre ascendant
SELECT *
FROM article
WHERE designation LIKE '%Boulon%'
ORDER BY designation ASC;
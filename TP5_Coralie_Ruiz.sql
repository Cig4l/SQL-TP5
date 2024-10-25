#  A
SELECT *
from article
ORDER BY designation ASC;

#	B
SELECT *
from article
ORDER BY prix DESC;

#	C
SELECT *
FROM article
WHERE designation LIKE '%Boulon%'
ORDER BY designation ASC;

# D
SELECT *
FROM article
WHERE designation LIKE '%sachet%';

# E
SELECT *
FROM article
WHERE LOWER(designation) LIKE '%sachet%';

# F
SELECT article.*, fournisseur.NOM
from article, fournisseur
WHERE article.ID_FOU = fournisseur.ID
ORDER BY fournisseur.NOM ASC, article.PRIX DESC;

# G
SELECT article.*
FROM article, fournisseur
WHERE article.ID_FOU = fournisseur.ID
AND fournisseur.NOM LIKE '%Dubois & Fils%';

# H
SELECT fournisseur.NOM, AVG(article.PRIX)
FROM article, fournisseur
WHERE article.ID_FOU = fournisseur.ID
AND fournisseur.NOM LIKE '%Dubois & Fils%';

# I
SELECT fournisseur.NOM, AVG(article.PRIX)
FROM article, fournisseur
WHERE article.ID_FOU = fournisseur.ID
GROUP BY fournisseur.NOM;

# J
SELECT *
FROM bon
WHERE bon.DATE_CMDE BETWEEN '2019-03-01 00:00:00' AND '2019-04-05 12:00:00';

# K
SELECT bon.*
FROM bon, compo, article
WHERE bon.ID = compo.ID_BON
AND compo.ID_ART = article.ID
AND article.DESIGNATION LIKE '%boulon%';

#L
SELECT bon.*, fournisseur.NOM
FROM bon, compo, article, fournisseur
WHERE bon.ID = compo.ID_BON
AND compo.ID_ART = article.ID
AND article.ID_FOU = fournisseur.ID
AND article.DESIGNATION LIKE '%boulon%';

# M
SELECT bon.*, SUM(article.PRIX)
FROM bon, compo, article
WHERE bon.ID = compo.ID
AND compo.ID_ART = article.ID
GROUP BY bon.ID;

# N
SELECT ID_BON, SUM(QTE) as 'Nombre d''articles'
FROM compo
GROUP BY id_bon;

# O
SELECT ID_BON, SUM(QTE) as 'Nombre d''articles'
FROM compo
GROUP BY id_bon
HAVING SUM(QTE) > 25;

# P
SELECT compo.ID_BON, SUM(compo.QTE * article.PRIX) as 'Prix total'
FROM compo, article, bon
WHERE bon.ID = compo.ID_BON
AND compo.ID_ART = article.ID
AND bon.DATE_CMDE BETWEEN '2019-04-01 00:00:00' AND '2019-04-30 23:59:59'
GROUP BY compo.id_bon;





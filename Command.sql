
-- Add

INSERT INTO User (email_User,username_User,password_User)

VALUES('email@gmail.com','testghnn','123456789');


-- Read

SELECT * FROM Article 

SELECT contenu_Article , datePub_Article FROM Article;

SELECT * FROM Article 

WHERE id_Article = 2;

--Delete

DELETE FROM Category WHERE id_Categ = 4;

DROP TABLE User ;

--Update 

UPDATE Commentaire  

SET id_comm = 3 

WHERE contenu_Comm = 'Its was a great Article thank you';

UPDATE Article 

SET title_Article = 'Article 45', contenu_Article = 'In this Article we will talk about ...'

WHERE id_Article = 3;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "User" (
	"id_User"	INTEGER,
	"email_User"	VARCHAR(50) NOT NULL UNIQUE,
	"username_User"	VARCHAR(50) NOT NULL UNIQUE,
	"password_User"	VARCHAR(50) NOT NULL,
	"id_Role"	INTEGER,
	FOREIGN KEY("id_Role") REFERENCES "Role"("id_Role"),
	PRIMARY KEY("id_User" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Role" (
	"id_Role"	INTEGER,
	"name_Role"	VARCHAR(50) NOT NULL UNIQUE,
	PRIMARY KEY("id_Role" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Category" (
	"id_Categ"	INTEGER,
	"name_Categ"	VARCHAR(50) NOT NULL UNIQUE,
	"id_subCateg"	INTEGER,
	FOREIGN KEY("id_subCateg") REFERENCES "Category"("id_Categ"),
	PRIMARY KEY("id_Categ" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Article" (
	"id_Article"	INTEGER,
	"title_Article"	VARCHAR(50),
	"contenu_Article"	TEXT,
	"datePub_Article"	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	"id_User"	INTEGER,
	"id_Categ"	INTEGER,
	"id_Comm"	INTEGER,
	FOREIGN KEY("id_Comm") REFERENCES "Commentaire"("id_Comm"),
	FOREIGN KEY("id_Categ") REFERENCES "Category"("id_Categ"),
	FOREIGN KEY("id_User") REFERENCES "User"("id_User"),
	PRIMARY KEY("id_Article" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Commentaire" (
	"id_Comm"	INTEGER,
	"contenu_Comm"	TEXT,
	"datePub_Comm"	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	"id_User"	INTEGER,
	"id_Article"	INTEGER,
	FOREIGN KEY("id_Article") REFERENCES "Article"("id_Article"),
	FOREIGN KEY("id_User") REFERENCES "User"("id_User"),
	PRIMARY KEY("id_Comm" AUTOINCREMENT)
);
INSERT INTO "User" VALUES (1,'test1@gmail.com','test1','123456789',1);
INSERT INTO "User" VALUES (2,'test2@gmail.com','test2','123456789',2);
INSERT INTO "User" VALUES (3,'test3@gmail.com','test3','123456789',1);
INSERT INTO "User" VALUES (4,'test4@gmail.com','test4','123456789',1);
INSERT INTO "User" VALUES (5,'test5@gmail.com','test5','123456789',2);
INSERT INTO "Role" VALUES (1,'Admin');
INSERT INTO "Role" VALUES (2,'User');
INSERT INTO "Category" VALUES (1,'IT',3);
INSERT INTO "Category" VALUES (2,'Food',1);
INSERT INTO "Category" VALUES (3,'Sport',5);
INSERT INTO "Category" VALUES (4,'Science',2);
INSERT INTO "Category" VALUES (5,'Sleep',4);
INSERT INTO "Article" VALUES (1,'Tadahh','HHenndikdjj','2024-05-02 21:11:15',3,2,3);
INSERT INTO "Article" VALUES (2,'dafccv','fezffff','2024-05-02 21:20:16',2,3,5);
INSERT INTO "Article" VALUES (3,'faddc','ffzazssss','2024-05-02 21:22:04',1,1,1);
INSERT INTO "Article" VALUES (4,'daaaaaa','cadaxxx','2024-05-02 21:22:34',5,4,4);
INSERT INTO "Article" VALUES (5,'reecccc','kiuuhh','2024-05-02 21:22:57',4,5,2);
INSERT INTO "Commentaire" VALUES (1,'Its was good','2024-05-02 21:12:52',5,1);
INSERT INTO "Commentaire" VALUES (2,'Nice','2024-05-02 21:19:14',2,3);
INSERT INTO "Commentaire" VALUES (3,'Hi','2024-05-02 21:21:38',1,2);
INSERT INTO "Commentaire" VALUES (4,'reddcc','2024-05-02 21:23:31',3,4);
INSERT INTO "Commentaire" VALUES (5,'rbtt','2024-05-02 21:23:51',4,5);
COMMIT;

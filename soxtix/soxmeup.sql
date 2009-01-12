BEGIN TRANSACTION;
CREATE TABLE "django_admin_log" (
    "id" integer NOT NULL PRIMARY KEY,
    "action_time" datetime NOT NULL,
    "user_id" integer NOT NULL,
    "content_type_id" integer NULL,
    "object_id" text NULL,
    "object_repr" varchar(200) NOT NULL,
    "action_flag" smallint unsigned NOT NULL,
    "change_message" text NOT NULL
);
INSERT INTO "django_admin_log" VALUES(1,'2009-01-11 22:11:09.302831',1,9,'1','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(2,'2009-01-11 22:11:29.638704',1,9,'2','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(3,'2009-01-11 22:11:39.122740',1,9,'3','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(4,'2009-01-11 22:11:49.477847',1,9,'4','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(5,'2009-01-11 22:11:57.044138',1,9,'5','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(6,'2009-01-11 22:12:09.576203',1,9,'6','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(7,'2009-01-11 22:12:19.521229',1,9,'7','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(8,'2009-01-11 22:12:37.553308',1,9,'8','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(9,'2009-01-11 22:12:48.232454',1,9,'9','Game object',1,'');
INSERT INTO "django_admin_log" VALUES(10,'2009-01-11 22:15:24.745968',1,9,'5','Game object',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(11,'2009-01-11 22:15:30.903317',1,9,'6','Game object',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(12,'2009-01-11 22:15:38.823988',1,9,'7','Game object',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(13,'2009-01-11 22:33:10.766837',1,10,'1','Friend object',1,'');
INSERT INTO "django_admin_log" VALUES(14,'2009-01-11 22:33:31.913741',1,10,'1','Friend object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(15,'2009-01-11 22:35:00.705169',1,10,'None','Friend object',3,'');
INSERT INTO "django_admin_log" VALUES(16,'2009-01-11 23:22:28.248456',1,10,'None','Rod',3,'');
INSERT INTO "django_admin_log" VALUES(17,'2009-01-11 23:22:53.812402',1,10,'None','Joy',3,'');
INSERT INTO "django_admin_log" VALUES(18,'2009-01-11 23:22:59.971787',1,10,'None','Joy',3,'');
CREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
);
INSERT INTO "auth_permission" VALUES(1,'Can add log entry',1,'add_logentry');
INSERT INTO "auth_permission" VALUES(2,'Can change log entry',1,'change_logentry');
INSERT INTO "auth_permission" VALUES(3,'Can delete log entry',1,'delete_logentry');
INSERT INTO "auth_permission" VALUES(4,'Can add permission',2,'add_permission');
INSERT INTO "auth_permission" VALUES(5,'Can change permission',2,'change_permission');
INSERT INTO "auth_permission" VALUES(6,'Can delete permission',2,'delete_permission');
INSERT INTO "auth_permission" VALUES(7,'Can add group',3,'add_group');
INSERT INTO "auth_permission" VALUES(8,'Can change group',3,'change_group');
INSERT INTO "auth_permission" VALUES(9,'Can delete group',3,'delete_group');
INSERT INTO "auth_permission" VALUES(10,'Can add user',4,'add_user');
INSERT INTO "auth_permission" VALUES(11,'Can change user',4,'change_user');
INSERT INTO "auth_permission" VALUES(12,'Can delete user',4,'delete_user');
INSERT INTO "auth_permission" VALUES(13,'Can add message',5,'add_message');
INSERT INTO "auth_permission" VALUES(14,'Can change message',5,'change_message');
INSERT INTO "auth_permission" VALUES(15,'Can delete message',5,'delete_message');
INSERT INTO "auth_permission" VALUES(16,'Can add content type',6,'add_contenttype');
INSERT INTO "auth_permission" VALUES(17,'Can change content type',6,'change_contenttype');
INSERT INTO "auth_permission" VALUES(18,'Can delete content type',6,'delete_contenttype');
INSERT INTO "auth_permission" VALUES(19,'Can add session',7,'add_session');
INSERT INTO "auth_permission" VALUES(20,'Can change session',7,'change_session');
INSERT INTO "auth_permission" VALUES(21,'Can delete session',7,'delete_session');
INSERT INTO "auth_permission" VALUES(22,'Can add site',8,'add_site');
INSERT INTO "auth_permission" VALUES(23,'Can change site',8,'change_site');
INSERT INTO "auth_permission" VALUES(24,'Can delete site',8,'delete_site');
INSERT INTO "auth_permission" VALUES(25,'Can add game',9,'add_game');
INSERT INTO "auth_permission" VALUES(26,'Can change game',9,'change_game');
INSERT INTO "auth_permission" VALUES(27,'Can delete game',9,'delete_game');
INSERT INTO "auth_permission" VALUES(28,'Can add friend',10,'add_friend');
INSERT INTO "auth_permission" VALUES(29,'Can change friend',10,'change_friend');
INSERT INTO "auth_permission" VALUES(30,'Can delete friend',10,'delete_friend');
CREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
);
CREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "password" varchar(128) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "is_superuser" bool NOT NULL,
    "last_login" datetime NOT NULL,
    "date_joined" datetime NOT NULL
);
INSERT INTO "auth_user" VALUES(1,'rod','','','rod@begbie.com','sha1$9bbd2$ab006b5addc63f3349fdf138f53f1231962b61f0',1,1,1,'2009-01-11 22:04:43.199932','2009-01-11 21:56:07.334727');
CREATE TABLE "auth_message" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "message" text NOT NULL
);
CREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
);
INSERT INTO "django_content_type" VALUES(1,'log entry','admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'permission','auth','permission');
INSERT INTO "django_content_type" VALUES(3,'group','auth','group');
INSERT INTO "django_content_type" VALUES(4,'user','auth','user');
INSERT INTO "django_content_type" VALUES(5,'message','auth','message');
INSERT INTO "django_content_type" VALUES(6,'content type','contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(7,'session','sessions','session');
INSERT INTO "django_content_type" VALUES(8,'site','sites','site');
INSERT INTO "django_content_type" VALUES(9,'game','soxmeup','game');
INSERT INTO "django_content_type" VALUES(10,'friend','soxmeup','friend');
CREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);
INSERT INTO "django_session" VALUES('4308efdfa6be90585cd04a9bdabff899','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjA5YTE5ZjcwOWY3OGE5YTg2NGM0
OWNkNGMyMDc0M2Mw
','2009-01-25 22:04:43.235441');
CREATE TABLE "django_site" (
    "id" integer NOT NULL PRIMARY KEY,
    "domain" varchar(100) NOT NULL,
    "name" varchar(50) NOT NULL
);
INSERT INTO "django_site" VALUES(1,'example.com','example.com');
CREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
);
CREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
);
CREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
);
CREATE TABLE "soxmeup_game" (
    "id" integer NOT NULL PRIMARY KEY,
    "date" date NOT NULL,
    "team" varchar(100) NOT NULL
);
INSERT INTO "soxmeup_game" VALUES(1,'2009-04-08','Tampa Bay Rays');
INSERT INTO "soxmeup_game" VALUES(2,'2009-04-22','Minnesota Twins');
INSERT INTO "soxmeup_game" VALUES(3,'2009-04-25','New York Yankees');
INSERT INTO "soxmeup_game" VALUES(4,'2009-05-09','Tampa Bay Rays');
INSERT INTO "soxmeup_game" VALUES(5,'2009-06-17','Florida Marlins');
INSERT INTO "soxmeup_game" VALUES(6,'2009-07-06','Oakland Athletics');
INSERT INTO "soxmeup_game" VALUES(7,'2009-09-09','Baltimore Orioles');
INSERT INTO "soxmeup_game" VALUES(8,'2009-09-28','Toronto Blue Jays');
INSERT INTO "soxmeup_game" VALUES(9,'2009-10-03','Cleveland Indians');
CREATE TABLE "soxmeup_friend" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "email" varchar(75) NOT NULL,
    "first_choice_id" integer NOT NULL REFERENCES "soxmeup_game" ("id"),
    "created_on" datetime NOT NULL,
    "last_update" datetime NOT NULL,
    "edit_key" varchar(50) NOT NULL UNIQUE
);
CREATE TABLE "soxmeup_friend_choices" (
    "id" integer NOT NULL PRIMARY KEY,
    "friend_id" integer NOT NULL REFERENCES "soxmeup_friend" ("id"),
    "game_id" integer NOT NULL REFERENCES "soxmeup_game" ("id"),
    UNIQUE ("friend_id", "game_id")
);
CREATE INDEX "django_admin_log_user_id" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_content_type_id" ON "django_admin_log" ("content_type_id");
CREATE INDEX "auth_permission_content_type_id" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_message_user_id" ON "auth_message" ("user_id");
CREATE INDEX "soxmeup_friend_first_choice_id" ON "soxmeup_friend" ("first_choice_id");
COMMIT;

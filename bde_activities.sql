CREATE TABLE
    bde (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nom VARCHAR(20),
        prenom VARCHAR(20),
        email VARCHAR(50),
        role VARCHAR(20),
        date_adhesion DATE
    ) ENGINE = INNODB;

CREATE TABLE
    participant (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nom VARCHAR(20),
        prenom VARCHAR(20),
        statu VARCHAR(20)
    ) ENGINE = INNODB;

CREATE TABLE
    sponsor (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nom_entreprise VARCHAR(50),
        montant DECIMAL
    ) ENGINE = INNODB;

CREATE TABLE
    contact_principale (
        id INT PRIMARY KEY AUTO_INCREMENT,
        numero_telephone INT,
        email VARCHAR(50),
        sponsor_id INT,
        FOREIGN KEY (sponsor_id) REFERENCES sponsor (id)
    ) ENGINE = INNODB;

CREATE TABLE
    evenement (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nom VARCHAR(20),
        date_evenement DATE,
        budget DECIMAL,
        bde_id INT,
        sponsor_id INT,
        participant_id INT,
        FOREIGN KEY (bde_id) REFERENCES bde (id),
        FOREIGN KEY (sponsor_id) REFERENCES sponsor (id),
        FOREIGN KEY (participant_id) REFERENCES participant (id)
    ) ENGINE = INNODB;

INSERT INTO
    bde (
        `id`,
        `nom`,
        `prenom`,
        `email`,
        `role`,
        `date_adhesion`
    )
VALUES
    (
        1,
        "ait bhou",
        "abdellah",
        "abdellahbahou@gmail.com",
        "president",
        "2025-10-04"
    );

INSERT INTO
    `bde` (`nom`, `prenom`, `email`, `role`, `date_adhesion`)
VALUES
    (
        "ait bhou",
        "abderrahim",
        "abderrahimbahou@gmail.com",
        "semi",
        "2025-11-03"
    ),
    (
        "nofati",
        "karim",
        "kaimnofati@gmail.com",
        "tresorier",
        "2025-11-11"
    );

INSERT INTO
    evenement (
        `nom`,
        `date_evenement`,
        `budget`,
        `bde_id`,
        `sponsor_id`,
        `participant_id`
    )
VALUES
    (
        "journe d'integration",
        "2025-10-01",
        3400,
        1,
        1,
        1
    ),
    ("hackaton", "2025-11-30", 16000, 2, 2, 2);


INSERT INTO
    `bde` (`nom`, `prenom`, `email`, `role`, `date_adhesion`)
VALUES
    ("n1","m1","mn1@gmail.com","r1","2025-11-01"),
    ("n2","m2","mn2@gmail.com","r2","2025-11-02"),
    ("n3","m3","mn3@gmail.com","r3","2025-11-03"),
    ("n4","m4","mn4@gmail.com","r4","2025-11-04"),
    ("n5","m5","mn5@gmail.com","r5","2025-11-05"),
    ("n6","m6","mn6@gmail.com","r6","2025-11-06"),
    ("n7","m7","mn7@gmail.com","r7","2025-11-07"),
    ("n8","m8","mn8@gmail.com","r8","2025-11-08"),
    ("n9","m9","mn9@gmail.com","r9","2025-11-09"),
    ("n10","m10","mn10@gmail.com","r10","2025-11-10"),
    ("n11","m11","mn11@gmail.com","r11","2025-11-11"),
    ("n12","m12","mn12@gmail.com","r12","2025-11-12"),
    ("n13","m13","mn13@gmail.com","r13","2025-11-13"),
    ("n16","m14","mn14@gmail.com","r14","2025-11-14"),
    ("n17","m15","mn15@gmail.com","r15","2025-11-15"),
    ("n18","m16","mn16@gmail.com","r16","2025-11-16"),
    ("n19","m17","mn17@gmail.com","r17","2025-11-17");

INSERT INTO participant (`id`,`nom`,`prenom`,`statu`) VALUES (1,"p1","pr1","r1");

INSERT INTO participant (`nom`,`prenom`,`statu`) VALUES
("p2","pr2","r2"),
("p3","pr3","r3"),
("p4","pr4","r4"),
("p5","pr5","r5"),
("p6","pr6","r6"),
("p7","pr7","r7"),
("p8","pr8","r8"),
("p9","pr9","r9"),
("p10","pr10","r10"),
("p11","pr11","r11"),
("p12","pr12","r12"),
("p13","pr13","r13"),
("p14","pr14","r14"),
("p15","pr15","r15"),
("p16","pr16","r16"),
("p17","pr17","r17"),
("p18","pr18","r18"),
("p19","pr19","r19"),
("p20","pr20","r20");

INSERT INTO  sponsor (`nom_entreprise`,`montant`) VALUES 
("e1",567),
("e2",3343),
("e3",4345),
("e4",535),
("e5",5136),
("e6",883),
("e7",1929),
("e8",373849),
("e9",0239),
("e10",456466),
("e11",4848),
("e12",456992),
("e13",456),
("e14",4565),
("e15",45600),
("e16",4444),
("e17",4546),
("e18",4569),
("e19",4536),
("e20",45226);


-- INSERT INTO evenement (`nom`,`date_evenement`,`budget`,`bde_id`,`sponsor_id`,`participant_id`)
-- VALUES
-- ("E1","2025-11-10",66831,1,1,1),
-- ("E2","2025-11-11",66832,2,2,2),
-- ("E3","2025-11-12",66833,3,3,3),
-- ("E4","2025-11-13",66834,4,4,4),
-- ("E5","2025-11-14",66835,5,5,5),
-- ("E6","2025-11-15",66836,6,6,6),
-- ("E7","2025-11-16",66837,7,7,7),
-- ("E8","2025-11-17",66838,8,8,8),
-- ("E9","2025-11-18",66839,9,9,9),
-- ("E10","2025-11-19",2831,10,10,10),
-- ("E11","2025-11-20",2832,12,12,12),
-- ("E12","2025-11-21",2833,11,11,11),
-- ("E13","2025-11-22",2834,13,13,13),
-- ("E14","2025-11-23",2835,14,14,14),
-- ("E15","2025-11-24",2836,15,15,15),
-- ("E16","2025-11-25",2837,16,16,16),
-- ("E17","2025-11-26",2838,17,17,17),
-- ("E18","2025-11-27",2839,18,18,18),
-- ("E19","2025-11-28",2841,19,19,19),
-- ("E20","2025-11-29",2842,20,20,20);

INSERT INTO evenement (`nom`,`date_evenement`,`budget`)
VALUES
("E1","2025-11-10",66831),
("E2","2025-11-11",66832),
("E3","2025-11-12",66833),
("E4","2025-11-13",66834),
("E5","2025-11-14",66835),
("E6","2025-11-15",66836),
("E7","2025-11-16",66837),
("E8","2025-11-17",66838),
("E9","2025-11-18",66839),
("E10","2025-11-19",2831),
("E11","2025-11-20",2832),
("E12","2025-11-21",2833),
("E13","2025-11-22",2834),
("E14","2025-11-23",2835),
("E15","2025-11-24",2836),
("E16","2025-11-25",2837),
("E17","2025-11-26",2838),
("E18","2025-11-27",2839),
("E19","2025-11-28",2841),
("E20","2025-11-29",2842);

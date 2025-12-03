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
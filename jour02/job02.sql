-- Création de la table "etage"
CREATE TABLE etage (
    id INT AUTO_INCREMENT PRIMARY KEY,   -- Champ id avec auto-incrément et clé primaire
    nom VARCHAR(255),                    -- Champ nom de type VARCHAR de taille 255
    numero INT,                          -- Champ numero de type INT
    superficie INT                       -- Champ superficie de type INT
);

-- Création de la table "salle"
CREATE TABLE salle (
    id INT AUTO_INCREMENT PRIMARY KEY,   -- Champ id avec auto-incrément et clé primaire
    nom VARCHAR(255),                    -- Champ nom de type VARCHAR de taille 255
    id_etage INT,                        -- Champ id_etage de type INT (clé étrangère vers la table "etage")
    capacite INT,                        -- Champ capacite de type INT
    FOREIGN KEY (id_etage) REFERENCES etage(id) -- Définition de la clé étrangère liant la table "salle" à la table "etage"
);

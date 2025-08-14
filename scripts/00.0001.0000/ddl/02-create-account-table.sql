CREATE TABLE IF NOT EXISTS Account (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    code CHAR(36) NOT NULL, -- Same code as AuthService user
    gender_id INT UNSIGNED,
    username VARCHAR(50) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    biography TEXT,
    date_of_birth DATE,
    weight DECIMAL(5,2),
    height DECIMAL(5,2),
    private BOOLEAN DEFAULT FALSE,
    profile_picture VARCHAR(255),
    deleted BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (gender_id) REFERENCES Gender(id),
    UNIQUE KEY up_account_code (code)
);
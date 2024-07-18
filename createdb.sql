-- Create Users table
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50),
    email VARCHAR(100),
    balance FLOAT
);

-- Insert sample data into Users table
INSERT INTO Users (username, password, email, balance)
VALUES
    ('user1', 'password1', 'user1@example.com', 1000.0),
    ('user2', 'password2', 'user2@example.com', 1500.0),
    ('user3', 'password3', 'user3@example.com', 2000.0);

-- Create Transactions table
CREATE TABLE Transactions (
    transaction_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    transaction_type VARCHAR(10),
    amount FLOAT,
    timestamp TIMESTAMP
);

-- Insert sample data into Transactions table
INSERT INTO Transactions (user_id, transaction_type, amount, timestamp)
VALUES
    (1, 'deposit', 500.0, NOW()),
    (2, 'deposit', 1000.0, NOW()),
    (3, 'deposit', 1500.0, NOW()),
    (1, 'withdrawal', 200.0, NOW()),
    (2, 'withdrawal', 300.0, NOW());

-- Create Games table
CREATE TABLE Games (
    game_id SERIAL PRIMARY KEY,
    game_name VARCHAR(100),
    description TEXT,
    min_bet FLOAT,
    max_bet FLOAT
);

-- Insert sample data into Games table
INSERT INTO Games (game_name, description, min_bet, max_bet)
VALUES
    ('Blackjack', 'Classic casino card game', 10.0, 1000.0),
    ('Roulette', 'Popular casino table game', 5.0, 500.0),
    ('Slots', 'One of the most played casino games', 1.0, 100.0);

-- Create User_Game_Record table
CREATE TABLE User_Game_Record (
    record_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    game_id INTEGER REFERENCES Games(game_id),
    bet_amount FLOAT,
    result VARCHAR(10),
    timestamp TIMESTAMP
);

-- Insert sample data into User_Game_Record table
INSERT INTO User_Game_Record (user_id, game_id, bet_amount, result, timestamp)
VALUES
    (1, 1, 50.0, 'win', NOW()),
    (2, 2, 20.0, 'loss', NOW()),
    (3, 3, 5.0, 'win', NOW());

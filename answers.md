
**List all users having 3 deposits or more**

  

    SELECT u.user_id, u.username
    
    FROM Users u
    
    JOIN (
    
    SELECT user_id, COUNT(*) AS num_deposits
    
    FROM Transactions
    
    WHERE transaction_type = 'deposit'
    
    GROUP BY user_id
    
    HAVING COUNT(*) >= 3
    
    ) t ON u.user_id = t.user_id;

  

**List all users having only 1 withdrawal**

  

    SELECT u.user_id, u.username
    
    FROM Users u
    
    JOIN (
    
    SELECT user_id, COUNT(*) AS num_withdrawals
    
    FROM Transactions
    
    WHERE transaction_type = 'withdrawal'
    
    GROUP BY user_id
    
    HAVING COUNT(*) = 1
    
    ) t ON u.user_id = t.user_id;

  

**List 3 users that have made the highest deposits**

  

    SELECT u.user_id, u.username, SUM(t.amount) AS total_deposits
    
    FROM Users u
    
    JOIN Transactions t ON u.user_id = t.user_id
    
    WHERE t.transaction_type = 'deposit'
    
    GROUP BY u.user_id, u.username
    
    ORDER BY total_deposits DESC
    
    LIMIT 3;

  

**List all deposits for users. Display UserId, UserName, DepositDate, DepositAmount**

  

    SELECT u.user_id, u.username, t.timestamp AS deposit_date, t.amount AS deposit_amount
    
    FROM Users u
    
    JOIN Transactions t ON u.user_id = t.user_id
    
    WHERE t.transaction_type = 'deposit';

  

**Calculate balances of all users**

  

    SELECT user_id, username,
    
    (SELECT COALESCE(SUM(amount), 0) FROM Transactions WHERE user_id = u.user_id AND transaction_type = 'deposit') -
    
    (SELECT COALESCE(SUM(amount), 0) FROM Transactions WHERE user_id = u.user_id AND transaction_type = 'withdrawal') AS balance
    
    FROM Users u;


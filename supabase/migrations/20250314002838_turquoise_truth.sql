/*
# Additional Account Constraints

1. Changes
   - Add minimum balance constraint
   - Add currency validation
   - Add account type validation
*/

-- Add check constraint for minimum balance based on account type
ALTER TABLE accounts
ADD CONSTRAINT check_minimum_balance
CHECK (
    (account_type = 'SAVINGS' AND balance >= 100.00) OR
    (account_type = 'CHECKING' AND balance >= 0.00) OR
    (account_type = 'INVESTMENT' AND balance >= 1000.00)
);

-- Add valid currencies constraint
ALTER TABLE accounts
ADD CONSTRAINT valid_currency
CHECK (currency IN ('USD', 'EUR', 'GBP', 'JPY', 'CHF', 'AUD', 'CAD'));

-- Add valid account types constraint
ALTER TABLE accounts
ADD CONSTRAINT valid_account_type
CHECK (account_type IN ('SAVINGS', 'CHECKING', 'INVESTMENT', 'BUSINESS'));
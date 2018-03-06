class BankAccount

    attr_reader :balance
    @@minimum_balance = 50
    @@overdraft_fee = 35
    def initialize(balance, name)
        if balance < @@minimum_balance
            raise ArgumentError
        end
        
        if @withdraw > @balance 
           @balance -= @@overdraft_fee
        end
        @balance = balance
        @name = name
    end
    
    def deposit(amount)
        @balance += amount
    end
    
    def withdraw(amount)
        @balance -= amount
    end
    
    def transfer(amount, bank_account)
        withdraw(amount)
        bank_account.deposit(amount)
    end
    
    def self.minimum_balance(amount)
        @@minimum_balance = amount
    end
    
    def self.overdraft_fee(amount)
        @@overdraft_fee = amount
    end
end

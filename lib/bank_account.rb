class BankAccount
    attr_accessor :balance, :status

    def initialize(name, balance = 1000, status = "open")
        @name = name 
        @balance = balance  
        @status = status
    end 

    def name
        @name 
    end 

    def balance 
        @balance
    end 

    def status 
        @status 
    end 

    def deposit(new_balance)
        @balance = @balance + new_balance
    end 

    def display_balance
         "Your balance is $#{self.balance}."
    end 

    def valid?
        if self.balance > 0 && status == "open"
            true
        else 
            false 
        end 
    end 
    
    def close_account
        self.status = "closed"
    end 
end

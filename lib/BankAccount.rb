#Siwat Thumvilai	5631378321

class BankAccount

	def initialize(amount)
		@balance = amount
		@accountName = "Mick"
		@accountNumber = "5631378321"
		@transaction = 0
	end

	def withdraw(cash)
		@balance -= cash
		@transaction += 1
		return @balance
	end

	def deposite(cash)
		@balance += cash
		@transaction += 1
		return @balance
	end

	def transactionMade()
		return @transaction
	end

	def changeName(name)
		@accountName = name
		return @accountName
	end

end
require "spec_helper"
require "BankAccount"

describe BankAccount do
  	describe "#check_balance" do
    	it "deposite behavior" do
   	  		account = BankAccount.new(10000)
      		totalBalance = account.deposite(5000)
      		expect(totalBalance).to eq(15000)
    	end
    	it "withdraw behavior" do
   	  		account = BankAccount.new(10000)
      		totalBalance = account.withdraw(2500)
      		expect(totalBalance).to eq(7500)
    	end
    	it "transaction counter behavior" do
   	  		account = BankAccount.new(10000)
   	  		account.withdraw(3000)
   	  		account.deposite(3000000)
   	  		account.withdraw(100000000)
      		totalTransaction = account.transactionMade
      		expect(totalTransaction).to eq(3)
    	end
    	it "change account name behavior" do
   	  		account = BankAccount.new(10000)
      		accountName = account.changeName("Aj.Pac")
      		expect(accountName).to eq("Aj.Pac")
    	end
	end
end
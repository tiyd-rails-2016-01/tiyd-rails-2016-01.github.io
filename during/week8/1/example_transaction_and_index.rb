# This goes in a model in a Rails app.

def transfer(a, b, amount)
  Account.transaction do
    a.withdraw(amount)
    b.deposit(amount)
  end
end

# This goes in a migration in a Rails app.

add_index :people, :name

class Car < ActiveRecord::Base
    has_many :transactions
    has_many :drivers, through: :transactions

end
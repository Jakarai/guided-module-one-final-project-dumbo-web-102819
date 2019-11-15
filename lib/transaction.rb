class Transaction < ActiveRecord::Base
    belongs_to :drivers
    belongs_to :cars

end
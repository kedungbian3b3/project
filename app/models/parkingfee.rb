class Parkingfee < ApplicationRecord
    validates_presence_of :numtime, :money
    validates_numericality_of :money
    has_many :parkingstatus
end

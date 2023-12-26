class Staff < ApplicationRecord
    validates_presence_of :name, :staffid
    validates_uniqueness_of :staffid
    validates_numericality_of :staffid
    has_many :parkingstatus
end

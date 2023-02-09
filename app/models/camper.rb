class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups
    validates :name, presence: true
    validates :age, numericality: {in: 0..18}
end

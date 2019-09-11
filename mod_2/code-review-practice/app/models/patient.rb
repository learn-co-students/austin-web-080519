class Patient < ApplicationRecord
    belongs_to :doctor
    validates :name, length: { minimum:5 }
    validates :age, numericality: {less_than: 50}
end

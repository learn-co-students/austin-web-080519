class Patient < ApplicationRecord
    validates :name, uniqueness: true
    belongs_to :doctor
end

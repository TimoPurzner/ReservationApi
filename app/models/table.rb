class Table < ApplicationRecord
    has_many :reservations, through: :reservations_tables
end

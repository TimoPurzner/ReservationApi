class Reservation < ApplicationRecord
    has_many :tables, through: :reservations_tables
end

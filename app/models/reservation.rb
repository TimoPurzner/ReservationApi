class Reservation < ApplicationRecord
    has_many :reservation_tables
    has_many :tables, through: :reservation_tables
end

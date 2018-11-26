class Zone < ApplicationRecord
    validates :name, :presence => true
    validates :adress, :presence => true
end

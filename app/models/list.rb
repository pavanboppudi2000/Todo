class List < ApplicationRecord
    validates :title, presence: true
    validates :due, presence: true
    validates :note, presence: true
    validates :priority, presence: true
end

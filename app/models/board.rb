class Board < ApplicationRecord
    validates :title, presence: true, length: {maximum: 40}
    validates :detail, length: {maximum: 2000}
    validates :is_completed, inclusion: [true, false]
end

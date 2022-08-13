class Todo < ApplicationRecord
    validates :content, presence: true, length: {maximum: 140}
    validates :detail, length: {maximum: 140}
    validates :is_completed, inclusion: [true, false]
    validates :is_editing, inclusion: [true, false]
end

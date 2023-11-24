class Category < ApplicationRecord
    belongs_to :user
    has_many :category_expenditures, dependent: :destroy
    has_many :expenditures, through: :category_expenditures
    has_one_attached :icon
  
    validates :name, presence: true
end

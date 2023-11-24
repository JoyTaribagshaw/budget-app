class Expenditure < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :category_expenditures, dependent: :destroy
  has_many :categories, through: :category_expenditures
  has_one_attached :icon

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0.0 }
end

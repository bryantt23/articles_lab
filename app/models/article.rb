class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :content, length: { minimum: 2 }, presence: true
end

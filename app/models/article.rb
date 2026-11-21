class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 2 }, presence: true
end

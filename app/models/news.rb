class News < ApplicationRecord
  validates :name, :content, presence: true
end

class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredient_items
  has_many :ingredients, :through => :ingredient_items
  default_scope -> { order('created_at DESC') }
  validates :name, presence: true, length: { maximum: 255 }
  validates :content, presence: true
  validates :user_id, presence: true
end
class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredient_items
  has_many :ingredients, :through => :ingredient_items
  has_many :tags, as: :taggable
  has_attached_file :picture, :styles => {large: '940x', medium: '620x', thumb: '180x135'} #940 width, 620 width, 180x135 thumb
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  default_scope -> { order('created_at DESC') }
  validates :name, presence: true, length: { maximum: 255 }
  validates :content, presence: true
  validates :user_id, presence: true

  # Returns recipes from the users being followed by the given user.
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end

end
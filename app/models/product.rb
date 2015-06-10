class Product < ActiveRecord::Base
	include PgSearch
	extend FriendlyId

	has_many :purchases
	
	mount_uploader :imagen, ImagenUploader

	friendly_id :name, use: [:slugged, :finders]

	pg_search_scope :search_by_name, against: [:name]

  def bought_by?(user)
    self.user_purchases.include? user
  end
end

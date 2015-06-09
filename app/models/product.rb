class Product < ActiveRecord::Base
	include PgSearch
	extend FriendlyId
	
	mount_uploader :imagen, ImagenUploader

	has_many :purchases

	friendly_id :name, use: [:slugged, :finders]

	pg_search_scope :search_by_name, against: [:name]
end

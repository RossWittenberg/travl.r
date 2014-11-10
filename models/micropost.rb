class Micropost <ActiveRecord::Base
	belongs_to :country
	belongs_to :author
	has_and_belongs_to_many :tags
	has_many :images, dependent: :destroy
end		
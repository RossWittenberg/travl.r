class Micropost <ActiveRecord::Base
	has_and_belongs_to_many :tags,
	belongs_to :country,
	belongs_to :author,
	has_many :images, dependent: :destroy
end		

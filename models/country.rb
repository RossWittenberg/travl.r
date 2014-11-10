class Country < ActiveRecord::Base
	has_many :microposts, dependent: :destroy
	has_many :images , dependent: :destroy
end	


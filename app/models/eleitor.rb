class Eleitor < ActiveRecord::Base
	has_one :voto
	validates :titulo, presence: true, uniqueness: true
	paginates_per 3
end

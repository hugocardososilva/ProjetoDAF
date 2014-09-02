class Partido < ActiveRecord::Base
	has_many :candidato
	paginates_per 3
end

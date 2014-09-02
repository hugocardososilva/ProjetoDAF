class Candidato < ActiveRecord::Base
	belongs_to :partido
	has_many :votos
	validates :numero, presence: true , length:{is: 2}, numericality:{only_integer: true}, uniqueness: true
	validates_presence_of :partido_id
	validates_associated :partido
	paginates_per 3
	#validates_presence_of :numero


end

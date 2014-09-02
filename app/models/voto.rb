class Voto < ActiveRecord::Base
	belongs_to :eleitor
	belongs_to :candidato
	validates_presence_of  :candidato_id
	validates_associated :eleitor, :candidato
	validates :eleitor_id, presence: true, uniqueness: true
	paginates_per 3
end


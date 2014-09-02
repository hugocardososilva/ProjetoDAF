class Addcolunaparavotos < ActiveRecord::Migration
  def change
  	add_column :votos, :eleitor_id, :integer
    add_column :votos, :candidato_id, :integer
  end
end

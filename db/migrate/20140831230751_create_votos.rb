class CreateVotos < ActiveRecord::Migration
 def change
    create_table :votos do |t|
     # t.integer :candidato_id
    #  t.integer :eleitor_id
      t.date :data

      t.timestamps

    end
   	#add_foreign_key :votos, :candidatos
    #add_foreign_key :votos, :eleitors
  end
end

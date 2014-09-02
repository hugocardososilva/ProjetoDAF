class CreateEleitors < ActiveRecord::Migration
  def change
    create_table :eleitors do |t|
      t.string :nome
      t.integer :titulo
      t.string :endereco
      t.integer :telefone
      t.string :email
      t.timestamps

    end
   # add_foreign_key :eleitors, :partidos
  end
end

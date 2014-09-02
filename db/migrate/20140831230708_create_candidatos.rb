class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.integer :numero
      t.string :nome
      t.integer :partido_id

      t.timestamps
    end
  end
end

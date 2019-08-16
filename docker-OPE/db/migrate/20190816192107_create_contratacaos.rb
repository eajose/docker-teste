class CreateContratacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :contratacaos do |t|
      t.string :Data_admissao
      t.string :date
      t.date :Data_demissao
      t.integer :Registro_funcionario

      t.timestamps
    end
  end
end

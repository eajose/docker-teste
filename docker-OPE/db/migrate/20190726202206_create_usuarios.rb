class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :rails
      t.string :generate
      t.string :scaffold
      t.string :User
      t.string :Nome_Completo
      t.integer :Idade
      t.string :CPF
      t.date :Data_de_Nascimento

      t.timestamps
    end
  end
end

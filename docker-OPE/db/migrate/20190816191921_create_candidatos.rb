class CreateCandidatos < ActiveRecord::Migration[5.2]
  def change
    create_table :candidatos do |t|
      t.string :Login
      t.string :Senha
      t.string :CPF

      t.timestamps
    end
  end
end

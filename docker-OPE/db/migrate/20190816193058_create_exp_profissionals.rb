class CreateExpProfissionals < ActiveRecord::Migration[5.2]
  def change
    create_table :exp_profissionals do |t|
      t.string :Nome_Empresa
      t.string :Cargo
      t.date :Data_admissao
      t.date :Data_saida

      t.timestamps
    end
  end
end

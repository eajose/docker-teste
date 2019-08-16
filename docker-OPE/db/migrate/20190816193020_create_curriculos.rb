class CreateCurriculos < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculos do |t|
      t.string :Nome_Completo
      t.date :Data_Nascimento
      t.string :RG
      t.string :CPF
      t.string :Email
      t.string :Telefone
      t.string :Logradouro
      t.string :Cidade
      t.string :Estado
      t.string :UF
      t.string :CEP
      t.string :Formacao
      t.string :Curso_Complementar
      t.string :ExpProfissional

      t.timestamps
    end
  end
end

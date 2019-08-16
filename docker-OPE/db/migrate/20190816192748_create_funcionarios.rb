class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios do |t|
      t.integer :Codigo
      t.string :Nome
      t.string :Departamento

      t.timestamps
    end
  end
end

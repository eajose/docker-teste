class CreateProcessoSeletivos < ActiveRecord::Migration[5.2]
  def change
    create_table :processo_seletivos do |t|
      t.date :Agenda
      t.string :Status
      t.string :Lista_candidatos
      t.string :Nome_processo

      t.timestamps
    end
  end
end

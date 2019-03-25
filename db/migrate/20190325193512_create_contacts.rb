class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :nome
      t.string :email
      t.references :kind, foreign_key: true
      t.text :rmk

      t.timestamps
    end
  end
end

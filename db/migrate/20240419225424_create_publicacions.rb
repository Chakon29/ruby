class CreatePublicacions < ActiveRecord::Migration[7.1]
  def change
    create_table :publicacions do |t|
      t.string :titulo
      t.text :body

      t.timestamps
    end
  end
end

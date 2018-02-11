class CreateThreews < ActiveRecord::Migration[5.1]
  def change
    create_table :threews do |t|
      t.string :title
      t.string :details

      t.timestamps
    end
  end
end

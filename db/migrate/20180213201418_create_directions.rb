class CreateDirections < ActiveRecord::Migration[5.1]
  def change
    create_table :directions do |t|
      t.string :topic_date
      t.string :topic_theme
      t.string :event_date
      t.string :event_detail

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :month
      t.string :country
      t.text :diary

      t.timestamps
    end
  end
end

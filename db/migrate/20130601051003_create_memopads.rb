class CreateMemopads < ActiveRecord::Migration
  def change
    create_table :memopads do |t|
      t.string :title
      t.string :comment

      t.timestamps
    end
  end
end

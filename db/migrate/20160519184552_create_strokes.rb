class CreateStrokes < ActiveRecord::Migration
  def change
    create_table :strokes do |t|
      t.references :user, index: true
      t.references :dragon, index: true
      t.string :name
      t.string :kind

      t.timestamps
    end
  end
end

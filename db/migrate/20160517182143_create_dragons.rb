class CreateDragons < ActiveRecord::Migration
  def change
    create_table :dragons do |t|
      t.references :user, index: true
      t.string :name
      t.string :race
      t.string :gender

      t.timestamps
    end
  end
end

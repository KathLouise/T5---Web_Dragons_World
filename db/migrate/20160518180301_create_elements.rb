class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.references :user, index: true
      t.references :dragon, index: true
      t.string :name

      t.timestamps
    end
  end
end

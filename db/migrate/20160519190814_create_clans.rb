class CreateClans < ActiveRecord::Migration
  def change
    create_table :clans do |t|
      t.references :user, index: true
      t.references :dragon, index: true
      t.string :name
      t.string :species

      t.timestamps
    end
  end
end

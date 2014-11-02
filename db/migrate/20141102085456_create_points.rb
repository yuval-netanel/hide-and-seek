class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.decimal :longtitude, {:precision=>10, :scale=>6}
      t.decimal :latitude, {:precision=>10, :scale=>6}
      t.string :question
      t.integer :order

      t.timestamps
    end
  end
end

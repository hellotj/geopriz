class CreateGeos < ActiveRecord::Migration
  def change
    create_table :geos do |t|
      t.string :tweet

      t.timestamps
    end
  end
end

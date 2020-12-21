class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string :to
      t.string :from
      t.string :color
      t.integer :weight

      t.timestamps
    end
  end
end

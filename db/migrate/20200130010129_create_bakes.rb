class CreateBakes < ActiveRecord::Migration[6.0]
  def change
    create_table :bakes do |t|
      t.integer :user_id
      t.integer :total_flour_g
      t.integer :total_flour_p
      t.integer :water_g
      t.integer :water_p
      t.integer :salt_g
      t.integer :salt_p
      t.integer :leaven_g
      t.integer :leaven_p
      t.integer :hydration
      t.integer :rating
      t.string :name
      t.string :date

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :food
      t.float :protein
      t.float :fat
      t.float :carbo
      t.datetime :start_time

      t.timestamps
    end
  end
end

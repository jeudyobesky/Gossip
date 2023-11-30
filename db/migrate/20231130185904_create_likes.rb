class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :user, index: true
      t.references :potin, index: true
      t.references :comment, index: true     
      t.timestamps
    end
  end
end
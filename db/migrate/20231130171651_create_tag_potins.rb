class CreateTagPotins < ActiveRecord::Migration[7.0]
  def change
    create_table :tag_potins do |t|
      t.belongs_to :tag
      t.belongs_to :potin
      t.timestamps
    end
  end
end

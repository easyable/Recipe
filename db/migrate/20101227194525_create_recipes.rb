class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :title
      t.text :instructions
      t.text :notes
      t.string :recipe_kind
      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end

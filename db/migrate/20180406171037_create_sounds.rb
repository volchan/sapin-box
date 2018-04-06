class CreateSounds < ActiveRecord::Migration[5.1]
  def change
    create_table :sounds do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.integer :category

      t.timestamps
    end
  end
end

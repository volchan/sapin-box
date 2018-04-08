class AddFileToSounds < ActiveRecord::Migration[5.1]
  def up
    add_attachment :sounds, :file
  end

  def down
    remove_attachment :sounds, :file
  end
end

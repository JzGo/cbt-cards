class RenameEmotionColumn < ActiveRecord::Migration
  def change
    rename_column :cards, :emotion, :emotions
  end
end

class ChangeEmotionsType < ActiveRecord::Migration
  def change
    remove_column :cards, :emotions
    add_column :cards, :emotion, :text
  end
end

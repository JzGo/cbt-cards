class AddFieldsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :emotions, :string, array: true
    add_column :cards, :thoughts, :text
    add_column :cards, :reflection, :text
    add_column :cards, :intensity, :integer
  end
end

class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :card_count
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end

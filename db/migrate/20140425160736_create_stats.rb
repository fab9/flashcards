class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.belongs_to :user
      t.belongs_to :round
      t.integer :correct_total
      t.integer :incorrect_total
      t.integer :skip_total
    end
  end
end

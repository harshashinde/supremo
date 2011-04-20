class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.integer :owners_id
      t.integer :assigned_to
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end

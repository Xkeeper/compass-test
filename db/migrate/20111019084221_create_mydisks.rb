class CreateMydisks < ActiveRecord::Migration
  def change
    create_table :mydisks do |t|

      t.timestamps
    end
  end
end

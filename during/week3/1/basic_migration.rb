require 'activerecord'

class PersonMigration < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
    end

    create_table :addresses do |t|
      t.integer :person_id
      t.string :line_1
      t.string :city
      t.string :state
      t.string :zip
    end
  end
end

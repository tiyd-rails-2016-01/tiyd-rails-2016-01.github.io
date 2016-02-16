require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
)

class DeveloperMigration < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.date :started_on
      t.timestamps
    end
  end
end

DeveloperMigration.migrate(:up)

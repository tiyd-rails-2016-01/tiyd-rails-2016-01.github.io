
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
)

require 'developer_migration.rb'
require 'time_entry_migration.rb'
#...more

DeveloperMigration.migrate(:up)
TimeEntryMigration.migrate(:up)
#...more

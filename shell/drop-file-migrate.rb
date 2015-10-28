record_number=0

ARGV.each do|a|
  record_number="#{a}"
end

last_modified=Dir.glob("db/migrate/*").max_by {|f| File.mtime(f)}
puts "Last modified migration: " + last_modified
puts "Record number: " + record_number

# open and write to a file with ruby
open(last_modified, 'w') { |f|
  f.puts "class DropRecord#{record_number} < ActiveRecord::Migration
  drop_table :record#{record_number}s

end"
}
require 'net/sftp'

last_modified=Dir.glob("db/dumps/*").max_by {|f| File.mtime(f)}
basename = File.basename(last_modified)

puts "Last modified dump: " + basename

File.open("shell/.ftppass", "r") do |f|
  f.each_line do |line|
    un_pass = line.split(' ');
    $UN=un_pass[0]
    $PASS=un_pass[1]
  end
end

# Upload last uploaded dump file to SFTP
Net::SFTP.start('ftp2.ftptoyoursite.com', $UN, :password => $PASS) do |sftp|
  sftp.upload!(last_modified, '/db_dumps/' + basename)
end
require 'csv'

class Dataset < ActiveRecord::Base
	has_many :records
  has_attached_file :file
  validates_attachment :file, presence: true, :content_type => { content_type: 'text/csv' }
  before_save :parse_file

  def parse_file
    # Only parse CSV data if it's attached
    # Otherwise people can update just the wording
    if !file.queued_for_write[:original].nil?
      # String object of uploaded file
      text = file.queued_for_write[:original].read

      # Grab the right table of data
      @record = RecordTasks.set_record_number(id.to_s)
      
      # Destroy old records
      @record.delete_all
      puts @record

      # Create a row in the DB for each row in the CSV
      CSV.parse(text, headers: true) do |row|
        new_hash = {}
        row.to_hash.each_pair do |k,v|
          if !v.nil?
            v = v.force_encoding('WINDOWS-1252').encode('utf-8')
          end
          new_hash.merge!({k.downcase => v}) 
        end

        @record.create(new_hash)
      end
    end
  end
end
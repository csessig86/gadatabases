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
        @record.create(row.to_hash)
      end
    end
  end

end
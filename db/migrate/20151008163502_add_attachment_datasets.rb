class AddAttachmentDatasets < ActiveRecord::Migration
  def change
  	add_attachment :datasets, :file
  end
end

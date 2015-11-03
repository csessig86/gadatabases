class Record2 < ActiveRecord::Base
  scope :scope_one, -> department { where(:Citationtype => department) }
  scope :scope_two, -> position { where(:intersection => position) }
 	scope :scope_three, -> gender { where(:city => gender) }

 	scope :search, lambda { |search| where("name ILIKE ?", "%#{search}%")}
end

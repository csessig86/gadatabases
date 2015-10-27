class Record1 < ActiveRecord::Base
	scope :scope_one, -> department { where(:department => department) }
  scope :scope_two, -> position { where(:position => position) }
 	scope :scope_three, -> gender { where(:gender => gender) }
end

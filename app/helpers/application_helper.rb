module ApplicationHelper
	def sortable(column, title = nil)
		if column.index("|").nil?
			title ||= column.titleize
		else
			column_title_array = column.split(" | ")
			column = column_title_array[0]
			title ||= column_title_array[1].titleize
		end
  	css_class = column == sort_column ? "current #{sort_direction}" : nil
  	direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  	link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end
end
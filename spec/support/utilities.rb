def full_title(page_title)
	base_title = "Coffee Shop"

	if base_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end
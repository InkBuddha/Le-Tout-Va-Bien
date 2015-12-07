module ApplicationHelper

	# Returns the full title on a per-page basis.
	def full_title(page_title = '')
		base_title = "Hotel restaurant Le Tout Va Bien, Valence d'Agen"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end
end

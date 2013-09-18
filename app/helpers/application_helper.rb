module ApplicationHelper
	def fix_url(url)
		url.starts_with?("http") ? url: "http://#{url}"
	end

	def date_format(date)
		date.strftime("%m/%d/%Y %l:%M%P ")
	end

end

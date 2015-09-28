module ApplicationHelper
	def markdown(content)
		renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
		options = {
			autolink: true,
			no_intra_emphasis_code_blocks: true,
			fenced_code_blocks: true,
			lax_html_blocks: true,
			strikethrough: true,
			superscript: true,
		}
		Redcarpert::Markdown.new(renderer, options).render(content).html_safe
	end
end

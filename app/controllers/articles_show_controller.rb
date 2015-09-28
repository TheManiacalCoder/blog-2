class Articles_show_Controller < ApplicationController
	def index
		@posts = Post.all.limit(3).order("created_at desc")
	end
end
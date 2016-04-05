class TagsController < ApplicationController
	before_filter :require_login, only: [:destroy]

	def show 
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = tag.find(params[:id])
		@tag.destroy

		flash.notice = "Tag Deleted"
		redirect_to tags_path
	end
end

class StoriesController < ApplicationController

 	def index
		@story=Story.find(:first, :order => 'RANDOM()') ;

 	end
 	def new 
 		@story=Story.new
 	end

 	def create
 		@story = Story.new(params[:story]);
 		if @story.save
 			flash[:notice]='Story submission created'
 			redirect_to 'http://localhost:3000/stories'
 		else
 			render :action => 'new'
 		end
 	end
 	def show
 		@story = Story.find(params[:id])
 		
 	end

end


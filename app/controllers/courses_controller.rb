class CoursesController < ApplicationController
  def show
		@course  = Course.find(params[:id])
  end
	def show1
		@courses = Course.all
	end

	def document
		uploaded_io = params[:document]
		@filename = params[:document].original_filename
		File.open("public/uploads/#{@filename}",
			 "wb"){ |f| f.write(uploaded_io.read) }
	end

	def download
		send_file("public/uploads/#{@filename}")
	end
	
	#GET /students/search
	def search
	end
	
	#POST /students/search
	def result
		@courses = []
		Course.all.each do |course|
			if course.scores.length >= params[:many].to_i then
				@courses.push(course)
			end	
		end
		render :show1
	end
	

end

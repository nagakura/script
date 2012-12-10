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
	

end

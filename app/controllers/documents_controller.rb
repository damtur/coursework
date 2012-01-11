class DocumentsController < ApplicationController
   def index
    @title = "Files"
    @documents = Document.all
  end
  
  def new
    @document = Document.new
    @title = "Upload file"
  end


  def create
    @document = Document.new(params[:document])
		unless params[:document][:path].nil? || params[:document][:path] == "" || params[:document][:title].nil? || params[:document][:title] == "" 
			uploaded_io = params[:document][:path]
			unless uploaded_io.kind_of? String
				@document.path = uploaded_io.original_filename		
				File.open(Rails.root.join('app', 'assets', 'files', 'user', uploaded_io.original_filename), 'wb') do |file|
					file.write(uploaded_io.read)
				end	
			end
		end

		if @document.save
			@documents = Document.paginate(:page => params[:page])
	    @title = "Files"
	    render 'index'
	  else
	    @title = "Upload file"
	    render 'new'
	  end
  end


end

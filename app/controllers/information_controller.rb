class InformationController < ApplicationController

  def index
    @title = "Informations"
    @information = Information.all
  end
  
  def new
    @information = Information.new
    @title = "Create information"
  end


  def show
    @information = Information.find(params[:id])
    @title = @information.title
  end



  def create
    @information = Information.new(params[:information])
		unless params[:information][:title].nil? || params[:information][:content].nil? || params[:information][:picture].nil?
			uploaded_io = params[:information][:picture]
			unless uploaded_io.kind_of? String
				@information.picture = uploaded_io.original_filename
				File.open(Rails.root.join('app', 'assets', 'images', 'user', uploaded_io.original_filename), 'wb') do |file|
					file.write(uploaded_io.read)
				end		
			end
		end
		if @information.save
      @title = "Informations"
			@information = Information.paginate(:page => params[:page])
      render 'index'
    else
      @title = "Create information"
      render 'new'
    end
  end

end

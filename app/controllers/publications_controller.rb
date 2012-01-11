class PublicationsController < ApplicationController

def index
  @title = "Publications"
  @publications = Publication.all
end

end

require 'spec_helper'

describe DocumentsController do
  render_views

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should have the right title" do
      get :index
      response.should have_selector("title", :content => "Files")
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Upload file")
    end
  end

	describe "POST 'create'" do

    describe "failure" do

      before(:each) do
        @attr = { :path => "", :title => "" }
      end

      it "should not create a document" do
        lambda do
          post :create, :document => @attr
        end.should_not change(Document, :count)
      end

      it "should have the right title" do
        post :create, :document => @attr
        response.should have_selector("title", :content => "Upload file")
      end

      it "should render the 'new' page" do
        post :create, :document => @attr
        response.should render_template('new')
      end
    end

    describe "success" do

      before(:each) do
        @attr = { :title => "New File", :path => "path_to_file" }
      end

      it "should create a document" do
        lambda do
          post :create, :document => @attr
        end.should change(Document, :count).by(1)
      end

      it "should redirect to the document show page" do
        post :create, :document => @attr
        response.should render_template('index')
      end
    end
  end

end

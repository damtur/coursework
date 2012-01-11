require 'spec_helper'

describe InformationController do
  render_views


  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should have the right title" do
      get :index
      response.should have_selector("title", :content => "Informations")
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Create information")
    end
  end

	describe "POST 'create'" do

    describe "failure" do

      before(:each) do
        @attr = { :picture => "", :title => "", :content => "" }
      end

      it "should not create a information" do
        lambda do
          post :create, :information => @attr
        end.should_not change(Information, :count)
      end

      it "should have the right title" do
        post :create, :information => @attr
        response.should have_selector("title", :content => "Create information")
      end

      it "should render the 'new' page" do
        post :create, :information => @attr
        response.should render_template('new')
      end
    end

    describe "success" do

      before(:each) do
        @attr = { :title => "New File", :content => "Some content", :picture => "path_to_file" }
      end

      it "should create a information" do
        lambda do
          post :create, :information => @attr
        end.should change(Information, :count).by(1)
      end

      it "should redirect to the information show page" do
        post :create, :information => @attr
        response.should render_template('index')
      end
    end
  end
end

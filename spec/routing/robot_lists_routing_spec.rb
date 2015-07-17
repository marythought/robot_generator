require "spec_helper"

describe RobotListsController do
  describe "routing" do

    it "routes to #index" do
      get("/robot_lists").should route_to("robot_lists#index")
    end

    it "routes to #new" do
      get("/robot_lists/new").should route_to("robot_lists#new")
    end

    it "routes to #show" do
      get("/robot_lists/1").should route_to("robot_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/robot_lists/1/edit").should route_to("robot_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/robot_lists").should route_to("robot_lists#create")
    end

    it "routes to #update" do
      put("/robot_lists/1").should route_to("robot_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/robot_lists/1").should route_to("robot_lists#destroy", :id => "1")
    end

  end
end

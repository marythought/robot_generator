require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RobotListsController do

  # This should return the minimal set of attributes required to create a valid
  # RobotList. As you add validations to RobotList, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RobotListsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all robot_lists as @robot_lists" do
      robot_list = RobotList.create! valid_attributes
      get :index, {}, valid_session
      assigns(:robot_lists).should eq([robot_list])
    end
  end

  describe "GET show" do
    it "assigns the requested robot_list as @robot_list" do
      robot_list = RobotList.create! valid_attributes
      get :show, {:id => robot_list.to_param}, valid_session
      assigns(:robot_list).should eq(robot_list)
    end
  end

  describe "GET new" do
    it "assigns a new robot_list as @robot_list" do
      get :new, {}, valid_session
      assigns(:robot_list).should be_a_new(RobotList)
    end
  end

  describe "GET edit" do
    it "assigns the requested robot_list as @robot_list" do
      robot_list = RobotList.create! valid_attributes
      get :edit, {:id => robot_list.to_param}, valid_session
      assigns(:robot_list).should eq(robot_list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new RobotList" do
        expect {
          post :create, {:robot_list => valid_attributes}, valid_session
        }.to change(RobotList, :count).by(1)
      end

      it "assigns a newly created robot_list as @robot_list" do
        post :create, {:robot_list => valid_attributes}, valid_session
        assigns(:robot_list).should be_a(RobotList)
        assigns(:robot_list).should be_persisted
      end

      it "redirects to the created robot_list" do
        post :create, {:robot_list => valid_attributes}, valid_session
        response.should redirect_to(RobotList.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved robot_list as @robot_list" do
        # Trigger the behavior that occurs when invalid params are submitted
        RobotList.any_instance.stub(:save).and_return(false)
        post :create, {:robot_list => { "name" => "invalid value" }}, valid_session
        assigns(:robot_list).should be_a_new(RobotList)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        RobotList.any_instance.stub(:save).and_return(false)
        post :create, {:robot_list => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested robot_list" do
        robot_list = RobotList.create! valid_attributes
        # Assuming there are no other robot_lists in the database, this
        # specifies that the RobotList created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        RobotList.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => robot_list.to_param, :robot_list => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested robot_list as @robot_list" do
        robot_list = RobotList.create! valid_attributes
        put :update, {:id => robot_list.to_param, :robot_list => valid_attributes}, valid_session
        assigns(:robot_list).should eq(robot_list)
      end

      it "redirects to the robot_list" do
        robot_list = RobotList.create! valid_attributes
        put :update, {:id => robot_list.to_param, :robot_list => valid_attributes}, valid_session
        response.should redirect_to(robot_list)
      end
    end

    describe "with invalid params" do
      it "assigns the robot_list as @robot_list" do
        robot_list = RobotList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RobotList.any_instance.stub(:save).and_return(false)
        put :update, {:id => robot_list.to_param, :robot_list => { "name" => "invalid value" }}, valid_session
        assigns(:robot_list).should eq(robot_list)
      end

      it "re-renders the 'edit' template" do
        robot_list = RobotList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RobotList.any_instance.stub(:save).and_return(false)
        put :update, {:id => robot_list.to_param, :robot_list => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested robot_list" do
      robot_list = RobotList.create! valid_attributes
      expect {
        delete :destroy, {:id => robot_list.to_param}, valid_session
      }.to change(RobotList, :count).by(-1)
    end

    it "redirects to the robot_lists list" do
      robot_list = RobotList.create! valid_attributes
      delete :destroy, {:id => robot_list.to_param}, valid_session
      response.should redirect_to(robot_lists_url)
    end
  end

end
require 'spec_helper'

describe "robot_lists/edit" do
  before(:each) do
    @robot_list = assign(:robot_list, stub_model(RobotList,
      :name => "MyString",
      :description => "MyText",
      :arms => 1,
      :material => "MyString",
      :fuel => "MyString",
      :voice_box => false,
      :notes => "MyText"
    ))
  end

  it "renders the edit robot_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", robot_list_path(@robot_list), "post" do
      assert_select "input#robot_list_name[name=?]", "robot_list[name]"
      assert_select "textarea#robot_list_description[name=?]", "robot_list[description]"
      assert_select "input#robot_list_arms[name=?]", "robot_list[arms]"
      assert_select "input#robot_list_material[name=?]", "robot_list[material]"
      assert_select "input#robot_list_fuel[name=?]", "robot_list[fuel]"
      assert_select "input#robot_list_voice_box[name=?]", "robot_list[voice_box]"
      assert_select "textarea#robot_list_notes[name=?]", "robot_list[notes]"
    end
  end
end

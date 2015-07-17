require 'spec_helper'

describe "robot_lists/index" do
  before(:each) do
    assign(:robot_lists, [
      stub_model(RobotList,
        :name => "Name",
        :description => "MyText",
        :arms => 1,
        :material => "Material",
        :fuel => "Fuel",
        :voice_box => false,
        :notes => "MyText"
      ),
      stub_model(RobotList,
        :name => "Name",
        :description => "MyText",
        :arms => 1,
        :material => "Material",
        :fuel => "Fuel",
        :voice_box => false,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of robot_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Material".to_s, :count => 2
    assert_select "tr>td", :text => "Fuel".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

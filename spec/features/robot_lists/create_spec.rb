require 'spec_helper'

describe "Creating robot lists" do
  it "redirects to the robot list index page on success" do
    visit "/robot_lists"
    click_link "add a new robot"
    expect(page).to have_content("New Robot")

    fill_in "Name", with: "Larry"
    fill_in "Description", with: "Friendly robot"
    click_button "Create Robot list"

    expect(page).to have_content("was successfully created")
  end

  it "displays an error when the robot has no name" do
    expect(RobotList.count).to eq(0)

    visit "/robot_lists"
    click_link "add a new robot"
    expect(page).to have_content("New Robot")

    fill_in "Name", with: ""
    fill_in "Description", with: "Friendly robot"
    click_button "Create Robot list"


    expect(page).to have_content("error")
    expect(RobotList.count).to eq(0)

    visit "/robot_lists"
    expect(page).to_not have_content("Friendly robot")
  end
end

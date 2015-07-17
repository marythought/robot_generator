json.array!(@robot_lists) do |robot_list|
  json.extract! robot_list, :id, :name, :description, :arms, :material, :fuel, :voice_box, :notes
  json.url robot_list_url(robot_list, format: :json)
end

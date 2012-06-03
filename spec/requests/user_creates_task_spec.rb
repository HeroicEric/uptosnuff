require 'spec_helper'

feature 'user creates a task', %w{
  As a user
  I want to create new tasks
  So that I can remember to do them
} do

  scenario "user creates a new task" do
    visit tasks_path
    within "#new-task"
    fill_in "Title", with: "Mow the lawn"
    click_on "Create"
    page.should have_content "Task was successfully created"
  end

end

require 'spec_helper'

feature 'user views tasks list', %w{
  As a user
  I want to view my list of tasks
  So that I can see what I need to do
} do

  let!(:task1) { Factory(:task) }
  let!(:task2) { Factory(:task) }

  scenario "user views tasks list" do
    visit tasks_path
    page.should have_content task1.title
    page.should have_content task2.title
  end

end

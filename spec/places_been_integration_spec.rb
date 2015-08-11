require('Capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('path to places been', {:type => :feature}) do
  it('processes user entry of location and adds it to list') do
    visit('/')
    fill_in('location', :with => "Tennessee")
    click_button('Add it!')
    expect(page).to have_content("Tennessee")
  end
end

describe('path to places been', {:type => :feature}) do
  it('processes user entry of location and removes it from the list') do
    visit('/')
    fill_in('remove_loc', :with => "Tennessee")
    click_button('Get it out!')
    expect(page).to have_content()
  end
end

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('play the maze path', {:type => :feature}) do
  it('starts the game') do
    visit('/')
    click_button('Proceed')
    expect(page).to have_content('Room 1')
  end
  it('tests the back button') do
    visit('/')
    click_button("Proceed")
    click_button("Right")
    expect(page).to have_content('Youve reached')
  end
end

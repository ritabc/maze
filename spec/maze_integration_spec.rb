require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('from the / page', {:type => :feature}) do
  it('user can click Proceed and be taken to the /room/o0 page') do
    visit('/')
    click_button('Proceed')
    expect(page).to have_content('Room 1')
  end
end

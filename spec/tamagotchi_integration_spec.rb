require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the Tamagotchi' {:type => :feature}) do
  it('') do
    visit("/")
    click_button('Play!')
    expect(page).to have_content('Birdie')
  end
end

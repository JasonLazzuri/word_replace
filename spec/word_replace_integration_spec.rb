require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_execptions, false)

describe('word replace path', {:type => :feature}) do
  it ('will replace words with different words') do
  visit('/')
  fill_in('words', :with => 'hello world')
  click_button('submit')
  expect(page).to have_content('conquer the world')
  end
end

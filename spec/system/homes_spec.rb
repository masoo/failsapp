require 'rails_helper'

RSpec.describe "Homes", type: :system do
  it "GET /" do
    Capybara.app = Rack::Builder.parse_file(Rails.root.join('config.ru').to_s).first
    # visit "/"  # success.
    visit "/i/am/users/" # fail.
    expect(page).to have_content "ここはホーム"
  end
end

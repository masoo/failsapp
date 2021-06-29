require 'rails_helper'

RSpec.describe "Homes", type: :system do
  it "GET /" do
    #visit "/"  # success.
    visit "/i/am/users/" # fail.
    expect(page).to have_content "ここはホーム"
  end
end

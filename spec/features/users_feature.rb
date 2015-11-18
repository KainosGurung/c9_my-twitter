require "rails_helper"

RSpec.feature "Users", :type => :feature do
  scenario "Get /users" do
    visit users_path

    expect(page).to have_text("kainosgurung@gmail.com")
  end
end
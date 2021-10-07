feature "Enter_names" do
  scenario "visit home page" do
    sign_in_and_play
    expect(page).to have_content("Max vs. Serena")
  end
end

feature "Check points" do
  scenario "check player 2's points" do
    visit("/")
    fill_in :player_1_name, with: "Max"
    fill_in :player_2_name, with: "Serena"
    click_button "Submit"

    save_and_open_page

    expect(page).to have_content("Serena has 100 points")
  end
end

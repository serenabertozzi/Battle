feature "Turns" do
  scenario "displays current turn" do
    sign_in_and_play
    expect(page).to have_content "Max's turn"
  end

  scenario "changes turn after attack" do
    sign_in_and_play
    click_link ('Attack')
    expect(page).to have_content "Serena's turn"
    expect(page).not_to have_content "Max's turn"
  end
end
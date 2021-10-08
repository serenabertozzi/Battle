feature "Check points" do
  scenario "check player 2's points" do
    sign_in_and_play
    expect(page).to have_content("Serena has 100 points")
  end

  scenario "check player 1's points" do
    sign_in_and_play
    expect(page).to have_content("Max has 100 points")
  end
end

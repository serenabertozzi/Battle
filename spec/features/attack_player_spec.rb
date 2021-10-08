feature "Attack player" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_link ("Attack")
    expect(page).to have_content("Max attacked Serena")
  end

  scenario "player 1 attack reduces player 2 HP" do
    sign_in_and_play
    click_link ("Attack")
    expect(page).to have_content("Max HP: 100 Serena HP: 90")
    expect(page).not_to have_content("Max HP: 100 Serena HP: 100")
  end

  # scenario "player 2 attack reduces player 1 HP" do
  # end
  scenario "player 2 attack gives confirmation to player 1" do
    sign_in_and_play
    click_link("Attack")
    click_link("Attack")
    expect(page).to have_content("Serena attacked Max")
  end
end

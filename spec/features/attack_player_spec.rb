feature "Attack player" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_link ("Attack")
    expect(page).to have_content("Max attacked Serena")
  end
end
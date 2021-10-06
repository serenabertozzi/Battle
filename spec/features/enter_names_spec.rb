feature 'Enter_names' do 
  scenario "visit home page" do
    visit("/")
    fill_in :player_1_name, with: 'Max'
    fill_in :player_2_name, with:'Serena'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content('Max vs. Serena')
  end
end
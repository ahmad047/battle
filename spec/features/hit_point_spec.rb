feature 'hit points' do
  scenario 'player 1 can see player 2 hit points' do
    visit('/')
    fill_in('player_1_name', with: 'player 1')
    fill_in('player_2_name', with: 'player 2')
    click_button('Submit')

    expect(page).to have_content('player 2: 60HP')
  end
end
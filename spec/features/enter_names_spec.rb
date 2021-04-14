feature 'enter_name' do
  scenario 'players can enter names and see those names on screen' do
    visit('/')
    fill_in('player_1_name', with: 'player 1')
    fill_in('player_2_name', with: 'player 2')
    click_button('Submit')

    save_and_open_page

    expect(page).to have_content('player 1 vs. player 2')
  end
end
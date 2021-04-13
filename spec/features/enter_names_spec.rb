feature 'enter_name' do
  scenario 'players can enter names and see those names on screen' do
    visit('/')
    fill_in('player_1_name', with: 'finn')
    fill_in('player_2_name', with: 'muhammad')
    click_button('Submit')

    save_and_open_page

    expect(page).to have_content('finn vs. muhammad')
  end
end
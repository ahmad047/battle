feature 'enter_name' do
  scenario 'players can enter names and see those names on screen' do
    sign_in_and_play

    # save_and_open_page

    expect(page).to have_content('player 1 vs. player 2')
  end
end
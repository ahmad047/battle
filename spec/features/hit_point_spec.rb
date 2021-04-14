feature 'hit points' do
  scenario 'player 1 can see player 2 hit points' do
    sign_in_and_play

    expect(page).to have_content('player 2: 60HP')
  end
end
# frozen_string_literal: true

feature 'Hit points' do
  scenario 'player 1 can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('abdur: 60HP')
  end
end

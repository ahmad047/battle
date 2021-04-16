# frozen_string_literal: true

feature 'Hit points' do
  scenario 'player 1 can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('abdur: 60HP')
  end

  scenario 'player 1 can see their own point' do
    sign_in_and_play
    expect(page).to have_content('muhammad: 60HP')
  end

  scenario 'player 2 loses when hit points are 0' do
    sign_in_and_play
    10.times do
      click_button('Attack')
      click_button('Continue Playing')
    end
    click_button('Attack')
    expect(page).to have_content('abdur loses!')
  end
end

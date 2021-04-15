# frozen_string_literal: true

feature 'Attack' do
  before do
    sign_in_and_play
    click_button('Attack')
  end

  scenario 'player 1 attacks player 2 and gets a confirmation' do
    expect(page).to have_content('muhammad attacked abdur')
  end

  scenario 'player 1 attack reduces player 2 points by 10' do
    click_button('Continue Playing')
    expect(page).not_to have_content('abdur: 60HP')
    expect(page).to have_content('abdur: 50HP')
  end

  scenario 'switch turn after the attack' do
    click_button('Continue Playing')
    expect(page).not_to have_content('muhammad\'s turn')
    expect(page).to have_content('abdur\'s turn')
  end
end

feature 'Attack' do
  scenario 'player 1 attacks player 2 and gets a confirmation' do
    sign_in_and_play
    click_button('Attack')

    expect(page).to have_content('muhammad attacked abdur')
  end

  scenario 'player 1 attack reduces player 2 points by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('Continue Playing')
    expect(page).not_to have_content('abdur: 60HP')
    expect(page).to have_content('abdur: 50HP')
  end
end

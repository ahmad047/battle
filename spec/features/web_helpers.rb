def sign_in_and_play 
  visit('/')
  fill_in('player_1_name', with: 'muhammad')
  fill_in('player_2_name', with: 'abdur')
  click_button('Submit')

end

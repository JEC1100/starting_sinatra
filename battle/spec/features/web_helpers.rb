def sign_in_and_play
  visit('/')
  fill_in("player_1_name", with: 'Yoda')
  fill_in("player_2_name", with: 'ET')
  click_button 'Submit'
end
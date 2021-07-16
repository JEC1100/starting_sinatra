
feature 'Attacking player' do
    scenario 'get a confirmation you attacked opponent' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content 'You attacked ET'
    end

    scenario 'reduce player 2HP by 10' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content "ET: 890HP"
    end
end


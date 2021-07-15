feature 'Attacking player' do
  scenario 'get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Yoda has attacked ET"
  end
end


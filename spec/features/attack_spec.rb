feature 'Attack Player 2' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Pikachu attacked Bulbasaur'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to_not have_content 'Bulbasaur: 60/ 60 HP'
    expect(page).to have_content 'Bulbasaur: 50 /60 HP'
  end
end

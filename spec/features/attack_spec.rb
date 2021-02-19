feature 'Attack Player 2' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Pikachu attacked Bulbasaur'
  end
end

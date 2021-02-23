feature 'Switching Player Turns' do
  context 'at the start of the game' do
    scenario 'seeing current turn' do
      sign_in_and_play
      expect(page).to have_content("Pikachu's turn")
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to_not have_content("Pikachu's turn")
      exepct(page).to have_content("Bulbasaur's turn")
    end
  end
end

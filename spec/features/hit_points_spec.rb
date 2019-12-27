

feature 'viewing hit points' do
  scenario 'viewing player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content "Hisham: 60HP"
  end 
end

feature 'Attacking' do

  scenario 'attack Player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Sayem attacked Hisham'
  end

  scenario 'reduce Player 2s HPs by 10' do
    sign_in_and_play
    click_button "Attack"
    click_link "Ok"
    expect(page).not_to have_content 'Hisham: 60HP'
    expect(page).to have_content 'Hisham: 50HP'
  end

end

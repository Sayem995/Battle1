# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Enter names and being able to see them' do
  scenario 'submitting names' do
    visit '/'
    fill_in :player_1_name, with: 'Sayem'
    fill_in :player_2_name, with: 'Hisham'
    click_button 'Submit'
    expect(page).to have_content 'Sayem Vs Hisham'
  end
end

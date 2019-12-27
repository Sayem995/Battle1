

feature 'Enter names and being able to see them' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Sayem vs. Hisham"
  end
end

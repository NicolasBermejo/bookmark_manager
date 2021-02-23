
feature 'Viewing Bookmarks' do
  scenario 'User viewing the bookmarks' do
    visit('/')
    click_button 'Bookmarks'
    expect(page).to have_content 'http://www.google.com'
    # expect(page).to have_content 'https://ruby-doc.org'
  end
end
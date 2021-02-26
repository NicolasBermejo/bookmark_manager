feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmarks.create(url: 'https://www.makersacademy.com', title: 'Makers Academy')
    Bookmarks.create(url: 'https://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmarks.create(url: 'https://www.google.com', title: 'Google')

    visit '/bookmarks'

    expect(page).to have_link('Makers Academy', href: 'https://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'https://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'https://www.google.com')
    end
  end

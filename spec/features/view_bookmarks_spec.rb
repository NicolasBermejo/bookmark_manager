feature 'Viewing Bookmarks' do
  scenario 'User viewing the bookmarks' do
    connection = PG.connect(dbname: 'Bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'https://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content "https://www.makersacademy.com"
    expect(page).to have_content "https://www.destroyallsoftware.com"
    expect(page).to have_content "https://www.google.com"
  end
end

describe '.all' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'Bookmark_manager_test')
        connection.exec("INSERT INTO bookmarks VALUES(4, 'https://www.makersacademy.com');")
        connection.exec("INSERT INTO bookmarks VALUES(5, 'https://www.destroyallsoftware.com');")
        connection.exec("INSERT INTO bookmarks VALUES(6, 'https://www.google.com');")
    bookmarks = Bookmarks.all

    expect(bookmarks).to include "https://www.makersacademy.com"
    expect(bookmarks).to include "https://www.destroyallsoftware.com"
    expect(bookmarks).to include "https://www.google.com"
  end
end

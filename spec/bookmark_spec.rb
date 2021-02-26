require 'database_helpers'

describe '.create' do
  it 'creates a new bookmark' do
    bookmark = Bookmarks.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
    persisted_data = PG.connect(dbname: 'Bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")

    expect(bookmark).to be_a Bookmarks
    expect(bookmark.id).to eq persisted_data.first['id']
    expect(bookmark.title).to eq 'Test Bookmark'
    expect(bookmark.url).to eq 'http://www.testbookmark.com'
  end
end

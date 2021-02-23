require 'pg'

class Bookmarks

  def self.all
    # ["https://www.google.com", "https://ruby-doc.org/"].join(' ')
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
      result = connection.exec('SELECT * FROM bookmarks;')
      result.map { |bookmark| bookmark['url'] }
  end

end

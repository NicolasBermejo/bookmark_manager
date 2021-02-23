require 'pg'

class Bookmarks

  def self.all
    # ["https://www.google.com", "https://ruby-doc.org/"].join(' ')
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
  end

end

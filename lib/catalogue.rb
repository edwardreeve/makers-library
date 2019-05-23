# A list of all books owned by the library
class Catalogue
  def initialize
    @list = []
  end

  def add(book)
    @list << book
  end

  def view
    @list
  end
end

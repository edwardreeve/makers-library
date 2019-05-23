# A list of all books owned by the library
class Catalogue
  attr_reader :list
  def initialize
    @list = []
  end

  def add(book)
    @list << book
  end

  def view(id)
    selection = @list.select { |book| book.id == id }
    selection[0].details
  end
end

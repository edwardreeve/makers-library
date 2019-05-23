# Books, storing all relevant info etc
class Book
  attr_reader :title, :author, :id
  def initialize(title, author, id)
    @title = title
    @author = author
    @id = id
  end

  def details
    "Title: #{@title}, Author: #{@author}, ID: #{id}"
  end
end

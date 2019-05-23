require 'catalogue'
describe Catalogue do
  let(:book) { instance_double('Book', details: 'Title: Whoop, Author: Katz, ID: 123', id: '123') }
  it { should respond_to(:add).with(1).argument }

  it 'should contain a book once added' do
    subject.add(book)
    expect(subject.list).to include(book)
  end

  it 'should show details of a specified book' do
    subject.add(book)
    expect(subject.view(book.id)).to eq('Title: Whoop, Author: Katz, ID: 123')
  end
end

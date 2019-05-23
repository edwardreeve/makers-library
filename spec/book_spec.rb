require 'book'
describe Book do
  subject(:book) { described_class.new('Jest', 'DFW', '42') }
  it 'should return its own details' do
    expect(book.details).to eq('Title: Jest, Author: DFW, ID: 42')
  end
end

require 'catalogue'
describe Catalogue do
  let(:book) { instance_double('Book', title: 'Whoop', author: 'Katz', id: '123') }
  it { should respond_to(:add).with(1).argument }

  it 'should contain a book once added' do
    subject.add(book)
    expect(subject.view).to include(book)
  end

  # it 'should show details of a specified book' do
  #   subject.add(book)
  #   expect(subject.view(book.id)).to eq([book])
  # end
end

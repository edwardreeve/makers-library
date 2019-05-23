require 'catalogue'
describe Catalogue do
  let(:book) { instance_double('Book') }
  it { should respond_to(:add).with(1).argument }

  it 'should contain a book once added' do
    subject.add(book)
    expect(subject.view).to include(book)
  end
end

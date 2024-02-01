require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    Book.new(title: 'Sample Book')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'Rainy-day: is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  
  subject do
    Book.new(title: 'Sample Book')
  end
end

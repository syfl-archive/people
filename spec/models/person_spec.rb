RSpec.describe Person, type: :model do
  it 'must have a first name' do
    person = Person.new
    expect(person.valid?).to be false
  end
end

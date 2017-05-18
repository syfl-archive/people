RSpec.describe Person, type: :model do
  it 'must have a first name' do
    person = Person.new
    expect(person).not_to be_valid
    expect(person.errors[:first_name]).to include("can't be blank")
  end

  it 'must have a last name' do
    person = Person.new
    expect(person).not_to be_valid
    expect(person.errors[:last_name]).to include("can't be blank")
  end

  it 'can construct a full name from first and last names' do
    person = Person.new(first_name: 'John', last_name: 'Smith')
    expect(person.full_name).to eq 'John Smith'
  end
end

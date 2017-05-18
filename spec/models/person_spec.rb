RSpec.describe Person, type: :model do
  it 'must have a first name' do
    person = Person.new
    expect(person).not_to be_valid
    expect(person.errors[:first_name]).to include("can't be blank")
  end
end

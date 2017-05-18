RSpec.describe Person, type: :model do
  subject(:person) { Person.new }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.not_to validate_presence_of(:middle_name) }
  end

  describe '#full_name' do
    it 'can construct a full name from first and last names' do
      person.first_name = 'John'
      person.last_name = 'Smith'
      expect(person.full_name).to eq 'John Smith'
    end
  end
end

require 'rails_helper'

RSpec.describe AvatarService, type: :service do
  context 'When passed a valid nation' do
    it 'can return nation member data' do
      results = AvatarService.nation_member_data('fire nation')
      expect(results).to be_a(Array)

      first_result = results.first
      expect(first_result).to have_key(:name)
      expect(first_result[:name]).to be_a(String)

      expect(first_result).to have_key(:affiliation)
      expect(first_result[:affiliation]).to be_a(String)

      expect(first_result).to have_key(:allies)
      expect(first_result[:allies]).to be_a(Array)

      expect(first_result).to have_key(:enemies)
      expect(first_result[:enemies]).to be_a(Array)
    end
  end
end

require 'rails_helper'

RSpec.describe NationMember, type: :poro do
  context 'When the object exists' do
    let(:attr) do
      {
        name: 'Sokka',
        affiliation: 'Water Tribe',
        photo: 'www.photo.com',
        allies: ['Aang', 'Appa'],
        enemies: ['Zuko', 'Monsters']
      }
    end

    let(:member) { NationMember.new(attr) }

    it { expect(member).to be_a(NationMember) }
    it { expect(member.name).to eq('Sokka') }
  end
end

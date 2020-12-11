require 'rails_helper'

RSpec.describe 'Welcome/Index', type: :feature do
  describe 'As a user visiting the root path' do
    context 'When they select Fire Nation and click search' do
      before do
        visit root_path
        select('Fire Nation', from: 'nation')
        click_on 'Search For Members'
      end

      xit 'should be on the search page' do
        expect(page).to have_current_path(search_path)
      end
    end
  end
end

require 'rails_helper'

RSpec.describe "Search/Index", type: :feature do
  describe 'As a user visiting the search page' do
    context 'When they searched for the Fire Nation' do
      before do
        visit root_path
        select('Fire Nation', from: 'nation')
        click_on 'Search For Members'
      end

      it 'Should see total number of people in the Fire Nation' do
        expect(page).to have_css('.nation-members', count: 20)
      end

      it 'Should have member details' do
        within(first('.nation-members')) do
          expect(page).to have_css('.name')
          expect(page).to have_css('.affiliation')
          expect(page).to have_css('.photo')
          expect(page).to have_css('.allies')
          expect(page).to have_css('.enemies')
        end
      end
    end
  end
end

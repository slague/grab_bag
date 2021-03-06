require 'rails_helper'

RSpec.feature 'Visitor can view root path' do
  context 'when she is not logged in nor a registered user' do
    scenario 'she can see the root path with welcome message and login button' do
      visit '/'

      expect(current_path).to eq(root_path)
      expect(page).to have_content('Reinventing memework')

      within('.welcome') do
        expect(page).to have_link('Sign Up or Log In with Facebook')
      end
    end
  end
end

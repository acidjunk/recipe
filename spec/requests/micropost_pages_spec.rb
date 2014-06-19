require 'spec_helper'

describe 'Micropost pages' do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe 'micropost creation' do
    before { visit root_path }

    describe 'with invalid information' do

      xit 'should not create a micropost' do
        expect { click_button 'Plaats bericht' }.not_to change(Micropost, :count)
      end

      describe 'error messages' do
        before { click_button 'Plaats bericht' }
        xit { should have_content('error') }
      end
    end

    describe 'with valid information' do

      before { fill_in 'micropost_content', with: 'Lorem ipsum' }
      xit 'should create a micropost' do
        expect { click_button 'Plaats bericht' }.to change(Micropost, :count).by(1)
      end
    end
  end
end

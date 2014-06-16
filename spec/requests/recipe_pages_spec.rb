require 'spec_helper'

describe 'Recipe pages' do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe 'recipe creation' do
    before { visit root_path }

    describe 'with invalid information' do

      it 'should not create a recipe' do
        expect { click_button 'Post' }.not_to change(Recipe, :count)
      end

      describe 'error messages' do
        before { click_button 'Post' }
        it { should have_content('error') }
      end
    end

    describe 'with valid information' do
      #TODO: add name field also.
      before { fill_in 'recipe_content', with: 'Lorem ipsum' }
      it 'should create a recipe' do
        expect { click_button 'Post' }.to change(Recipe, :count).by(1)
      end
    end
  end
end
require 'spec_helper'

describe Recipe do

  let(:user) { FactoryGirl.create(:user) }
  before { @recipe = user.recipes.build(content: 'Gerecht nummer 1.') }

  subject { @recipe }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe 'when user_id is not present' do
    before { @recipe.user_id = nil }
    it { should_not be_valid }
  end

  describe 'with blank name' do
    before { @recipe.name = ' ' }
    it { should_not be_valid }
  end


  describe 'with blank content' do
    before { @recipe.content = ' ' }
    it { should_not be_valid }
  end

  describe 'with content that is too long' do
    before { @recipe.content = 'a' * 256 }
    it { should_not be_valid }
  end


end

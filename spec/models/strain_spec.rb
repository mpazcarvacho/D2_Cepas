require 'rails_helper'
require_relative "../support/devise"

RSpec.describe Strain, type: :model do
  it 'is not valid without a name' do
    strain = Strain.create(name: nil)
    get :index
    expect(strain).to_not be_valid
  end
end

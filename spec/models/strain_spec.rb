require 'rails_helper'
require_relative "../support/devise"

# 01/12 DONE

RSpec.describe Strain, type: :model do
  
  # Que las cepas no pueden tener el mismo nombre.
  before {Strain.create!(name: 'Cepa1')}
  it 'is unique' do
    strain = Strain.create(name: 'Cepa1')
    expect(strain).to_not be_valid
  end
  
  # Una cepa no puede tener un nombre vacío, probar 3 casos
  # ○ nombre = nil
  # ○ nombre = “ ”
  # ○ nombre “Carmenere”
  it 'is not valid without a name' do
    strain = Strain.create(name: nil)
    expect(strain).to_not be_valid
  end

  it 'is not valid if blank' do
    strain = Strain.create(name: '')
    expect(strain).to_not be_valid
  end

  it 'is valid with a name' do
    strain = Strain.create(name: 'Carmenere')
    expect(strain).to be_valid
  end
  
end

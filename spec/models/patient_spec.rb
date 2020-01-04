# frozen_string_literal: true

describe Patient do
  it { should have_one(:parent).dependent(:destroy) }
  it { should have_many(:conversations).dependent(:destroy) }
  it { should have_many(:messages).dependent(:destroy) }
  it { should have_many(:appointments).dependent(:destroy) }
  it { should have_many(:physicians).through(:appointments) }
  it { should accept_nested_attributes_for(:parent) }
end

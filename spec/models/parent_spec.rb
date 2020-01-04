# frozen_string_literal: true

describe Parent do
  it { should belong_to(:patient) }
end

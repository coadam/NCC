require 'rails_helper'

RSpec.describe Quotation, type: :model do
  it { should validate_presence_of(:content) }
end

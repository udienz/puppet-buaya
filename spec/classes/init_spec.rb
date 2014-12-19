require 'spec_helper'
describe 'buaya' do

  context 'with defaults for all parameters' do
    it { should contain_class('buaya') }
  end
end

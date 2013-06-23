require 'spec_helper'

describe Neighbourhood do
  describe :attributes do
    subject { Neighbourhood.new }
    it { should respond_to :name }
    it { should respond_to :status }
  end
end

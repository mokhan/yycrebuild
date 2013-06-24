require 'spec_helper'

describe Resource do
  describe :attributes do
    subject { Resource.new }
    it { should respond_to :title }
    it { should respond_to :link }
    it { should respond_to :description }
  end
end

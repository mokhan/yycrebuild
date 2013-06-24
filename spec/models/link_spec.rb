require 'spec_helper'

describe Link do
  describe :attributes do
    subject { Link.new }
    it { should respond_to :url }
    it { should respond_to :title }
    it { should respond_to :description }
    it { should respond_to :thumbnail_url }
  end
end

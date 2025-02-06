require_relative '../modules'

RSpec.describe Introduction do
  class Person
    include Introduction

    def initialize(name)
      @name = name
    end
  end

  subject { Person.new("Leon") }

  describe '#introduce' do
    it 'return the correct introduction message' do
      expect(subject.introduce).to eq("Hello, my name is Leon")
    end
  end
end
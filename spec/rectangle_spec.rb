require_relative '../review'

RSpec.describe Rectangle do
  let(:shape) { Rectangle.new(5, 10) }

  describe '#initalize' do
    it 'initialize with the given length and width' do
      expect(shape.length).to eq(5)
      expect(shape.width).to eq(10)
    end
  end
  
  describe '#area' do
  it 'multiplies the length and width' do
      expect(shape.area).to be >= 50 # 50
    end
  end

  describe '#perimiter' do
    it 'adds the length and width and then multiplies by 2' do
      expect(shape.perimiter).to eq(30)
    end
  end
end

# Advanced Matchers
# be > / be <
# expect(10).to be > 5

# include
# expect([1, 2, 3]).to include(2)
# expect("hello world").to include("hello")

# match / match_array
# expect("abcdef").to match(/[a-z]+/)
# expect([1,2]).to match_array([2,1])  # order-insensitive

# change
# expect { account.deposit(100) }.to change { account.balance }.by(100)

require 'rspec'
require 'linked_list'

describe Stack do
  before do
    @stack = Stack.new
  end

  context 'adding values to the stack' do
    it 'pushes things onto the stack' do
      @stack.push(3)

      @stack.top.should == 3
    end

    it 'pushes multiple things onto the stack' do
      @stack.push(3)
      @stack.push(4)

      @stack.top.should == 3
    end
  end

  context 'poping values off the stack' do
    it 'pushes one thing on the stack and then removes it' do
      @stack.push(3)

      @stack.pop.should == 3
      @stack.top.should be_nil
    end

    it 'removes multiple items from the stack' do
      @stack.push(3)
      @stack.push(4)

      @stack.pop.should == 4
      @stack.pop.should == 3
      
      @stack.top.should be_nil
    end
  end
end

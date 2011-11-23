require 'rspec'
require 'linked_list'

describe LinkedList do
  before do
    @list = LinkedList.new
  end

  context 'adding values' do
    it 'has a nil head and tail for a new list' do
      @list.head.should be_nil
      @list.tail.should be_nil
    end

    it 'inserts an value into an empty list' do
      @list.add('foo')

      @list.head.value.should == 'foo'
      @list.head.next.value.should be_nil
      @list.tail.value.should == 'foo'
    end

    it 'inserts two values into an empty list' do
      @list.add('foo')
      @list.add('bar')

      @list.head.value.should == 'foo'
      @list.head.next.value.should == 'bar'
      @list.tail.value.should == 'bar'
    end

    it 'inserts multiple values into the list' do
      @list.add('foo')  
      @list.add('bar')  
      @list.add('example')  

      @list.head.value.should == 'foo'
      @list.head.next.value.should == 'bar'
      @list.tail.value.should == 'example'
    end
  end

  context 'removing values' do
    before do
      @list.add('a')
      @list.add('b')
      @list.add('c')
      @list.add('d')
    end

    it 'removes the tail if no argument is passed to remove' do
      @list.remove

      @list.tail.value.should == 'c'
      @list.tail.next.should be_nil
    end

    it 'removes an value in the middle of the list' do
      @list.remove('b')

      @list.head.next.value.should == 'c'
    end

    it 'removes the tail multiple times' do
      @list.remove
      @list.remove

      @list.tail.value.should == 'b'
    end

    it 'removes multiple values from the middle of the list' do
      @list.remove('b')
      @list.remove('c')

      @list.head.next.should == 'd'
    end

    it 'removes the head' do
      @list.remove(@list.head)

      @list.head.value.should == 'b'
    end
  end

  context 'checking if an value exists' do
    before do
      @list.add('a')
      @list.add('b')
      @list.add('c')
      @list.add('d')
    end

    it 'returns true if the value is in the list' do
      @list.exists?('b').should be_true
    end

    it 'returns false if the value is not in the list' do
      @list.exists?('f').should be_false
    end
  end

  context 'finding the index of an value' do
    before do
      @list.add('a')
      @list.add('b')
      @list.add('c')
      @list.add('d')
    end   

    it 'returns 0 for the index of the head value' do
      @list.index_of(@list.head.value).should == 0
    end

    it 'returns the index of an value if it is in the list' do
      @list.index_of('c').should == 2
    end
    
    it 'returns nil for the index if the value is not in the list' do
      @list.index_of('f').should be_nil
    end
  end
end

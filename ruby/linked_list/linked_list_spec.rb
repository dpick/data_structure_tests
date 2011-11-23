require 'rspec'
require 'linkedlist'

describe LinkedList do
  before do
    @list = LinkedList.new
  end

  context 'adding elements' do
    it 'has a nil head and tail for a new list' do
      @list.head.should be_nil
      @list.tail.should be_nil
    end

    it 'inserts an element into an empty list' do
      @list.add('foo')

      @list.head.value.should == 'foo'
      @list.head.next.element.should be_nil
      @list.tail.value.should == 'foo'
    end

    it 'inserts two elements into an empty list' do
      @list.add('foo')
      @list.add('bar')

      @list.head.element.should == 'foo'
      @list.head.next.element.should == 'bar'
      @list.tail.element.should == 'bar'
    end

    it 'inserts multiple elements into the list' do
      @list.add('foo')  
      @list.add('bar')  
      @list.add('example')  

      @list.head.element.should == 'foo'
      @list.head.next.element.should == 'bar'
      @list.tail.element.should == 'example'
    end
  end

  context 'removing elements' do
    before do
      @list.add('a')
      @list.add('b')
      @list.add('c')
      @list.add('d')
    end

    it 'removes the tail if no argument is passed to remove' do
      @list.remove

      @list.tail.element.should == 'c'
      @list.tail.next.should be_nil
    end

    it 'removes an element in the middle of the list' do
      @list.remove('b')

      @list.head.next.element.should == 'c'
    end

    it 'removes the tail multiple times' do
      @list.remove
      @list.remove

      @list.tail.element.should == 'b'
    end

    it 'removes multiple elements from the middle of the list' do
      @list.remove('b')
      @list.remove('c')

      @list.head.next.should == 'd'
    end

    it 'removes the head' do
      @list.remove(@list.head)

      @list.head.element.should == 'b'
    end
  end

  context 'checking if an element exists' do
    before do
      @list.add('a')
      @list.add('b')
      @list.add('c')
      @list.add('d')
    end

    it 'returns true if the element is in the list' do
      @list.exists?('b').should be_true
    end

    it 'returns false if the element is not in the list' do
      @list.exists?('f').should be_false
    end
  end

  context 'finding the index of an element' do
    before do
      @list.add('a')
      @list.add('b')
      @list.add('c')
      @list.add('d')
    end   

    it 'returns 0 for the index of the head element' do
      @list.index_of(@list.head.element).should == 0
    end

    it 'returns the index of an element if it is in the list' do
      @list.index_of('c').should == 2
    end
    
    it 'returns nil for the index if the element is not in the list' do
      @list.index_of('f').should be_nil
    end
  end
end

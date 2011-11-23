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
end

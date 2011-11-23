require 'rspec'
require 'binary_tree'

describe BinaryTree do
  before do
    @tree = BinaryTree.new
  end

  context 'adding elements' do
    it 'adds a single element' do
      @tree.add(5)

      @tree.root.value.should == 5
    end

    it 'adds an element to the left side of the root' do
      @tree.add(5)
      @tree.add(3)

      @tree.root.left.value.should == 3
    end

    it 'adds an element to the right side of the root' do
      @tree.add(5)
      @tree.add(7)

      @tree.root.right.value.should == 7
    end

    it 'adds elements to the left and right of the root' do
      @tree.add(5)
      @tree.add(3)
      @tree.add(7)

      @tree.root.left.value.should == 3
      @tree.root.right.value.should == 7
    end

    it 'adds several elements to the tree' do
      pending('im too lazy to write the assertions for this one right now')

      @tree.add(5)
      @tree.add(3)
      @tree.add(7)
      
      @tree.add(1)
      @tree.add(2)
      @tree.add(4)

      @tree.add(9)
      @tree.add(8)
    end
  end

  context 'removing elements' do

  end

  context 'traversals' do
    context 'preorder' do
    end

    context 'inorder' do
    end

    context 'postorder' do
    end
  end

  context '#height' do

  end

  context 'depth of an element' do

  end
end

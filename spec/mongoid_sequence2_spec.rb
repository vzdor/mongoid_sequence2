require 'spec_helper'
require_relative 'model_with_seq'
require_relative 'model_with_seq_2'

describe 'mongoid sequence' do
  it 'should be initialised to 1 on save' do
    m = ModelWithSeq.new
    m.my_seq_field.should be_nil
    m.save
    m.my_seq_field.should == 1
  end

  it 'should be incremented on save' do
    100.times do
      m = ModelWithSeq.new
      m.save
    end

    ModelWithSeq.all.map {|m| m.my_seq_field}.sort.should == (1..100).to_a
  end

  it 'should handle more than one model with a sequence' do
    50.times do
      m = ModelWithSeq.new
      m.save
    end
    50.times do
      m2 = ModelWithSeq2.new
      m2.save
    end
    50.times do
      m = ModelWithSeq.new
      m.save
    end

    ModelWithSeq.all.map {|m| m.my_seq_field}.sort.should == (1..100).to_a
    ModelWithSeq2.all.map {|m| m.another_seq_field}.sort.should == (1..50).to_a
  end

end

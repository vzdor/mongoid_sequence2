class ModelWithSeq2
  include Mongoid::Document
  include Mongoid::Sequence

  field :another_seq_field, type: Integer
  sequence :another_seq_field
end

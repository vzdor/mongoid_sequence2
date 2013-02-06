class ModelWithSeq
  include Mongoid::Document
  include Mongoid::Sequence

  field :my_seq_field, type: Integer
  sequence :my_seq_field
end

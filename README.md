# Mongoid Sequence

mongoid 4.0 - seems ok.

## Gemfile

gem 'mongoid-sequence', github: "vzdor/mongoid_sequence2", require: 'mongoid_sequence2

## Usage

```ruby
class Message
  include Mongoid::Document
  include Mongoid::Sequence

  sequence :_id
end

m1 = Message.create
m1._id # => 1
```

Or with Base62:
```ruby
class Message
  include Mongoid::Document
  include Mongoid::Sequence

  sequence :_id

  def set_sequence
    super
    self._id = Base62.encode(_id)
  end
end
```

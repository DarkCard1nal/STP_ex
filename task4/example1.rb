# frozen_string_literal: true

data = { name: 'Alice', age: 25, scores: [90, 80, 100] }

# Serialization to a string
serialized_data = Marshal.dump(data)

# Deserialization from a string
deserialized_data = Marshal.load(serialized_data)

puts deserialized_data # => {:name=>"Alice", :age=>25, :scores=>[90, 80, 100]}

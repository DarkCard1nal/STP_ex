# frozen_string_literal: true

data = { name: 'Bob', age: 30 }

# Serialization to a File Serialized_data.marshal
File.open('Serialized_data.marshal', 'wb') do |file|
	Marshal.dump(data, file)
end

# Deserialization from a File Serialized_data.marshal
File.open('Serialized_data.marshal', 'rb') do |file|
	loaded_data = Marshal.load(file)
	puts loaded_data # => {:name=>"Bob", :age=>30}
end

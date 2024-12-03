# frozen_string_literal: true

# DynamicMethods example
class DynamicMethods
	def method_missing(method_name, *args, &block)
		if method_name.to_s.start_with?('say_')
			action = method_name.to_s.split('_', 2).last
			puts "I say #{action.capitalize}!"
		else
			super # Викликає стандартну поведінку, якщо метод не оброблений
		end
	end

	def respond_to_missing?(method_name, include_private = false)
		method_name.to_s.start_with?('say_') || super
	end
end

obj = DynamicMethods.new
obj.say_hello # => "I say Hello!"
obj.say_goodbye # => "I say Goodbye!"
obj.unknown_method # => NoMethodError

# frozen_string_literal: true

# class Publisher - Subject that is monitored by observers
class Publisher
	def initialize
		@observers = []
	end

	def add_observer(observer)
		@observers << observer
	end

	def remove_observer(observer)
		@observers.delete(observer)
	end

	def notify_observers(news)
		@observers.each { |observer| observer.update(news) }
	end

	def publish(news)
		puts "Publishing news: #{news}"
		notify_observers(news)
	end
end

# class Subscriber - Observer
class Subscriber
	def initialize(name)
		@name = name
	end

	def update(news)
		puts "#{@name} received news: #{news}"
	end
end

# Usage
news_publisher = Publisher.new
alice = Subscriber.new('Alice')
bob = Subscriber.new('Bob')

news_publisher.add_observer(alice)
news_publisher.add_observer(bob)

news_publisher.publish('Ruby update released!')
news_publisher.publish('New gem version available!')

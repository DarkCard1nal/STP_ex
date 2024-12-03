# frozen_string_literal: true

require 'observer'

# class Publisher - Subject that is monitored by observers
class Publisher
	include Observable

	attr_reader :news

	def publish(news)
		@news = news
		changed
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

# Creating a Publisher object
news_publisher = Publisher.new

# Create multiple observers
subscriber1 = Subscriber.new('Alice')
subscriber2 = Subscriber.new('Bob')

# Adding observers to Publisher
news_publisher.add_observer(subscriber1)
news_publisher.add_observer(subscriber2)

# News publishing
news_publisher.publish('Ruby update released!')
news_publisher.publish('New gem version available!')

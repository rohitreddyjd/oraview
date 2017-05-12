#!/usr/bin/env ruby
# encoding :utf-8


require "bunny"

#Connect to RabbitMQ server

conn =  Bunny.new
conn.start

#Create a channel

ch = conn.create_channel

#declare a queue

q = ch.queue("hello")
ch.default_exchange.publish("Hello World!", :routing_key => q.name)
puts " [x] Sent 'Hello World!'"

conn.close


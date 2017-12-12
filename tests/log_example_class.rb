require 'rubygems'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout
Logging.logger.root.level = :info

#Logging.logger['FirstClass'].level = :warn
Logging.logger['SecondClass'].level = :debug

class FirstClass
  def initialize
    @logger = Logging.logger[self]
    # @logger.add_appenders Logging.appenders.stdout
  end

  def some_method
    puts "some_method"
    @logger.warn "WARN: FirstClass.some_method was called on #{self.inspect}"
    @logger.info "INFO: FirstClass.some_method was called on #{self.inspect}"
    @logger.debug "DEBUG: FirstClass.some_method was called on #{self.inspect}"
  end
end

class SecondClass
  def initialize
    @logger = Logging.logger[self]
    # @logger.add_appenders Logging.appenders.stdout
  end

  def another_method
    puts "another_method"
    @logger.info "INFO: SecondClass.another_method was called on #{self.inspect}"
    @logger.debug "DEBUG: SecondClass.another_method was called on #{self.inspect}"
  end
end

first = FirstClass.new
second = SecondClass.new

first.some_method
second.another_method

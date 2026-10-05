require "bundler/setup"
require_relative "database"

Dir[File.join(__dir__, "../models/*.rb")].sort.each { |f| require f }
Dir[File.join(__dir__, "../services/*.rb")].sort.each { |f| require f }

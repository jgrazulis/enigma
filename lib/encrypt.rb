require './lib/enigma'
require 'date'
require './lib/generator'
require './lib/abc_index'

enigma = Enigma.new
handle = File.open(ARGV[0], "r")
incoming_text = handle.read
handle.close
encrypted_text = enigma.encrypt(incoming_text)
writer = File.open(ARGV[1], "w")
writer.write(encrypted_text[:encryption])
writer.close
puts "Created #{ARGV[1]} with #{encrypted_text[:key]} and #{encrypted_text[:date]}"

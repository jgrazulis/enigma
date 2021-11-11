class Enigma
  def initialize(encrypt)
    @message = encrypt[:message]
    @key = encrypt[:key]
    @date = encrypt[:date]
  end
end

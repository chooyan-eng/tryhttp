require 'socket'

class Tryhttp::TcpClient
  attr_reader :host, :port, :socket

  def initialize(host, port)
    @host = host
    @port = port
  end

  def connect()
    @socket = TCPSocket.open(@host, @port) 
  end

  def write(data)
    @socket.sendmsg data
  end

  def wait_for_receive()
    loop do
      data = @socket.gets
      yield data
    end
  end

  def close()
    @socket.close
  end
end

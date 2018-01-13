require 'socket'

class Tryhttp::TcpServer
  attr_reader :port, :server, :socket 

  def initialize(port)
    @port = port
  end

  def open()
    @server = TCPServer.new(@port)
  end

  def accept()
    @socket = @server.accept
  end

  def wait_for_receive()
    loop do
      data = @socket.gets
      yield data
    end 
  end

  def write(data)
    @socket.print(data)
  end

  def close()
    @socket.close
  end
end

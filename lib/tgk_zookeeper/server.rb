module TGK
  module Zookeeper
    class JavaMissing; end

    class Server
      PID_FILE = './zookeeper.pid'
      attr_accessor :pid

      def initialize
        raise JavaMissing if java.empty?
        @pid = find_current_pid
      end

      def java
        ENV['java'].chop
      end

      def find_current_pid
        IO.read(PID_FILE) if File.exists?(PID_FILE) 
      end
    end
  end
end

module Whenever
  class Log
    attr_reader :kind

    def initialize kind, path
      @kind = kind
      @path = path
    end

    def name
      "#{@kind}_log"
    end

    def tail
      File.read(@path)
    end

    def clear
      File.write(@path, nil)
    end
  end
end

require 'whenever/job'

module Whenever
  class Job
    attr_reader :options, :template, :at, :roles
  end
end

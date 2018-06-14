require "commando/version"

require 'dry-monads'

module Commando
  autoload :Version,            "commando/version"
  autoload :RunCommand,         "commando/run_command"
  autoload :Fn,                 "commando/fn"
end

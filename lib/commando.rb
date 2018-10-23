require "commando/version"

require "funcify"
require 'dry-monads'

module Commando
  autoload :Version,            "commando/version"
  autoload :RunCommand,         "commando/run_command"

  Fn = Funcify::Fn
  
end

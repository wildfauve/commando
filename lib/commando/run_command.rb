module Commando

  class RunCommand

    include Dry::Monads::Result::Mixin

    def call(command, parsing_fn=Fn.identity)
      result = %x( #{command} )
      status = $?
      status.exitstatus == 0 ? Success(parsing_fn.(result)) : Failure(result)
    end

  end

end

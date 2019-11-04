require "ruboty/indecisive/actions/indecisive"

module Ruboty
  module Handlers
    class Indecisive < Base
      on(
        /(random) (?<keyword>.+)*/,
        name: 'indecisive',
        description: 'choose randome one'
      )

      def indecisive(message)
        Ruboty::Indecisive::Actions::Indecisive.new(message).call
      end
    end
  end
end

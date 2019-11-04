module Ruboty
  module Indecisive
    module Actions
      class Indecisive < Ruboty::Actions::Base
        def call
          message.reply(indecisive)
        end

        private

        def indecisive
          message[:keyword].split.sample
        end
      end
    end
  end
end

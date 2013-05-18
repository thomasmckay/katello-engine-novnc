module NoVnc
  class NoVncController < ::ApplicationController

    def rules
      {
        :home => lambda{true},
      }
    end

    def home
    end

  end
end

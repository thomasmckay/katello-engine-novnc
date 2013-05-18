# NoVnc
#   Home
module NoVnc
  module Navigation

    class NoVnc < ::Navigation::Menu
      def initialize(organization)
        @type          = 'dropdown'
        @key           = :no_vnc
        @display       = _("No VNC")
        @authorization = lambda{ organization && organization.readable? }
        @items         = [
                          ::NoVnc::Navigation::Home.new(organization),
                         ]
        super
      end
    end

    class Home < ::Navigation::Item
      def initialize(organization)
        @key           = :no_vnc_home
        @display       = _("Home")
        @authorization = lambda{ organization && organization.readable? }
        @url           = no_vnc_home_path
      end
    end

  end
end

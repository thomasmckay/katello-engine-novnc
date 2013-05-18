module Welcome
  class Engine < ::Rails::Engine
    initializer :finisher_hook do |engine|
      resources = Dir[File.dirname(__FILE__) + '/navigation/*.rb']
      resources.uniq.each{ |f| require f }
      ::Navigation::Additions.insert_before(:dashboard, NoVnc::Navigation::NoVnc)
    end
  end
end

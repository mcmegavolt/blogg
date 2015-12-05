module Blogg
  class Engine < ::Rails::Engine
    isolate_namespace Blogg
    require "friendly_id"
  end
end

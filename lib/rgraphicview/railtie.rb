# frozen_string_literal: true

# lib/railtie.rb
require "rgraphicview"
require "rails"

module Rgraphicview
  class Railtie < ::Rails::Railtie
    railtie_name :rgraphicview

    rake_tasks do
      path = File.dirname(__dir__)
      Dir.glob(%W[#{path}/rgraphicview/tasks/*.rake #{path}/rgraphicview/tasks/rgraphicview/*.rake]).each { |f| load f }
    end
  end
end

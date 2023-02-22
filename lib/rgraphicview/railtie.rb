# frozen_string_literal: true

# lib/railtie.rb
require "rgraphicview"
require "rails"

module Rgraphicview
  class Railtie < ::Rails::Railtie
    railtie_name :rgraphicview

    rake_tasks do
      path = File.dirname(__dir__)
      Dir.glob("#{path}/rgraphicview/tasks/*.rake").each { |f| load f }
    end
  end
end

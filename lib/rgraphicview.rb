# frozen_string_literal: true

require_relative "rgraphicview/version"

module Rgraphicview
  class Error < StandardError; end
  # Your code goes here...
  # Been able to generate an html file with it's css
  # Been able to get in app folder and navigate in it.
  # Have an idea of what you want your canvas to look like
  class HtmlGenerator
    def initialize(title, stylesheet)
      @title = title
      @stylesheet = stylesheet
    end

    def generate(output_dir)
      Dir.mkdir(output_dir) unless File.exists?(output_dir)

      File.open(File.join(output_dir, 'index.html'), 'w') do |f|
        f.write(ERB.new(html_template).result(binding))
      end

      File.open(File.join(output_dir, 'style.css'), 'w') do |f|
        f.write(css_template)
      end
    end

    private

    def html_template
      <<-TEMPLATE
        <!DOCTYPE html>
        <html>
          <head>
            <title><%= @title %></title>
            <link rel="stylesheet" type="text/css" href="style.css">
          </head>
          <body>
            <h1><%= @title %></h1>
            <p>Hello, World!</p>
          </body>
        </html>
      TEMPLATE
    end

    def css_template
      <<-TEMPLATE
        body {
          background-color: #f0f0f0;
          font-family: Arial, sans-serif;
        }

        h1 {
          color: #333;
        }

        p {
          font-size: 1.2em;
        }
      TEMPLATE
    end
  end
end
# I would like to write a ruby gem and once installed we could run some scripts from our gem inside a ruby on rails project.


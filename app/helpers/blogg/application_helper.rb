require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

module Blogg
  module ApplicationHelper

    class HTML < Redcarpet::Render::HTML
      include Rouge::Plugins::Redcarpet
      def rouge_formatter(opts={})
        opts ={
          line_numbers: true,
          wrap: true,
        }
        Rouge::Formatters::HTML.new(opts)
      end
    end

    def markdown(text)
      renderer = HTML.new(hard_wrap: true, filter_html: true)
      options = {
        autolink: true,
        no_intra_emphasis: true,
        fenced_code_blocks: true,
        lax_html_blocks: true,
        strikethrough: true,
        superscript: true
      }
      Redcarpet::Markdown.new(renderer, options).render(text).html_safe
    end

  end
end

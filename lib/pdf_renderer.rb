require 'action_controller'
require "prawn"

Mime::Type.register "application/pdf", :pdf
ActionController::Renderers.add :pdf do |filename, options|
  pdf = Prawn::Document.new
  pdf.text render_to_string(options), :inline_format => true
  send_data(pdf.render, :filename => "#{filename}.pdf",
                        :type => "application/pdf",
                        :disposition => "attachment")
end

module PdfRenderer
  autoload(:Base, "pdf_renderer/base")
end

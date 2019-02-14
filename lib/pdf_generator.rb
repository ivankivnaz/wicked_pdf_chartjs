require 'wicked_pdf'
require 'pry'

WickedPdf.config = {exe_path: "#{ENV['GEM_HOME']}/bin/wkhtmltopdf"}

chartjs_template = '/Users/nazariiivankiv/dev/wicked_pdf_chartjs/lib/chartjs.html'
plotlyjs_template = '/Users/nazariiivankiv/dev/wicked_pdf_chartjs/lib/plotlyjs.html'

pdf = WickedPdf.new.pdf_from_html_file(
  chartjs_template,
  page_size: 'A4',
  show_as_html: true
)

File.open('tmp/test.pdf', 'wb') do |file|
  file << pdf
end

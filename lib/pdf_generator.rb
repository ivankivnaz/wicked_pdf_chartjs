require 'wicked_pdf'
require 'pry'

WickedPdf.config = {
  exe_path: '/usr/local/bin/wkhtmltopdf'
}

chartjs_template = '/home/naz/dev/pdf_with_charts/lib/chartjs.html'
plotlyjs_template = '/home/naz/dev/pdf_with_charts/lib/plotlyjs.html'

pdf = WickedPdf.new.pdf_from_html_file(
  chartjs_template,
  page_size: 'A4',
  show_as_html: true
)

File.open('tmp/test.pdf', 'wb') do |file|
  file << pdf
end

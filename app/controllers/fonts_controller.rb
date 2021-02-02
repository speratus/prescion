class FontsController < ApplicationController
  def materialdesignicons_webfont
    send_file(Rails.root.join('node_modules', '@mdi', 'font', 'fonts', "#{params[:ttf]}.ttf"))
  end
end

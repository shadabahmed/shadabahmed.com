class MainController < ApplicationController
  def index
    @contents = {}
    Content.all.each {|content| @contents[content.key.to_sym] = content }
  end
end

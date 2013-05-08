require 'rubygems'
require 'sinatra/base'

class Main < Sinatra::Base
  get '/' do
    File.read(File.join('public', 'index.html'))
  end
end
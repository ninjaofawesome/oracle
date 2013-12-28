require 'bundler'
Bundler.require

Dir["./lib/*"].each {|file| require file }


module Fortuneteller

	class Oracle < Sinatra::Application

		get '/' do
			erb :index
		end

		post '/answer' do
			test= Fortune.new(params)
			if test.calculate == nil
				"the number is nil"
			end	
		


			erb :results
		end



	end

end#<---this is the end of the module
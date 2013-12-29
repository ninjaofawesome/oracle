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
			test.calculate

			if test.calculate < 5
				erb :bad
			elsif test.calculate >= 6 && test.calculate <= 8
				erb :mediocre
			elsif test.calculate >= 9 && test.calculate <= 11
				erb :good
			elsif test.calculate >=12 && test.calculate <= 14
				erb :excellent
			else test.calculate
				erb :spectacular
			end



			# erb :results
		end



	end

end#<---this is the end of the module
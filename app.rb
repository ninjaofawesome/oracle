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
			result = test.calculate
			


			if result < 5
				erb :bad
			elsif result >= 6 && result <= 8
				erb :mediocre
			elsif result >= 9 && result <= 11
				erb :good
			elsif result >= 12 && result <= 14
				erb :excellent
			else result
				erb :spectacular
			end

     
        # erb :results
      end



			# erb :results
		end



	end

end#<---this is the end of the module
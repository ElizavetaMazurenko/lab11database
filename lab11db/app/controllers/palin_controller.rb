class PalinController < ApplicationController
  def inputdb; end

  def outputdb
  	@num = params[:arr]

	if /[0-9]+/.match(@num).nil?
		@result = "ОШИБКА. Введено не число"
	else
	  	if palsmth = Palindrom.find_by_num(@num)
	  		@result = ActiveSupport::JSON::decode(palsmth.palind)
	  	else
	  		@result = (0..@num.to_i).select { |x| (x.to_s.reverse == x.to_s) && ((x**2).to_s.reverse == (x**2).to_s) }
	  		arr = @result.map {|x| x**2}
	  		palsmth = Palindrom.create :num => @num, :palind => ActiveSupport::JSON::encode( @result ), \
	  		:sq => ActiveSupport::JSON::encode( arr )

	  		palsmth.save
	  	end
	end

  	#@alll = results()
  end

  	def results
  		@result = Palindrom.all
  		@alll = render xml: @result
  	end

  
end

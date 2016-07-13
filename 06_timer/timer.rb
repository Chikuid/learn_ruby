class Timer
	  attr_accessor :seconds, :minutes, :hours

	  def initialize
	  	@seconds = 0
	  	@minutes = 0
	  	@hours = 0

	  end

	  def time_string
	  	@minutes = @seconds/60
	  	@seconds -= @minutes*60

	  	@hours = @minutes/60
	  	@minutes -= @hours*60

	  	if @seconds<10
	  		@seconds_str = "0#{@seconds}"
	  	else
	  		@seconds_str = @seconds.to_s
	  	end

	  	if @minutes<10
	  		@minutes_str = "0#{@minutes}"
	  	else
	  		@minutes_str = @minutes.to_s
	  	end

	  	if @hours<10
	  		@hours_str = "0#{@hours}"
	  	else
	  		@hours_str = @hours.to_s
	  	end

	  	return "#{@hours_str}:#{@minutes_str}:#{@seconds_str}"
	  end
end
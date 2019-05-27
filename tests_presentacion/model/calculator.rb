class Calculator

	def name
		'TDL Calculator'
	end

	def sum(x,y)
		x+y
	end

	def subtract(x,y)
		x-y
	end

	def divide(x,y)
		x/y
	end

	def multiply(x,y)
		x*y
	end

	def power(x,y)
		x**y
	end

	def avg(list_numbers)
		sum = 0
		list_numbers.each{|num| sum+= num} 	
		sum / list_numbers.length()
	end

	def avg_from_file(path)
		sum = 0
		counter = 0
		f = File.open(path, "r")
		f.each_line do |line|
			sum += line.to_i
			counter+=1
		end
		f.close
		sum / counter.to_f
	end

end


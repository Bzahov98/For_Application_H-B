require 'csv'

my = [[],[]]
my = CSV.read (ARGV[0])
wanted = ARGV[1].to_s
a = my.to_s.gsub(/\W/,'')

counter = 0
my.each.with_index do |row,i| 
	#if is at one line
	if (my[i].to_s.downcase.gsub(/\W/,'')).include?(wanted)
		counter = counter + 1
	elsif my[i].to_s.downcase.gsub(/\W/,'').reverse.include?(wanted)
		counter = counter + 1
	end
	
	row.each.with_index do |cell, j|
	     if (i..j).collect { |i| my[i][i] }.to_s.gsub(/[\W]/,'').include?(wanted)
	          counter = counter + 1
	     elsif ((i..j).collect { |i| my[i][i] }.to_s.gsub(/[\W]/,'').reverse.include?(wanted))
		     counter = counter + 1
	     end
          		#puts my[i][j].to_s.downcase.gsub(/\W/,'')
          		#if (my[i][j].to_s.downcase.gsub(/\W/,'')).include?(wanted)
				#	counter = counter + 1
				#elsif my[i][j].to_s.downcase.gsub(/\W/,'').reverse.include?(wanted)
				#	counter = counter + 1
       		     #end
end
end


puts counter
#dava mi samo diagonala 0,0 1,1 2,2 3,3 
          	#	b = (i..j).collect { |i| my[i][i] }.to_s.gsub(/[\W]/,'')
          	#	puts b
          	#	puts

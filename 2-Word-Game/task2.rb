# run with: ruby <file_name> <csv_file> <word>
require'csv'
input = CSV.read (ARGV[0])
@wanted = ARGV[1].to_s
@answer = 0
input=[[],[]]
regx  = /(\],( )\[)/ # remove ], [
regx2 = /[^.\w]/     # remove all without lettering and points

input = CSV.read (ARGV[0])
wanted = ARGV[1].to_s.downcase

@answer = 0
@length = 0

input.each.with_index do |row,i| 
	 @length = i
	#row.each.with_index do |cell, j|
	#end
end

def is_match? array
	#puts "In function #{array}"
	array.each_index do |z|
		if (array[z].include?(@wanted.downcase)) || (array[z].include?(@wanted.downcase.reverse))
			#puts array[z]
			@answer+=1
			return 0
		else return 1
		end
	end
end

#functions
	horisontal_get = input.to_s.gsub(regx,'.').gsub(regx2,'').downcase.split('.')
	vertical_get= input.transpose.inspect.to_s.gsub(regx,'.').gsub(regx2,'').downcase.gsub(regx2,'').split('.')
	diagonal1_get  = (0..@length-1).collect { |x| input[x][x] }.to_s.downcase.gsub(regx2,'').split()
	#diagonal2_get 
#puts "before: horis-#{horisontal_get}!vert #{vertical_get} ! diag1 #{diagonal1_get}"

	is_match? horisontal_get
	is_match? vertical_get
	is_match? diagonal1_get
   #is_match? diag2 = (0.. @length-1)(@length-1..0).each { |x,y| input[x][y] }.to_s.gsub(regx2,'').split
puts "\n\tThe word \"#{@wanted}\" was found > #{@answer} < time/s"
puts "\tCounter include different case, and reversed word \"#{@wanted.downcase.reverse}\" \n\t"

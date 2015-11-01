#start with: ruby <file_name> <"start_point"> <"task">

start_point = ARGV[0].to_s
cript = ARGV[1]
start_point.gsub(/\D[^,]/,'').split(',')
x,y = start_point[0].to_i,start_point[1].to_i

def reverse_on?
	if (@reverse_counter == 0) || (@reverse_counter % 2 == 0)
		 return false
	else return true
	end
end

@reverse_counter = 0

cript.each_char do |a|
    #puts "(#{x},#{y})"
    case cript[a]
     	
     	when '~'
     		 @reverse_counter += 1
       	when '>'
     		if reverse_on? 
     			 x -= 1
     		else x += 1
     		end
       	when '<'
       		if reverse_on? 
     			 x += 1
     		else x -= 1
     		end
     	when 'v'
     		if reverse_on? 
     			 y -= 1
     		else y += 1
     		end
     	when '^'
     		if reverse_on? 
     			 y += 1
     		else y -= 1
			end
	end
	
end
puts "(#{x},#{y})"

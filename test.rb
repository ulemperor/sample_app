command = " Begin "
s = []
while command !=""
	command = gets.chomp
	s.push(command)
end

s.sort.each do |aaa|
	puts aaa
end
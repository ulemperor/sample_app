def bomBOM (&block)
	hours = Time.now.hour % 12
	hours = 12 if hours == 0 
	hours.times {block.call}
end

bomBOM do
	puts "BOM!"
end

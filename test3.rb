def log desc, &block
	$gl.times {print "\t"}
	puts "Start : #{desc}"
	$gl = $gl +1
	res = block.call
	$gl = $gl -1
	$gl.times {print "\t"}
	puts "Stop: #{desc}, return:  #{res}"
end

$gl = 0
log "Block1" do 
	log "Block2" do
		log "Block3" do
			$gl.times {print "\t"}
			puts "2*2=4"
			z = 3
		end
		y = 2
	end	
	x = 1
end
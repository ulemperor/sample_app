def log desc, &block
	puts "Start : #{desc}"
	res = block.call
	puts "Stop: #{desc}, return:  #{res}"
end


log "Block1" do 
	p "1+1=2"
	log "Block2" do
		puts "2*2=4"
		y = 2
	end	
	x = 1
end
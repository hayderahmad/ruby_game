comment = "Ruby is fun!"
formated_time= Time.new.strftime("%A %m/%d/%Y at %I:%M%p")
3.times do
    puts comment.upcase
end

puts "game started on #{formated_time}"

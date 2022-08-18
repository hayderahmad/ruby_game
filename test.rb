
require "async"

def add(a,b)
    puts "#{a+b}"
    sleep 5
end

start = Time.now
Async do |task|
    task.async {add(1,2)}
    sleep 1
    task.async {add(3,2)}
    sleep 1
    task.async {add(5,2)}
end
puts "duration #{Time.now - start}"


require 'pry'
def line(katz_deli)
    return puts "The line is currently empty." if katz_deli.length == 0
    names = []
    katz_deli.each.with_index do |name, index|
      names << "#{index+1}. #{name}"
    end #each
    puts "The line is currently: " + names.join(" ")
end #method


def take_a_number(katz_deli, name)
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    puts "There is nobody waiting to be served!" if katz_deli.length == 0

    puts "Currently serving #{katz_deli[0]}." if katz_deli.length >= 1
    katz_deli.delete_at(0)
end #method

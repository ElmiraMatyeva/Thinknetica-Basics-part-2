print "Enter day of month: "
day = gets.chomp.to_i
print "Enter number of month: "
month = gets.chomp.to_i
print "Enter year: "
year = gets.chomp.to_i

days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

days[1] = 29 if ( year % 400 == 0 || year % 100 !=0 ) && ( year % 4 == 0 )

date = 0
var = 0

while var < month-1
  date += days[var]
  var += 1
end

date += day

p "You entered day number #{date}"


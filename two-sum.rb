#
# Problem :  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

class TwoSum
  def two_sum(nums, target)
    result = []
    nums.each_with_index do |ele, index|
      val = target - ele
      unless nums.index(val).nil?
        next if index == nums.index(val)
        result << index
        result << nums.index(val)   
        break
      end
    end
    result
  end

  def initialize
    puts "Case 1"
    nums = nums = [2,7,11,15]
    target = 9
    result  = two_sum(nums, target)
    puts "Result =  #{result}"

    puts "Case 2"
    nums = nums = [3,2,4]
    target = 6
    result  = two_sum(nums, target)
    puts "Result =  #{result}"

    puts "Case 3"
    nums = nums = [3,3]
    target = 6
    result  = two_sum(nums, target)
    puts "Result =  #{result}"
  end
end

begin
  TwoSum.new
rescue => exception
  puts "Error occured while executing the script"    
end

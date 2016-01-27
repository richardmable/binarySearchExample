#given a sorted array n, find x as efficiently as possible

def search (the_array, number_to_find)
	#remember that these vars represent the index values of the array
	starting = -1
	ending = the_array.length
	middle = (ending+starting)/2
	puts ending
	#while we still have a range to search for do this loop
	while starting+1 != ending
		puts "Starting: #{starting} Ending: #{ending}"
		if the_array[middle] > number_to_find
			#if the number we're looking for is less than the middle number
			#the middle becomes the ending point of the search
			ending = middle
		elsif the_array[middle] < number_to_find
			#if the number we're looking for is greater than the middle number
			#the starting point will be the middle of the original array
			starting = middle	
		else
			return true
		end

	#add starting + ending to find middle for initial and each time through
	middle = (starting + ending) / 2
	end
	#if we exit the while loop we have not found the number
	return false
end







#using #index

def find_number_by_index(array, numberToFind)
	result = array.index { |x| x == numberToFind }
	return result
end

#using #bsearch
#good SO page on using this http://stackoverflow.com/questions/23221965/ruby-2-0-0-arraybsearch-behavior
#x is intial middle number of array. checks to see if x is equal to the number.
#if not, will return false, looks to right side of array (array is sorted, so must be towards the right)
#then continues this.
#if returning true when first checking, will move to left side of block, and search that way 
def find_number(array, numberToFind)
	result = array.bsearch { |x| x == numberToFind }
	return result
end

@sortedArray = []

(1..100000000).each do |x|
	@sortedArray.push(x)
end

find_number_by_index(@sortedArray, 9)
find_number(@sortedArray, 87)
search(@sortedArray, 4204)


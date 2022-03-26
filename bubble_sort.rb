array = [4,3,78,2,0,2]
#Bubble sorts an array

def bubble_sort(arr)
  still_sorting = false 
  # Will be switched to true unless sorting is complete
  index = 0
  #If item to left is larger than right the array elelments are swapped and still sorting is set to true
  while index < (arr.length - 1)
    if arr[index] > arr[index+1]
      arr[index], arr[index+1]= arr[index+1],arr[index]
      still_sorting = true;
    end
    index +=1
    end
  bubble_sort(arr) if still_sorting
  #Method is called recursively reseting the still_sorting boolean unless the whole array is sorted
  end

bubble_sort(array)
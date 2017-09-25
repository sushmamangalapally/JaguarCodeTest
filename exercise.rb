class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    #so if str is "hi my name is soandso and Someperson"
    #we want to output to "hi my name is marklar and Marklar"
    getarray = str.split(" ") #will convert string into array of words
      getarray.each do |i| #loop
        index = getarray.index(i) 
        if i.length > 4 #if the word exceeds 4 characters
          if /[[:upper:]]/.match(i[0]) #if the word has capitalized first letter
            if /[[:punct:]]/.match(i[i.length-1]) #if the word has punctuation in the end
              getarray[index] = "Marklar"+i[i.length-1]
            else
              getarray[index] = "Marklar"
            end
          else
            if /[[:punct:]]/.match(i[i.length-1]) #if the word has punctuation in the end
              getarray[index] = "marklar"+i[i.length-1]
            else
              getarray[index] = "marklar"
            end
          end
        end
      end
      
      return getarray.join(" ") #will convert  array of words into string
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    add = 1 #set first number of Fibonacci sequence
    newarr = [] #create a new array to give
    newarr.push(add) #push 1 into that new array
    count = 0 #initialize while loop
    getsum = 0 #get the sum

    while count < (nth-1)  do #looping until nth number
      if newarr[count]%2 == 0 #checking if the number is even
        getsum += newarr[count] #adding the sum
      end
      newarr.push(add) #we add the number into the looop
      add = add+newarr[count] #add number for Fibonacci sequence
      count +=1
    end
    
    return getsum
    end

end

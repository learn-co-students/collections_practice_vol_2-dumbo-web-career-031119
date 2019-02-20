def begins_with_r(array)
  array.all?{|string|string.include?'r'}
end

def contain_a(array)
  array2=[]
  array.each do |item|
    if item.include?'a'
      array2.push(item)
    else
  end
end
  array2
end 

def first_wa(array)
 array.find{|item| item.to_s.include?"wa"}
end

def remove_non_strings(array)
 array.keep_if{|item| item.is_a? String}
 end
  
 def count_elements(array)
   i=0
   array2=[]
   array.each do{ |item|
   if item=array.[i]
     
    
   else
     i=i+1
   end
     
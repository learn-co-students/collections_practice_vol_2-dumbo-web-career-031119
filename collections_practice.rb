require 'pry'

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
  array.each do |key|
    key[:count]= 0
    array.each do |hash|
    if hash[:name]== key[:name]
      key[:count] +=1
    end 
  end 
end.uniq
 end
 
 def merge_data(keys,data)
   hash={}
     data[0].map do |key,value|
       keys.map do |name_hash|
         if name_hash[:first_name]== key
           hash=value.merge(name_hash)
   end 
 end
 hash
 end
 end
 
 def find_cool(cool)
   cool.each do |data|
     if data[:temperature]=="cool"
       return [data]
 end 
 end 
 end
 
 def organize_schools(schools)
   answer={}
   schools.each do |school,location|
     if answer.key?(location[:location])
       answer[location[:location]] << school
     else 
       answer[location[:location]] = [school]
   end
end 
answer
end
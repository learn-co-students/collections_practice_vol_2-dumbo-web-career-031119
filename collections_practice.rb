require 'pry'

def begins_with_r(arr)
  arr.each {|x|
    if !x.start_with?("r")
      return false 
    end
  }
  return true 
end

def contain_a(arr)
  arr.delete_if {|x| !x.include?("a")}
  arr
end

def first_wa(arr)
  arr.find {|x| x[0,2] == "wa"}
end

def remove_non_strings(arr)
  arr.delete_if {|x| !x.is_a?(String)}
end

def count_elements(arr)
  ans = Array.new
  a = arr.each_with_object(Hash.new(0)) {|x,y| y[x[:name]]+=1}
  a.each {|x,y| ans.push({count: y, name: x})}
  ans
end

def merge_data(keys,data)
  keys.each_with_index.collect {|x,y| x.merge(data[0][(keys[y][:first_name])])}
end

def find_cool(arr)
  arr.reject{|x| x[:temperature] != "cool"}.collect {|x| x}
end

def organize_schools(hash)
  ans = hash.group_by {|x,y| y[:location]}
  ans.each {|x,y| 
    y.flatten!.delete_if {|x|
      !x.is_a?(String)
    }
  }
  ans
end
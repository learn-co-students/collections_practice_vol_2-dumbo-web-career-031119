def begins_with_r(array)
  array.select do |word|
    word.start_with?('r')
  end == array
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
#  array.select do |element|
#    element.class = String
#  end
end

require "pry"

def count_elements (array)
  array.uniq.each do |i|
    count = 0
      array.each do |i2|
        if i2 == i
          count += 1
        end
      end
      i[:count] = count
  end
end

def merge_data(keys, data)
  merged = []
  keys.each do |key|
    data.first.map do |key2, value|
      if key.values[0] == key2
        merged << key.merge(value)
      end
    end
  end
  merged
end

def find_cool(hash)
  hash.collect do |k|
    if k[:temperature] != "cool"
      hash.delete(k)
    end
  end
  hash
end

def organize_schools(hash)
  organized = {}
  schools.collect do |school,location|
    organized[location[:location]] = []
  end
  organized.each do |city,array|
    schools.each do |schoolA,locationA|
      if city == locationA[:location]
        array << schoolA
      end
    end
  end
end

require "pry"
def begins_with_r(word)
  word.all? { |e| e.start_with?("r") }
end

def contain_a(words)
  words.find_all { |e| e.include?("a") }
end

def first_wa(element)
  element.find { |e| e.to_s.include?('wa') }
end

def remove_non_strings(element)
  element.delete_if { |ele| ele.class != String }
end

def count_elements(element)
    counts = Hash.new(0)
    element.each { |element| counts[element] += 1 }
  return_array = []
  counts.each do |element,num|
    element.each { |key, val| return_array << {key => val, :count => num} }
  end
  return_array
end

def merge_data (keys, data)
  merged = []

    data.each do |hash|
      hash.each do |name, info|
        keys.each do |val|
          merged << val.merge(info) if val.values[0] == name
        end
      end
    end
    merged
end

def find_cool(cool)
  cool.select do |temp|
    temp[:temperature] == "cool"
  end
end

def organize_schools(schools)
  sort = {}
  # schools.each do |school, location|
  #   sort[v[:location]] = []
  #   sort.each do |loc, arr|
  #       arr << k
  #
  #   end
  # end
schools.map do |school, location|
  location.map do |k, v|
    unless sort.key?(v)
      sort[v] = [school]
    else
      sort[v] << school
    end
  end
end
  sort
end

# your code goes here
def begins_with_r(array)
  array.each do |i|
    if i.start_with?("r") == false
      return false
    end
  end
  true
end


def contain_a(array)
  nuarray = []
  array.collect do |i|
    if i.include?("a")
      nuarray << i
    end
  end
  nuarray
end

def first_wa(array)
  array.detect do |i|
    i.to_s.start_with?("wa")
    end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements(array)
  array.uniq.each do |i|
    counter = 0
      array.each do |i2|
        if i2 == i
          counter += 1
        end
      end
      i[:count] = counter
    end
end

  def find_cool(cool)
    cool.select do |i|
      i.any? do |key, value|
        value == "cool"
      end
    end
  end

  def merge_data(keys, data)
    merge = []
    keys.each do |x|
      data.first.collect do |x2, v|
        if x.values[0] == x2
        merge << x.merge(v)
      end
    end
  end
    merge
end


  def organize_schools(schools)
    organizer = {}
    schools.each do |school,loc|
    if organizer[loc[:location]]
      organizer[loc[:location]] << school
    else
      organizer[loc[:location]] = [school]
    end
  end
  organizer
end

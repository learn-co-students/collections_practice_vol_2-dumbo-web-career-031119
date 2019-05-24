# your code goes here

require "pry"
def begins_with_r(words)

     words.each do |word|
        if  word[0] != "r"
                 return false


      end

    end
    true

end

def contain_a(words)


 words.select do |word|
    word.include?("a")

 end
end




def first_wa(words)

  words.find do |word|
    word[0,2] == "wa"


  end
end

def remove_non_strings(array)
 array.keep_if do |element|
   element.is_a?String

 end
end

def count_elements(array)
    array.group_by(&:itself).map do|k, v| k.merge(count: v.length)
  end
end

def merge_data(keys,data)
	merged_data =[]
	keys.each_index do |i|
		data[0].keys.each do |name|
			merged_data << keys[i].merge(data[0][name])if name == keys[i][:first_name]

    end
	end
	merged_data
end

def find_cool(cool)
 found_cool = []
  cool.each do |hash|
    hash.each do |k,v|
      if k == "cool" || v == "cool"
       found_cool << hash
     end
   end
 end
found_cool
end

def organize_schools(schools)
  organized = {}
   schools.each do |school,location|


     if organized[location[:location]]

         organized[location[:location]] << school
       else

           organized[location[:location]] = [school]

       end
     end
   organized
  end

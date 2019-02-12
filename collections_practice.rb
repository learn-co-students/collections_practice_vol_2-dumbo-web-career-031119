# your code goes here
# your code goes here
def begins_with_r(arr)
    arr.each do |word|
        if word[0] != 'r'
            return false
        end
    end
    true
end

def contain_a(arr)
    answer = []
    arr.each do |word|
        if word.include?('a')
            answer << word
        end
    end
    answer
end

def first_wa(arr)
    arr.each do |word|
        if word[0] == ('w') && word[1] == "a"
            return word
        end
    end
end

def remove_non_strings(arr)
    arr.select do |word|
        word.is_a?(String)
    end
end

def count_elements(arr)
    answer = []
    arr.each do |inputI|
    found = false
        answer.each do |item|
            if item[:name] == inputI[:name]
                found = true
                item[:count] += 1
            end
        end
        if found == false
            answer << {:count => 1, :name => inputI[:name]}
        end
    end
    answer
end

def merge_data(data, newData)
    data.each do |firstData|
        firstData.merge!(newData[0][firstData[:first_name]])
    end
    return data
end

def find_cool(arr)
    answer = []
    arr.each do |peep|
        if peep[:temperature] == "cool"
            answer << peep
        end
    end
    answer
end

def organize_schools(schools)
    answer = Hash.new([])
    schools.keys.each do |key|
        answer[schools[key][:location]] += [key]
    end
 
    #schools.keys   returns names of schools

    # schools["dev boot camp"][:location] 
    # returns name of location
    return answer
end


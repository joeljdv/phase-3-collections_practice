def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b
            0
        elsif a < b 
            1
        elsif a > b
            -1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        if a.size == b.size
            0
        elsif a.size < b.size
            -1
        elsif a.size > b.size
            1
        end
    end
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
   array 
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    new_array=[]
    array.each do |name|
        name[2] = "$"
        new_array << name
    end
    new_array
end

def find_a(array)
    array.select{|string| string[0] == "a"}
end

def sum_array(array)
    array.inject {|sum, n| sum + n}
end

def add_s(array)
    new_array=[]
    array.each_with_index.collect do |element, i|
        if element != array[1]
            new_array << element + "s"
        elsif element == array[1]
            new_array << element
        end
    end
    new_array
end
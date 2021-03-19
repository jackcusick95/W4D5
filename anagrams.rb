
def first_anagram?(string1, string2)
    split = string1.split("")
    mutated = split.permutation(string1.length).to_a.map { |sub| sub.join("") }
    mutated.include?(string2)
end 

# p first_anagram?("yeh", "sup")

def second_anagram?(string1, string2)
    str2_split = string2.split("")

    string1.each_char do |char|
        if str2_split.include?(char)
            char_delete = str2_split.index(char)
            string2.delete(string2[char_delete])
        end
    end 

    string2.length == 0 
end 

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true
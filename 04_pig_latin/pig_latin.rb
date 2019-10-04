#write your code here
def translate_word word
    vowels = ["a","e","i","o","u"]
    phoneme = ['sch', 'qu']
    vowel_location = 0;
    previous_letter = nil
    if vowels.include? word[0]
        return word + "ay"
    else 
        for letter in word.chars
            previous_letter = letter
            if not vowels.include? letter
                vowel_location += 1
            end
            if previous_letter == 'q'
                vowel_location += 1
            end
            if vowels.include? letter
                return word.slice(vowel_location,word.length) + word.slice(0,vowel_location) + "ay"
            end
        end
    end
end 

def translate message
    num_words = message.split(" ")
    new_msg = ""
    for word in message.split(" ")
        new_msg.concat(translate_word(word) + " ")
    end
    return new_msg.slice(0, new_msg.length - 1)
end
#write your code here
def echo message
    return message
end

def shout message
    return message.upcase
end

def repeat message, num=2
    temp = ((message + " ")*num)
    return temp.slice(0, temp.length-1)
end

def start_of_word message, index
    return message.slice(0, index)
end

def first_word message
    return message.split(" ")[0]
end

def titleize message
    temp = message.split(" ")
    new_message = ""
    little_words = ['and','over','the']
    i = 0
    for word in temp do 
        if little_words.include? word and i != 0
            new_message.concat(word + " ")
        else
            new_message.concat(word.capitalize() + " ")
        end
        i += 1
    end
    return new_message.slice(0, new_message.length-1)
    
end
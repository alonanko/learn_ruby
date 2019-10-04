#write your code here
#(32°F − 32) × 5/9 = 0°C
#(0°C × 9/5) + 32 = 32°F

def ftoc farenheight
    return (farenheight - 32) * (5.0/9.0)
end

def ctof celcius
    return (celcius * 9.0 / 5.0) + 32
end
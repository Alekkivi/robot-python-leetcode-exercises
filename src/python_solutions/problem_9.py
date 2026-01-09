

def is_palindrome(num):

    if num < 0:
        return False

    if num >= 0 and num < 10:
        return True
    


    reversed_half = 0

    while num > reversed_half:
        reversed_half = reversed_half * 10 + num % 10
        num = num // 10
        

    if num == reversed_half:
        return True
    
    elif num == reversed_half // 10:
        return True
    

    else:
        return False

        


    


is_palindrome(12321)
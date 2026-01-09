

def is_palindrome(num):

    if num < 0:
        return False

    if num >= 0 and num < 10:
        return True
    
    number_text = str(num)
    reversed_number_text = ""

    for letter in reversed(number_text):
        reversed_number_text += letter

    for i in range(0, len(number_text)):
        if number_text[i] != reversed_number_text[i]:
            return False

    return True



is_palindrome(123123)
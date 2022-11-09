#A palindromic number reads the same both ways.
#Find the largest palindrome made from the product of two 3-digit numbers
#This function finds out the reverse of the number.
def reverse_number(n):
    rev = 0

    while n > 0:
        r = n % 10
        rev = rev * 10 + r
        n = int(n / 10)
    return rev

#Main logic
n = []
for a in range(999,100,-1):
    for b in range(999,100,-1):
        x = a * b
        if x == reverse_number(x):
            n.append(x)
        print(a, b)

print(max(n))
    








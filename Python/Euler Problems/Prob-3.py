#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

def factor(x):
    y = 2
    while (y * y) < x:
        while x % y == 0:
            x =  x / y
        y = y + 1
    print(x)
                
factor(123123123123)

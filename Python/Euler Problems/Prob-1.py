# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000

def mito():
    count = 0
    for x in range(1,1000):
        y = (x % 3)
        w = (x % 5)
        if y == 0 or w ==0:
            print(x)
            count = count + x

    print(count)
            
mito()
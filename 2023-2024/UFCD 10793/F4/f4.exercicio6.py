A = [3,4,6,2,66,1,4]
A.pop(6)
print(A)
A.insert(6,55)
print(A)
print(A[2:6])
print(A[6])
A = A * 2
A.sort()
A.reverse()
print(A)
x = 0
while x != len(A):
    print(A[x])
    x = x + 1
A.clear()
print(A)

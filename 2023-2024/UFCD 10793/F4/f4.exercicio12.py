A = [4,3,5,4,5,3,5,2,3,4]
x = 0
qua = 0
doi = 0
tre = 0
cin = 0
while x != len(A):
    if A[x] == 4:
        qua+=1
    if A[x] == 2:
        doi+=1
    if A[x] == 5:
        cin+=1
    if A[x] == 3:
        tre+=1
    x+=1
print(f"2 ocorre {doi} vez(es)")
print(f"3 ocorre {tre} vez(es)")
print(f"4 ocorre {qua} vez(es)")
print(f"5 ocorre {cin} vez(es)")
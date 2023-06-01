A={1, 2, 3, 4, 5}
B = {2*x for x in A}
C={x for x in range(3,11) if x%3 == 0}
print(A)
print(B)
print(C)
#print("União de A com B",A+B)
print(A.union(B))
print("Interceção de A e B",A & B)
#print(A.intersection(B))
print("Diferença de A e B",A-B)
#print(A.difference(B))
print("A diferença simétrica de A e B",A.symmetric_difference(B))
#print(A^B)
print("A diferença simétrica de A,B e C",A^B^C)
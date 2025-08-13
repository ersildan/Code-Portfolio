l1 = [2,4,3]
l2 = [5,6,4]
l3 = int("".join(map(str, l1[::-1]))) + int("".join(map(str, l2[::-1])))
print(list(str(l3)[::-1]))
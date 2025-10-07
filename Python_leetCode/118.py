n = int(input())
lst = []
for i in range(n):
    temp_list = []
    for j in range(i + 1):
        if j == 0 or j == i:
            temp_list.append(1)
        else:
            temp_list.append(lst[i - 1][j - 1] + lst[i - 1][j])
    lst.append(temp_list)
print(lst)

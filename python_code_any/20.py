s = input()
for letter in s:
    if '.':
        print(letter + '.', end='')
    else:
        print(letter, end='')
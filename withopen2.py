def new_function(n, num):
    if n > 3 or num < 30:
        return 'Bad'
    else:
        with open('file.txt', 'w+', encoding='UTF-8') as f:
            for el in range(1, n + 1):
                f.write(f"{el} день - баланс {num} - списалось 7 - осталось {num - 7}")
                num -= 7
            f.seek(0)
        return f.read()


print(new_function(int(input()), int(input())))
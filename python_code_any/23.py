n = int(input())


while True:
    if n > 100:
        print(n // 100)
        n = n - (n // 100) * 100
    if n <= 100:
        print(n // 10)
        n = n - (n // 10) * 10
    if n <= 5:
        print(n // 5)
        n = n - (n // 5) * 5
    if n <= 0:
        break
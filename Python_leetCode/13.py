class Solution:
    def romanToInt(self, s: str) -> int:
        d = {'I': 1,
             'V': 5,
             'X': 10,
             'L': 50,
             'C': 100,
             'D': 500,
             'M': 1000}
        d_ = {'IV': 4,
              'IX': 9,
              'XL': 40,
              'XC': 90,
              'CD': 400,
              'CM': 900}

        lst = []
        for key in d_:
            if key in s:
                s = s.replace(key, '')
                lst.append(d_[key])

        for el in s:
            if el in d:
                lst.append(d[el])
                s = s.replace(el, '')
        return sum(lst)
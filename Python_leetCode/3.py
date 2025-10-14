class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        if len(s) == 1:
            return 1
        elif len(s) == 0:
            return 0
        
        lst = set()
        total = 0
        t = ''
        len_s = len(s)

        while total != len_s:
            for el in s[total:len_s]:
                if el not in t:
                    t = t + el
                else:
                    lst.add(t)
                    t = ''
                    break
            total += 1
        return len(max(lst, key=len))
    

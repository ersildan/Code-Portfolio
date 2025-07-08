class Solution(object):
    def longestCommonPrefix(self, strs):
        """
        :type strs: List[str]
        :rtype: str
        """
        lst = list(zip(*strs))
        lst_= []
        for el in lst:
            if len(set(el)) == 1:
                lst_.append(el[0])
            else:
                break
        return("".join(lst_))

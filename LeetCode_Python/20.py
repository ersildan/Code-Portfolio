class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        def rec(s):
            if len(s) == 0:
                return True
            elif "[]" in s:
                return rec(s.replace('[]', ''))
            elif "()" in s:
                return rec(s.replace('()', ''))
            elif "{}" in s:
                return rec(s.replace('{}', ''))
            else:
                return False
        return rec(s)

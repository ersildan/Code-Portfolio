import re

class Solution:

    def lengthOfLastWord(self, s: str) -> int:
        """Delete space in sting"""

        result = re.sub(r'\s+', ' ', s).strip().split()
        return len(result[-1])

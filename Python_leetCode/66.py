class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        return [int(el) for el in str(int(("".join(map( str, digits)))) + 1)]
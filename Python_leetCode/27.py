class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        nums[:] = [el for el in nums if el != val]
        return len(nums)


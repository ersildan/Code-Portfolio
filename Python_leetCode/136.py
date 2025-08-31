class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        return min(nums, key=lambda x: nums.count(x))

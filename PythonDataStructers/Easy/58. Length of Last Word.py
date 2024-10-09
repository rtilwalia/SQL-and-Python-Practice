class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        splits = s.split()
        splitsr = splits[::-1]
        count = 0
        for i in range(len(splitsr)):
            if i == 0:
                count = len(list(splitsr[i]))
        
        return count
        
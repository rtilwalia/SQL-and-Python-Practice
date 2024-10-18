class Solution:
    def findTheDifference(self, s: str, t: str) -> str:
        ssum = sum(ord(x) for x in s)
        tsum = sum(ord(x) for x in t)
        return chr(tsum-ssum)
        
        

        
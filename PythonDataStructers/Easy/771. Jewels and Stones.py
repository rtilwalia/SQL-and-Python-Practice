class Solution:
    def numJewelsInStones(self, jewels: str, stones: str) -> int:
        
        jewels_ord = [ord(ch) for ch in jewels]
        stones_ord = [ord(ch) for ch in stones]
        
        count = 0
        for stone in stones_ord:
            for jewel in jewels_ord:
                if jewel == stone:
                    count+=1

        return count
        
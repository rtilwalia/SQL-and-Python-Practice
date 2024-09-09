import re
class Solution:
    def shortestCompletingWord(self, licensePlate: str, words: List[str]) -> str:
        alphas = list(re.sub(r"[^A-Za-z ]", "", licensePlate.lower().replace(" ", "")))
        words = sorted(words, key=len)
        
        for word in words:
            count = 0
            for alpha in alphas:
                if alpha in word:
                    count += 1

            if count == len(alphas):
                return word
        
        
class Solution:
    def reverseVowels(self, s: str) -> str:
        slist = list(s)
        n = len(slist)
        start = 0
        end = n-1
        vowels = set('aeiouAEIOU')

        while start<end:
            while start<end and slist[start] not in vowels:
                start+=1
            while start<end and slist[end] not in vowels:
                end-=1
            slist[start], slist[end] = slist[end], slist[start]
            start+=1
            end-=1
        
        return ''.join(slist)
class Solution:
    def shortestToChar(self, s: str, c: str) -> List[int]:
        res = []
        mini = []
        for i in range(len(s)):
            if s[i] == c:
                mini.append(i)

        for i in range(len(s)):
            minis = []
            for j in mini:
                minis.append(abs(j-i))
            res.append(min(minis))
        return res
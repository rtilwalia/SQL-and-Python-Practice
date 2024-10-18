class Solution:
    def countSegments(self, s: str) -> int:
        if s == "":
            return 0

        slist = s.split()
        return len(slist)
        
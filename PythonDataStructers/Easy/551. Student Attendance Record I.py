class Solution:
    def checkRecord(self, s: str) -> bool:

        s_dict = {item:s.count(item) for item in s}
        for key in s_dict:
            if (key == 'A' and s_dict[key] >= 2):
                return False
            elif 'LLL' in s: return False
        return True
        
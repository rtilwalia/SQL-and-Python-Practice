class Solution:
    def isPalindrome(self, s: str) -> bool:
        if s == " ":
            return True

        word = "".join(ch for ch in s if ch.isalnum()).lower()
        
        if word == word[::-1]:
            return True
        return False


        
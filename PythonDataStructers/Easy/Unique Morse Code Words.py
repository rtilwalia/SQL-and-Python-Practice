class Solution:
    def uniqueMorseRepresentations(self, words: List[str]) -> int:
        morse = {"a":".-","b":"-...","c":"-.-.","d":"-..","e":".","f":"..-.","g":"--.","h":"....","i":"..","j":".---","k":"-.-","l":".-..","m":"--","n":"-.","o":"---","p":".--.","q":"--.-","r":".-.","s":"...","t":"-","u":"..-","v":"...-","w":".--","x":"-..-","y":"-.--","z":"--.."}
        
        morse_list = []
        for word in words:
            morse_list.append("".join([morse[alpha] for alpha in word]))
        
        return len(set(morse_list))
        
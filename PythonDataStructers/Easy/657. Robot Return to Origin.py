class Solution:
    def judgeCircle(self, moves: str) -> bool:

        robo_pos = [0,0]
        for i in range(len(moves)):
            if moves[i] == 'U':
                robo_pos[1] +=1
            elif moves[i] == 'D':
                robo_pos[1] -=1
            elif moves[i] == 'R':
                robo_pos[0] +=1
            elif moves[i] == 'L':
                robo_pos[0] -=1   

        if robo_pos == [0,0]:
            return True
        else: return False 
            
        
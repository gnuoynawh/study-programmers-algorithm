/*
    바탕화면 정리

    https://school.programmers.co.kr/learn/courses/30/lessons/161990
*/

class Solution {
    public int[] solution(String[] wallpaper) {
        
        int n = wallpaper.length;
        int m = wallpaper[0].length();
        
        int minX = Integer.MAX_VALUE;
        int minY = Integer.MAX_VALUE;
        int maxX = Integer.MIN_VALUE;
        int maxY = Integer.MIN_VALUE;
                
        for (int i=0; i<n; i++) {
            for (int j=0; j<m; j++) {
                if ('#' == wallpaper[i].charAt(j)) {
                    minX = Math.min(minX, i);
                    minY = Math.min(minY, j);
                    maxX = Math.max(maxX, i);
                    maxY = Math.max(maxY, j);
                }
            }
        }
                
        return new int[]{ minX, minY, maxX+1, maxY+1 };
    }
}
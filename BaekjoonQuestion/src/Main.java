// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.

import java.util.*;

/**
 * 백준 1546번
 * https://www.acmicpc.net/problem/1546
 */
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int[] A = new int[N];
        for(int i=0; i<N; i++) {
            A[i] = sc.nextInt();
        }

        long sum = 0;
        long max = 0;
        for(int i=0; i<N; i++) {
            if (A[i] > max) max = A[i];
            sum = sum + A[i];
        }

        System.out.println(sum*100.0/max/N);
    }
}
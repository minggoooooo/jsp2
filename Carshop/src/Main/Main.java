package Main;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class Main {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		StringTokenizer sc = new StringTokenizer(br.readLine());
		List<Character> list = new ArrayList<>();
		
		long a = Long.parseLong(sc.nextToken());
		int b = Integer.parseInt(sc.nextToken());
		
		while(a>0) {
			if(a % b <10) {
				list.add((char)(a % b + '0'));
			}
			else {
				list.add((char)(a % b -10 + 'A'));
			}
			
			a/=b;
		}
		
		for(int i=list.size()-1 ; i>=0; i--) {
			System.out.print(list.get(i));
		}
	}

}

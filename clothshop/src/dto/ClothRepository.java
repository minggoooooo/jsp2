package dto;

import java.util.ArrayList;

public class ClothRepository {
	ArrayList<Cloth> clothlist = new ArrayList<>();

	public ClothRepository() {
		Cloth cloth1 = new Cloth();
		cloth1.setClothId("a001");
		cloth1.setClothName("아디다스 사이클링 저지");
		cloth1.setClothCost(109000);
		cloth1.setClothColor("검정");
		cloth1.setClothSize(105);
		
		Cloth cloth2 = new Cloth();
		cloth2.setClothId("a002");
		cloth2.setClothName("타미힐피거 브이넥 가디언");
		cloth2.setClothCost(299000);
		cloth2.setClothColor("네이비");
		cloth2.setClothSize(100);
		
		Cloth cloth3 = new Cloth();
		cloth3.setClothId("a003");
		cloth3.setClothName("우포스 쪼리");
		cloth3.setClothCost(69000);
		cloth3.setClothColor("검정");
		cloth3.setClothSize(280);
		
		clothlist.add(cloth1);
		clothlist.add(cloth2);
		clothlist.add(cloth3);
		
		
	}

	public ArrayList<Cloth> getAllCloth(){
		return clothlist;
	}
	
	public Cloth clothDetailId(String id) {
		Cloth detail = null;
		for(int i=0; i<clothlist.size(); i++) {
			if(id.equals(clothlist.get(i).getClothId())) {
				detail = clothlist.get(i);
			}
		}
		return detail;
	}
	
}

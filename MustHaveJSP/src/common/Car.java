package common;	//자바 기본파일 만드는 규칙 src폴더 하위에 패키지 하나 생성하기

public class Car {
	private String carName;	//변수는 private로 생성
	private int carPrice;
	private String carColor;
	
	
	public Car() {	//추가 생성자가 있어도 기본 생성자 꼭 생성하기
		
	}


	public Car(String carName, int carPrice, String carColor) {
		this.carName = carName;
		this.carPrice = carPrice;
		this.carColor = carColor;
	}


	public String getCarName() {
		return carName;
	}


	public void setCarName(String carName) {
		this.carName = carName;
	}


	public int getCarPrice() {
		return carPrice;
	}


	public void setCarPrice(int carPrice) {
		this.carPrice = carPrice;
	}


	public String getCarColor() {
		return carColor;
	}


	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}



	
	
}

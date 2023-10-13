package dto;

import java.util.ArrayList;

public class CarRepository {
	
	private ArrayList<Car> carlist = new ArrayList<>();
	private static CarRepository instance = new CarRepository();
	
	public static CarRepository getInstance() {
		return instance;
	}

	public CarRepository() {
		
		Car car1 = new Car();
		car1.setCarID("c001");
		car1.setCarName("기블리 트로페오");
		car1.setManufacturer("마세라티");
		car1.setPirce(184500000);
		car1.setHp(580);
		car1.setFuelEfficiency(6.5);
		
		Car car2 = new Car();
		car2.setCarID("c002");
		car2.setCarName("마이바흐 S클래스 S 650");
		car2.setManufacturer("메르세데스 벤츠");
		car2.setPirce(315400000);
		car2.setHp(630);
		car2.setFuelEfficiency(6.3);
		
		Car car3 = new Car();
		car3.setCarID("c003");
		car3.setCarName("꼬마버스 타요");
		car3.setManufacturer("EBS");
		car3.setPirce(75000);
		car3.setHp(0);
		car3.setFuelEfficiency(0);
		
		carlist.add(car1);
		carlist.add(car2);
		carlist.add(car3);
		
	}
	
	public ArrayList<Car> callCarList(){
		return carlist;
	}
	
	public Car CarGetById(String CarID) {
		Car car = null;
		for(int i=0; i<carlist.size();i++) {
			if(CarID.equalsIgnoreCase(carlist.get(i).getCarID())) {
				car = carlist.get(i);
			}
		}
		
		return car;
	}
	
	public void AddCar(Car car) {
		carlist.add(car);
	}

}

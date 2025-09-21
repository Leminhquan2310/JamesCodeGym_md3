package Customer;

import java.time.LocalDate;

public class Customer {
    private String name;
    private LocalDate birthDay;
    private String address;
    private String image;

    public Customer(String name, LocalDate birthDay, String address, String image) {
        this.name = name;
        this.birthDay = birthDay;
        this.address = address;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(LocalDate birthDay) {
        this.birthDay = birthDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}

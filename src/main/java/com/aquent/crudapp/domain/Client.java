package com.aquent.crudapp.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Client {

    private Integer clientId;

    @NotNull
    @Size(min=1, max=50, message = "Client name is required with maximum length of 50")
    private String name;

    @NotNull
    @Size(min=1, max=50, message = "Client URI is required with maximum length of 50")
    private String uri;

    @NotNull
    @Size(min=1, max=50, message = "Client phone number is required with maximum length of 50")
    private String phoneNumber;

    @NotNull
    @Size(min = 1, max = 50, message = "Client street address is required with maximum length of 50")
    private String streetAddress;

    @NotNull
    @Size(min = 1, max = 50, message = "Client city is required with maximum length of 50")
    private String city;

    @NotNull
    @Size(min = 2, max = 2, message = "Client state is required with length 2")
    private String state;

    @NotNull
    @Size(min = 5, max = 5, message = "Client zip code is required with length 5")
    private String zipCode;


    public Integer getClientId() {
        return clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

}

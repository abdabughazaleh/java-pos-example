package com.microsoft.pos.dao;

public class Item {
    private Integer itemId;
    private String itemName;
    private String itemBarcode;
    private Double price;

    public Item() {
    }

    public Item(Integer itemId, String itemName, String itemBarcode, Double price) {
        this.itemId = itemId;
        this.itemName = itemName;
        this.itemBarcode = itemBarcode;
        this.price = price;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemBarcode() {
        return itemBarcode;
    }

    public void setItemBarcode(String itemBarcode) {
        this.itemBarcode = itemBarcode;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}

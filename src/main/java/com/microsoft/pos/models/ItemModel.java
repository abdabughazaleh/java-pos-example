package com.microsoft.pos.models;

import com.microsoft.pos.config.database.DBManager;
import com.microsoft.pos.config.database.DBWorker;
import com.microsoft.pos.config.database.MySQL;
import com.microsoft.pos.dao.Item;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public class ItemModel {

    public void saveItem(Item item) {

        DBWorker dbManager = (DBManager db) -> {
            db.connect();
            String query = String.format("insert into items(item_name,item_price,item_barcode) values ('%s','%s','%s')",
                    item.getItemName(), item.getPrice(), item.getItemBarcode());
            db.execute(query);
        };

        dbManager.connect(new MySQL());

    }

    public void deleteItem(Integer id) {

        DBWorker dbManager = (DBManager db) -> {
            db.connect();
            String query = String.format("delete from items where item_id='%s'", id);
            db.execute(query);
        };

        dbManager.connect(new MySQL());

    }

    public List<Item> getAllItems() {
        List<Item> itemsList = new ArrayList<>();
        DBWorker dbManager = (DBManager db) -> {
            db.connect();
            ResultSet rs = db.query("select * from items order by item_id desc");
            try {
                while (rs.next()) {
                    Item item = new Item();
                    item.setItemId(rs.getInt("item_id"));
                    item.setItemName(rs.getString("item_name"));
                    item.setPrice(rs.getDouble("item_price"));
                    item.setItemBarcode(rs.getString("item_barcode"));
                    itemsList.add(item);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        };
        dbManager.connect(new MySQL());
        return itemsList;
    }

    public HashMap<String, Object> getItemBy(String column, String value) {
        HashMap<String, Object> item = new HashMap<>();
        DBWorker dbManager = (DBManager db) -> {
            db.connect();
            String query = "select * from items where " + column + "='" + value + "' ";
            ResultSet rs = db.query(query);
            System.out.println(query);
            try {
                if (rs.next()) {
                    item.put("itemId",rs.getInt("item_id"));
                    item.put("itemName",rs.getString("item_name"));
                    item.put("itemPrice",rs.getDouble("item_price"));
                    item.put("itemBarcode",rs.getString("item_barcode"));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        };
        dbManager.connect(new MySQL());
        return item;
    }

}

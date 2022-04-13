package models;

import java.util.Comparator;

public class Category {
    private int id;
    private String name;

    public Category(){}

    public Category(int id, String name){
        this.id = id;
        this.name = name;
    }

    public Category(String name){
        this.name = name;
    }

    public int getId(){
        return this.id;
    }

    public String getName(){
        return this.name;
    }

    public void setId(int id){
        this.id = id;
    }

    public void setName(String name){
        this.name = name;
    }

    public String toString(){
        return "{"+this.id+ " "+this.name+"}";
    }

    public boolean equals(Object obj){
        if(this == obj){
            return true;
        }else if (obj == null){
            return false;
        }else if(obj instanceof Category){
            Category cat = (Category)obj;
            if((cat.getName() == null && name == null) || (cat.getName().equals(name))){
                return true;
            }
        }
        return false;
    }
}
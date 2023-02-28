
package vmm;

public class Cart 
{
    public String itemname;
    public String photo;
  
    public int itemid;
    public int price;
    public int offerprice;
    public int qty;
    public int amount;
    
   
    public Cart(String itemname, String photo,int itemid,  int price,int offerprice, int qty,int amount )
    {
        this.itemname = itemname;
        this.photo=photo;
        this.itemid=itemid;
        this.price = price;
        this.offerprice=offerprice;
        this.qty = qty;
        this.amount=amount;
        
    }
    
}

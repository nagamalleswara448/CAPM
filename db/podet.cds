
namespace potables;
entity poheader{
   key poNum: String(10);
       crdat: Date;
       vendor: String(10);
       purorg: String(4);
       ordval:Decimal(13, 2);
       items: Association to many poitem on items.ponum = poNum
}
entity poitem {
    key ponum: String(10);
    key poitem: String(5);
        material: String(18);
        quantity: Decimal(13, 3);
        deldate: Date;
        netprice: Decimal(13, 2);
        plant : String(4);
        sloc: String(4);
        schlines: Association to many poschlines on schlines.poitem = poitem
                                               and schlines.ponum = ponum
}

entity poschlines {
      key ponum: String(10);
    key poitem: String(5);
    key schline:String(5);
        schqty: Decimal(13, 3);
        schdt: Date;

}



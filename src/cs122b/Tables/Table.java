package cs122b.Tables;

import cs122b.Models.BaseModel;

/**
 * Created by dinhho on 1/14/15.
 */
public abstract class Table {

    public Table() {
    }

    public abstract int addEntry(BaseModel entry);
    public abstract int deleteEntry(BaseModel obj);
    public abstract int updateEntry(BaseModel obj);
    public abstract int getTableSize();
    public abstract String getTableName();

    public static int calculateOffset(int pageNum, int size) {
        return (pageNum * size) - size;
    }
    
    public static class SortAttributes {
        public static final String T_DESC = "ORDER BY TITLE DESC";
        public static final String T_ASC = "ORDER BY TITLE";
        public static final String Y_DESC = "ORDER BY YEAR DESC";
        public static final String Y_ASC = "ORDER BY YEAR";
    }
    
    public static String ConvertOrderParameterToSQL(String order) {
    	String sort = Table.SortAttributes.T_ASC;
		if (order.equalsIgnoreCase("t_asc")) 
			sort = Table.SortAttributes.T_ASC;
		 else if (order.equalsIgnoreCase("t_desc")) 
			sort = Table.SortAttributes.T_DESC;
		 else if (order.equalsIgnoreCase("y_asc"))
			 sort = Table.SortAttributes.Y_ASC;
		 else if (order.equalsIgnoreCase("y_desc"))
			 sort = Table.SortAttributes.Y_DESC;
		return sort;
    }
}

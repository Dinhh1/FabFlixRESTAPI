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
}

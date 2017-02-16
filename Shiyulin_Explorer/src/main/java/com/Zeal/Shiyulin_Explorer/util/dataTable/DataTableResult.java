package com.Zeal.Shiyulin_Explorer.util.dataTable;

import java.util.List;

/**
 * Created by Zeal on 2016/11/14.
 * bootstrap-table返回类型封装
 */
public class DataTableResult {
    private List<?> rows;
    private int total ;

    public DataTableResult() {
    }

    public DataTableResult(List<?> rows, int total) {
        this.rows = rows;
        this.total = total;
    }

    public List<?> getRows() {
        return rows;
    }

    public void setRows(List<?> rows) {
        this.rows = rows;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}

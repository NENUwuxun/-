package entity;

public class PageBean {
    private int page;//当前页数
    private int pageSize;//一页多少条数据
    private int totalData;//一共有多少条数据
    private int totalPage;//一共有多少页

    public PageBean(){
        super();
    }
    public PageBean(int page,int pageSize,int totalData,int totalPage){
        super();
        this.page = page;
        this.pageSize = pageSize;
        this.totalData = totalData;
        this.totalPage = totalPage;
    }

    public int getPage() {
        return page;
    }
    public int getPageSize() {
        return pageSize;
    }
    public int getTotalData() {
        return totalData;
    }
    public int getTotalPage() {
        return totalPage;
    }

    public void setPage(int page) {
        this.page = page;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public void setTotalData(int totalData) {
        this.totalData = totalData;
    }
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
}

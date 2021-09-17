package com.xiexin.bean;

import java.io.Serializable;

/**
 * t_business
 * @author 
 */
public class TBusiness implements Serializable {
    private Integer bid;

    private String bnum;

    private String btype;

    private String bmark;

    private Integer bdid;

    private String bdname;

    private String bdperson;

    private static final long serialVersionUID = 1L;

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBnum() {
        return bnum;
    }

    public void setBnum(String bnum) {
        this.bnum = bnum;
    }

    public String getBtype() {
        return btype;
    }

    public void setBtype(String btype) {
        this.btype = btype;
    }

    public String getBmark() {
        return bmark;
    }

    public void setBmark(String bmark) {
        this.bmark = bmark;
    }

    public Integer getBdid() {
        return bdid;
    }

    public void setBdid(Integer bdid) {
        this.bdid = bdid;
    }

    public String getBdname() {
        return bdname;
    }

    public void setBdname(String bdname) {
        this.bdname = bdname;
    }

    public String getBdperson() {
        return bdperson;
    }

    public void setBdperson(String bdperson) {
        this.bdperson = bdperson;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        TBusiness other = (TBusiness) that;
        return (this.getBid() == null ? other.getBid() == null : this.getBid().equals(other.getBid()))
            && (this.getBnum() == null ? other.getBnum() == null : this.getBnum().equals(other.getBnum()))
            && (this.getBtype() == null ? other.getBtype() == null : this.getBtype().equals(other.getBtype()))
            && (this.getBmark() == null ? other.getBmark() == null : this.getBmark().equals(other.getBmark()))
            && (this.getBdid() == null ? other.getBdid() == null : this.getBdid().equals(other.getBdid()))
            && (this.getBdname() == null ? other.getBdname() == null : this.getBdname().equals(other.getBdname()))
            && (this.getBdperson() == null ? other.getBdperson() == null : this.getBdperson().equals(other.getBdperson()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getBid() == null) ? 0 : getBid().hashCode());
        result = prime * result + ((getBnum() == null) ? 0 : getBnum().hashCode());
        result = prime * result + ((getBtype() == null) ? 0 : getBtype().hashCode());
        result = prime * result + ((getBmark() == null) ? 0 : getBmark().hashCode());
        result = prime * result + ((getBdid() == null) ? 0 : getBdid().hashCode());
        result = prime * result + ((getBdname() == null) ? 0 : getBdname().hashCode());
        result = prime * result + ((getBdperson() == null) ? 0 : getBdperson().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", bid=").append(bid);
        sb.append(", bnum=").append(bnum);
        sb.append(", btype=").append(btype);
        sb.append(", bmark=").append(bmark);
        sb.append(", bdid=").append(bdid);
        sb.append(", bdname=").append(bdname);
        sb.append(", bdperson=").append(bdperson);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
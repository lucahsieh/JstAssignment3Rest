package assgn3.domain;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import java.io.Serializable;
import java.math.BigDecimal;
import  java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@XmlRootElement
@Entity
@Table(name = "Timesheets")
public class Timesheet implements Serializable{
    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "EmpNumber")
    private int EmpNumber;
    @Id
    @Column(name = "EndWeek")
    private Date EndWeek;
    
    @Column(name = "OverTime")
    private BigDecimal OverTime;
    
    @Column(name = "FlexTime")
    private BigDecimal FlexTime;
    
    public Timesheet() {}

    public Timesheet(int empNumber, Date endWeek, BigDecimal overTime, BigDecimal flexTime) {
        super();
        EmpNumber = empNumber;
        EndWeek = endWeek;
        OverTime = overTime;
        FlexTime = flexTime;
    }

    @XmlElement
    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    @XmlElement
    public int getEmpNumber() {
        return EmpNumber;
    }

    @XmlElement
    public Date getEndWeek() {
        return EndWeek;
    }

    @XmlElement
    public BigDecimal getOverTime() {
        return OverTime;
    }

    @XmlElement
    public BigDecimal getFlexTime() {
        return FlexTime;
    }

    public void setEmpNumber(int empNumber) {
        EmpNumber = empNumber;
    }

    public void setEndWeek(Date endWeek) {
        EndWeek = endWeek;
    }

    public void setOverTime(BigDecimal overTime) {
        OverTime = overTime;
    }

    public void setFlexTime(BigDecimal flexTime) {
        FlexTime = flexTime;
    }

    @Override
    public String toString() {
        return "Timesheet [EmpNumber=" + EmpNumber + ", EndWeek=" + EndWeek + ", OverTime=" + OverTime + ", FlexTime="
                + FlexTime + "]";
    }
    
}



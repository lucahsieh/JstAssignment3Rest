package assgn3.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
//
@XmlRootElement
@Entity
@Table(name = "Employees")
public class Employee implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @Column(name = "EmpNumber")
    private int EmpNumber;
    
    @Column(name = "Name")
    private String Name;
    
    @Column(name = "UserName")
    private String UserName;
    
    @Column(name = "AdminRights")
    private boolean AdminRights;

    public Employee() {}
    
    public Employee(int empNumber, String name, String userName, boolean adminRights) {
        super();
        EmpNumber = empNumber;
        Name = name;
        UserName = userName;
        AdminRights = adminRights;
    }

    @XmlElement
    public int getEmpNumber() {
        return EmpNumber;
    }

    @XmlElement
    public String getName() {
        return Name;
    }

    @XmlElement
    public String getUserName() {
        return UserName;
    }

    @XmlElement
    public boolean isAdminRights() {
        return AdminRights;
    }

    public void setEmpNumber(int empNumber) {
        EmpNumber = empNumber;
    }

    public void setName(String name) {
        Name = name;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public void setAdminRights(boolean adminRights) {
        AdminRights = adminRights;
    }
    
    
}

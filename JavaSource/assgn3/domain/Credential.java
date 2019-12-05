package assgn3.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@Entity
@Table(name = "Credentials")
public class Credential implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @Column(name = "UserName")
    private String userName;
    
    @Column(name = "Password")
    private String password;

    public Credential() {}
    
    public Credential(String userName, String password) {
        super();
        this.userName = userName;
        this.password = password;
    }

    @XmlElement
    public String getUserName() {
        return userName;
    }

    @XmlElement
    public String getPassword() {
        return password;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
    
}

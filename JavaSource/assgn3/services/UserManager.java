package assgn3.services;

import javax.ejb.Stateless;
import javax.enterprise.context.Dependent;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import assgn3.domain.Credential;
import assgn3.domain.Employee;

//@Path("/users")
//@Dependent
//@Stateless
public class UserManager {
//    private static final long serialVersionUID = 1L;
//    @PersistenceContext(unitName = "Timesheet-jpa")
//    EntityManager em;
//    
//    @GET
//    @Path("")
//    @Produces(MediaType.APPLICATION_JSON)
////  @Produces("application/xml")
//    public Employee[] getAll() {
//        TypedQuery<Employee> query = em.createQuery("select e from Employee e", Employee.class);
//        java.util.List<Employee> employees = query.getResultList();
//        Employee[] earray = new Employee[employees.size()];
//        for (int i = 0; i < earray.length; i++) {
//            earray[i] = employees.get(i);
//        }
//        
//        TypedQuery<Credential> query2 = em.createQuery("select c from Credential c", Credential.class);
//        java.util.List<Credential> credentials = query2.getResultList();
//        Credential[] carray = new Credential[credentials.size()];
//        for (int i = 0; i < carray.length; i++) {
//            carray[i] = credentials.get(i);
//        }
//        
//        
//        
//        
//        
//        return earray;
//    }

}

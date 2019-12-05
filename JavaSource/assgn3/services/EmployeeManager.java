package assgn3.services;

import java.io.Serializable;
import java.util.List;

import javax.ejb.Stateless;
import javax.enterprise.context.Dependent;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import assgn3.domain.Employee;
import assgn3.domain.Timesheet;

import java.net.URI;

import javax.persistence.Entity;

@Path("/employees")
@Dependent
@Stateless
public class EmployeeManager {
    private static final long serialVersionUID = 1L;
    @PersistenceContext(unitName = "Timesheet-jpa")
    EntityManager em;

    @GET
    @Path("")
    @Produces(MediaType.APPLICATION_JSON)
//  @Produces("application/xml")
    public Employee[] getAll() {
        TypedQuery<Employee> query = em.createQuery("from Employee", Employee.class);
          
        java.util.List<Employee> employees = query.getResultList();
        Employee[] earray = new Employee[employees.size()];
        for (int i = 0; i < earray.length; i++) {
            earray[i] = employees.get(i);
        }
        return earray;
    }
}

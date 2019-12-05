package assgn3.services;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;
import javax.ws.rs.core.MediaType;
import javax.persistence.Entity;
import java.util.HashSet;
import java.util.Set;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.Response;

import java.net.URI;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@ApplicationPath("/resources")
public class TimesheetResourcesApplication extends Application{

  private Set<Object> singletons = new HashSet<Object>();
  private Set<Class<?>> classes = new HashSet<Class<?>>();
  
  public TimesheetResourcesApplication() {
      singletons.add(new TimesheetManager());
      classes.add(TimesheetManager.class);
      classes.add(EmployeeManager.class);
  }
  
  public Set<Class<?>> getClasses() {
      return classes;
  }
  
  public Set<Object> getSingleton() {
      return singletons;
  }
  
}


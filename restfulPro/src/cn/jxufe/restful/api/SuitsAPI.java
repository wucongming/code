package cn.jxufe.restful.api;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import cn.jxufe.database.entity.Suits;
import cn.jxufe.database.helper.EM;
import cn.jxufe.restful.bean.Status;


@Path("/app/suits")
public class SuitsAPI {
	@POST
	@Path("/list")
	@Consumes("application/json;charset=UTF-8")
	@Produces("application/json;charset=UTF-8")
	public List<Suits> getList() {	
		return EM.getEntityManager().createNamedQuery("Suits.findAll").getResultList();
	}
	
	@POST
	@Path("/add")
	@Consumes("application/json;charset=UTF-8")
	@Produces("application/json;charset=UTF-8")
	public Status add(Suits suits) throws Exception {
		Status status = new Status();
		try{
			suits.setId(0);
			suits = EM.getEntityManager().merge(suits);
			EM.getEntityManager().persist(suits);
			EM.getEntityManager().getTransaction().commit();
			EM.getEntityManager().flush();
			status.setCode(Status.SUCCESS);
			status.setMessage(Status.SUCCESS_ADD_MSG);
			status.setO(suits.getId());
		}catch(Exception e){
			status.setCode(Status.FAILED);
			status.setMessage(Status.FAILED_ADD_MSG);
			e.printStackTrace();
		}
	    return status;
	}
	
	@POST
	@Path("/save")
	@Consumes("application/json;charset=UTF-8")
	@Produces("application/json;charset=UTF-8")
	public Status save(Suits suits) throws Exception {
		Status status = new Status();
		try{
			suits = EM.getEntityManager().merge(suits);
			EM.getEntityManager().persist(suits);
			EM.getEntityManager().getTransaction().commit();
			EM.getEntityManager().flush();
			status.setCode(Status.SUCCESS);
			status.setMessage(Status.SUCCESS_UPDATE_MSG);
			status.setO(suits.getId());
		}catch(Exception e){
			status.setCode(Status.FAILED);
			status.setMessage(Status.FAILED_UPDATE_MSG);
			e.printStackTrace();
		}
		return status;
	}
	
	@POST
	@Path("/delete")
	@Consumes("application/json;charset=UTF-8")
	@Produces("application/json;charset=UTF-8")
	public Status delete(Suits suits) throws Exception {
		Status status = new Status();
		try{
			EM.getEntityManager().remove(EM.getEntityManager().merge(suits));
			EM.getEntityManager().getTransaction().commit();
			status.setCode(Status.SUCCESS);
			status.setMessage(Status.SUCCESS_REMOVE_MSG);
		}catch(Exception e){
			status.setCode(Status.FAILED);
			status.setMessage(Status.FAILED_REMOVE_MSG);
			e.printStackTrace();
		}	
	    return status;
	}
}

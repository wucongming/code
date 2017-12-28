package cn.jxufe.restful.api;

import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import cn.jxufe.database.entity.CodeImage;
import cn.jxufe.database.helper.EM;
import cn.jxufe.restful.bean.Status;

@Path("/app/codeImage")
public class CodeImageAPI {
	
	@POST
	@Path("/list")
	@Produces("application/x-www-form-urlencoded; charset=UTF-8")
	@Consumes("application/x-www-form-urlencoded; charset=UTF-8")
	public List<CodeImage> getList(CodeImage codeImage) {	

		return EM.getEntityManager().createNamedQuery("CodeImage.fetchByKind").setParameter(1, codeImage.getKind()).getResultList();
	}
	
	@POST
	@Path("/add")
	@Consumes("application/json;charset=UTF-8")
	@Produces("application/json;charset=UTF-8")
	public Status add(CodeImage codeImage) throws Exception {
		Status status = new Status();
		try{
			codeImage.setId(0);
			codeImage = EM.getEntityManager().merge(codeImage);
			EM.getEntityManager().persist(codeImage);
			EM.getEntityManager().getTransaction().commit();
			EM.getEntityManager().flush();
			status.setCode(Status.SUCCESS);
			status.setMessage(Status.SUCCESS_ADD_MSG);
			status.setO(codeImage.getId());
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
	public Status save(CodeImage codeImage) throws Exception {
		Status status = new Status();
		try{
			codeImage = EM.getEntityManager().merge(codeImage);
			EM.getEntityManager().persist(codeImage);
			EM.getEntityManager().getTransaction().commit();
			EM.getEntityManager().flush();
			status.setCode(Status.SUCCESS);
			status.setMessage(Status.SUCCESS_UPDATE_MSG);
			status.setO(codeImage.getId());
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
	public Status delete(CodeImage codeImage) throws Exception {
		Status status = new Status();
		try{
			EM.getEntityManager().remove(EM.getEntityManager().merge(codeImage));
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

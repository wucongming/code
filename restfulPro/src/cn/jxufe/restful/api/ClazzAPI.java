package cn.jxufe.restful.api;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import org.jboss.resteasy.annotations.Form;

import cn.jxufe.database.entity.Clazz;
import cn.jxufe.database.helper.EM;
import cn.jxufe.restful.bean.ClassResult;

@Path("/app/clazz")
public class ClazzAPI {

	@POST
	@Path("/list")
	@Produces("application/json")
	public ClassResult test(@FormParam("time1")String time1,@FormParam("page")Integer page
			,@FormParam("college")String college,@FormParam("teacher")String teacher
			,@FormParam("courseName")String course
			,@FormParam("courseCode")String courseCode,@FormParam("limit")Integer limit) {
		Query query1 = EM.getEntityManager()
				.createNamedQuery("Clazz.pageList")
				.setParameter("time1", time1)
				.setParameter("time2", time1)
				.setParameter("time3", time1)
				.setParameter("college",college)
				.setParameter("teacher",teacher)
				.setParameter("courseCode", courseCode)
				.setParameter("course", course);
		Query query2 = EM.getEntityManager()
				.createNamedQuery("Clazz.count")
				.setParameter("time1", time1)
				.setParameter("time2", time1)
				.setParameter("time3", time1)
				.setParameter("college",college)
				.setParameter("teacher",teacher)
				.setParameter("courseCode", courseCode)
				.setParameter("course", course);
		int count = ((Long)query2.getSingleResult()).intValue();
		System.out.println(count);
		List<Clazz> data = query1.setFirstResult((page - 1) * limit).setMaxResults(limit).getResultList();
		ClassResult result = new ClassResult();
		result.setCount(count);
		result.setCode(0);
		result.setMsg("");
		result.setData(data);
		return result;
		
	}
}

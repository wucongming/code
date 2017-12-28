package cn.jxufe.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.jxufe.entity.TEssay;
import cn.jxufe.service.interfaces.StageService;
import cn.jxufe.service.interfaces.TEssayService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UploadImgAction extends ActionSupport implements ModelDriven<TEssay> {

	private File uploadImg;
	
	private String uploadImgFileName;
	
	private TEssay tessay = new TEssay();

	private TEssayService tessayService;
	
	public TEssayService getTessayService() {
		return tessayService;
	}

	public void setTessayService(TEssayService tessayService) {
		this.tessayService = tessayService;
	}

	public File getUploadImg() {
		return uploadImg;
	}

	public void setUploadImg(File uploadImg) {
		this.uploadImg = uploadImg;
	}

	public String getUploadImgFileName() {
		return uploadImgFileName;
	}

	public void setUploadImgFileName(String uploadImgFileName) {
		this.uploadImgFileName = uploadImgFileName;
	}

	public TEssay getTessay() {
		return tessay;
	}

	public void setTessay(TEssay tessay) {
		this.tessay = tessay;
	}

	@Override
	public TEssay getModel() {
		// TODO Auto-generated method stub
		return tessay;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("-----------------------------------------");
		System.out.println(new Date() +" �ϴ���"+uploadImgFileName);
		System.out.println("-----------------------------------------");
		
		if(tessayService.findTEssayByEssayName(tessay.getName()) == null) {
			HttpServletRequest request = ServletActionContext.getRequest();
			InputStream in = new FileInputStream(uploadImg);
			String url = "C:/Users/Administrator/Desktop/javaEE/img/" + uploadImgFileName;
			if(!(new File(url).exists())) {
				
				OutputStream out = new FileOutputStream(url);
				int count = 0;
				byte[] buffer = new byte[8912];
				while((count = in.read(buffer)) > 0) {
					out.write(buffer);
				}
				out.close();

			}
			System.out.println(tessay.getName());
			System.out.println(tessay.getImg());
			System.out.println(tessay.getTxt());
			System.out.println(tessay.getE_sid());
			tessay.setContent("");
			tessay.setImg("/test/"+uploadImgFileName);
			tessayService.addTEssay(tessay);
			
			in.close();

		}
		
		return SUCCESS;
	}
	
	

}

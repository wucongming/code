package cn.jxufe.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.jxufe.entity.Image;
import cn.jxufe.entity.LayUIImageUploadResult;

import com.opensymphony.xwork2.ActionSupport;

public class LayUIImageUploadAction extends ActionSupport{
	
	private LayUIImageUploadResult result;
	
	private String imageFileName;
	
	private String imageContentType;
	
	private File image;
	
	private String virtualPath;
	
	private static final String PATH = "C:/Users/Administrator/Desktop/javaEE/img";

	public LayUIImageUploadResult getResult() {
		return result;
	}



	public void setResult(LayUIImageUploadResult result) {
		this.result = result;
	}



	public String getImageFileName() {
		return imageFileName;
	}



	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}



	public String getImageContentType() {
		return imageContentType;
	}



	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}



	public File getImage() {
		return image;
	}



	public void setImage(File image) {
		this.image = image;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String path = getFolder(PATH) + "/" + imageFileName;
		upload(path);
		initJSON(path);
		return SUCCESS;
	}
	
	private void upload(String path) throws Exception  {
		InputStream in = new FileInputStream(image);
		File file = new File(path);
		if(!file.exists()) {
			FileOutputStream out = new FileOutputStream(file);
			byte[] buffer = new byte[8912];
			int count = 0;
			while((count = in.read(buffer)) >= 0) {
				out.write(buffer, 0, count);
			}
			out.close();
		}
		in.close();
	}
	
	private String getFolder(String path) {
		SimpleDateFormat format = new SimpleDateFormat("yyyymmdd");
		String formatStr = format.format(new Date());
		path += "/" + formatStr;
		virtualPath = "/test/" +formatStr + "/" + this.imageFileName;
		File file = new File(path);
		if(!file.exists()) {
			file.mkdirs();
		}
		return path;
	}
	
	
	
	private void initJSON(String path) {
		result = new LayUIImageUploadResult();
		result.setCode(0);
		result.setMsg("hellos");
		Image data = new Image();
		data.setSrc(virtualPath);
		result.setData(data);
	}
	
}

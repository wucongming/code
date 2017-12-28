package cn.jxufe.action;

import java.util.Iterator;
import java.util.List;

import cn.jxufe.bean.Result;
import cn.jxufe.entity.TDiscuss;
import cn.jxufe.entity.TEssay;
import cn.jxufe.entity.TReply;
import cn.jxufe.entity.TStage;
import cn.jxufe.service.interfaces.StageService;
import cn.jxufe.service.interfaces.TEssayService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EssayAction extends ActionSupport implements ModelDriven<TEssay> {

	private TEssayService tessayService;
	
	private TEssay tessay = new TEssay();
	
	private List<TStage> stages;
	
	private StageService stageService;
	
	private Result result;
	
	public StageService getStageService() {
		return stageService;
	}

	public void setStageService(StageService stageService) {
		this.stageService = stageService;
	}

	@Override
	public TEssay getModel() {
		// TODO Auto-generated method stub
		return tessay;
	}

	public List<TStage> getStages() {
		return stages;
	}

	public void setStages(List<TStage> stages) {
		this.stages = stages;
	}

	public TEssayService getTessayService() {
		return tessayService;
	}

	public void setTessayService(TEssayService tessayService) {
		this.tessayService = tessayService;
	}

	public TEssay getTessay() {
		return tessay;
	}

	public void setTessay(TEssay tessay) {
		this.tessay = tessay;
	}

	public String delete() {
		
		tessayService.deleteTEssayByEid(tessay.getEid());
		return SUCCESS;
	}
	
	public String toUpdateContent() {
		tessay = tessayService.findTEssayByEid(tessay.getEid());
		return "publish";
	}
	
	public String loadContent() {
		
		stages = stageService.findStagesByUid(2);
		tessay = tessayService.findTEssayByEid(tessay.getEid());
		return "content";
	}
	
	public Result getResult() {
		return result;
	}

	public void setResult(Result result) {
		this.result = result;
	}

	public String saveEditorContent() {
		tessayService.updateEssayContent(tessay.getEid(), tessay.getContent());
		stages = stageService.findStagesByUid(2);
		return "content";
	}
	
	public String updateEssay() {
		System.out.println(tessay.getTxt());
//		System.out.println(tessay.get);
		tessayService.updateEssayByEid(tessay);
		return SUCCESS;
	}
	
	public String othervisiable() throws Exception {
		System.out.println("成功拉");
		result = new Result();
		tessayService.updateEssayVisiable(tessay.getEid(), tessay.getOthervisiable());
		result.setType("OK");
		System.out.println("haha");
		System.out.println(result.getType());
		return SUCCESS;
	}
}

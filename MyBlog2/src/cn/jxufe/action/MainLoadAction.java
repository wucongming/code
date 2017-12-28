package cn.jxufe.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import cn.jxufe.entity.TStage;
import cn.jxufe.service.interfaces.StageService;

public class MainLoadAction extends ActionSupport {
	

	private List<TStage> stages;

	private TStage firstTStage;
	
	private StageService stageService;
	
	private String stageName;
	
	public String getStageName() {
		return stageName;
	}

	public void setStageName(String stageName) {
		this.stageName = stageName;
	}

	public TStage getFirstTStage() {
		return firstTStage;
	}

	public void setFirstTStage(TStage firstTStage) {
		this.firstTStage = firstTStage;
	}

	public StageService getStageService() {
		return stageService;
	}

	public void setStageService(StageService stageService) {
		this.stageService = stageService;
	}

	public List<TStage> getStages() {
		return stages;
	}

	public void setStages(List<TStage> stages) {
		this.stages = stages;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		stages = stageService.findStagesByUid(2);
		System.out.println("stageName" + stageName);
		System.out.println("stages" + stages);
		
		if(stageName == null && stages != null && stages.size() >= 1) {
			System.out.println("差寻");
			firstTStage = stageService.findStageByStageName(stages.get(0).getStageName());
			
		} else if(stageName != null) {
			firstTStage = stageService.findStageByStageName(stageName);
		}
		System.out.println(firstTStage);
		return SUCCESS;
	}
	
	
}

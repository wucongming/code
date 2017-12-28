package cn.jxufe.action;

import java.util.Date;

import cn.jxufe.entity.TStage;
import cn.jxufe.service.interfaces.StageService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class StageAction extends ActionSupport implements ModelDriven<TStage>
{
	
	private TStage tStage = new TStage();
	
	private StageService stageService;
	
	private String warnText;
	
	public String getWarnText() {
		return warnText;
	}

	public void setWarnText(String warnText) {
		this.warnText = warnText;
	}

	public StageService getStageService() {
		return stageService;
	}

	public void setStageService(StageService stageService) {
		this.stageService = stageService;
	}

	public TStage gettStage() {
		return tStage;
	}

	public void settStage(TStage tStage) {
		this.tStage = tStage;
	}

	/**
	 * ���ӽ׶�
	 * 
	 * ĿǰĬ�����ӹ���Ա�Ľ׶�(����Ա��uidΪ2
	 * 
	 * ����׶ο����¹������޸�
	 * @return
	 */
	public String add() {
		System.out.println(stageService);
		TStage findTStage = stageService.findStageByStageName(tStage.getStageName());
		if(findTStage == null) { 
			System.out.println("-------------------------------------");
			System.out.println(new Date() + "��ݿ���û�� "+tStage.getStageName() + " ���Բ���");
			System.out.println("-------------------------------------");
			stageService.addStageByUid(2, tStage.getStageName());
		} else {
			System.out.println("-------------------------------------");
			System.out.println("��ݿ����Ѿ��� " + tStage.getStageName() +" �����Բ���");
			System.out.println("-------------------------------------");
			warnText="�Ѵ��ڸý׶Σ���ע�⣡";
		}
		return SUCCESS;
	}
	
	public String delete() {
		System.out.println("delete"+tStage.getSid());
		stageService.deleteStageBySid(tStage.getSid());
		return SUCCESS;
	}
	
	public String updateStage() {
		stageService.updateStageBySid(tStage.getSid(), tStage.getStageName());
		return SUCCESS;
	}
	@Override
	public TStage getModel() {
		// TODO Auto-generated method stub
		return tStage;
	}
	
	
}

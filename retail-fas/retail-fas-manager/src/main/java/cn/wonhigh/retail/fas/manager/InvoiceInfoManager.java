package cn.wonhigh.retail.fas.manager;

import java.util.List;
import java.util.Map;

import cn.wonhigh.retail.fas.common.model.InvoiceInfo;

import com.yougou.logistics.base.common.exception.ManagerException;
import com.yougou.logistics.base.common.utils.SimplePage;
import com.yougou.logistics.base.manager.BaseCrudManager;

/**
 * 请写出类的用途 
 * @author ouyang.zm
 * @date  2015-02-03 11:06:43
 * @version 1.0.0
 * @copyright (C) 2013 YouGou Information Technology Co.,Ltd 
 * All Rights Reserved. 
 * 
 * The software for the YouGou technology development, without the 
 * company's written consent, and any other individuals and 
 * organizations shall not be used, Copying, Modify or distribute 
 * the software.
 * 
 */
public interface InvoiceInfoManager extends BaseCrudManager {
	
	Integer selectDistinctClientCount(Map<String, Object> params)throws ManagerException;
	
	List<InvoiceInfo> selectDistinctClientByPage (SimplePage page, String orderByField, String orderBy, Map<String, Object> params)throws ManagerException;
	
}
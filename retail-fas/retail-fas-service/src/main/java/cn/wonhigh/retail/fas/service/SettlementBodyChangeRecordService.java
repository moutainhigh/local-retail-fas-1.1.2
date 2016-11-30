package cn.wonhigh.retail.fas.service;

import java.util.Map;

import cn.wonhigh.retail.fas.common.model.SettlementBodyChangeRecord;

import com.yougou.logistics.base.common.exception.ServiceException;
import com.yougou.logistics.base.service.BaseCrudService;

/**
 * 请写出类的用途 
 * @author user
 * @date  2015-12-28 11:09:32
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
public interface SettlementBodyChangeRecordService extends BaseCrudService {
	public SettlementBodyChangeRecord findByPageSum(Map<String, Object> params) throws ServiceException;
}
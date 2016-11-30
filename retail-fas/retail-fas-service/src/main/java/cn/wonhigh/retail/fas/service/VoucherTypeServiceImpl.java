package cn.wonhigh.retail.fas.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.wonhigh.retail.fas.dal.database.VoucherTypeMapper;

import com.yougou.logistics.base.dal.database.BaseCrudMapper;

/**
 * 请写出类的用途 
 * @author ouyang.zm
 * @date  2014-09-03 09:46:57
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
@Service("voucherTypeService")
class VoucherTypeServiceImpl extends BaseServiceImpl implements VoucherTypeService {
    @Resource
    private VoucherTypeMapper voucherTypeMapper;

    @Override
    public BaseCrudMapper init() {
        return voucherTypeMapper;
    }
}
package cn.wonhigh.retail.fas.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.wonhigh.retail.fas.common.model.BillBalanceInvoice;
import cn.wonhigh.retail.fas.manager.BillBalanceInvoiceManager;

import com.yougou.logistics.base.web.controller.BaseCrudController;

/**
 * 请写出类的用途 
 * @author wang.m1
 * @date  2014-09-05 10:33:45
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
@Controller
@RequestMapping("/bill_balance_invoice")
public class BillBalanceInvoiceController extends BaseCrudController<BillBalanceInvoice> {
    @Resource
    private BillBalanceInvoiceManager billBalanceInvoiceManager;

    @Override
    public CrudInfo init() {
        return new CrudInfo("bill_balance_invoice/",billBalanceInvoiceManager);
    }
}
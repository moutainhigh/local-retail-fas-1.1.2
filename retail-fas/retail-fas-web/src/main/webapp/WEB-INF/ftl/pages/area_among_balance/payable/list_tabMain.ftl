<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'north',border:false" class="toolbar-region">
		<@p.billToolBar type="area_among_pay_listMainBar"/>
	</div>
	<div  data-options="region:'center',border:false">
	     <div class="easyui-layout" data-options="fit:true" >
			<#--搜索start-->
			<div data-options="region:'north',border:false" >
				<div class="search-div">
				  <form name="searchForm" id="searchForm" method="post">
				  <input type="hidden" name="aToA" value="yf" />
	          	  <table class="form-tb" >
				    <col width="100" />
				    <col  />
				    <col width="100" />
				    <col />
				    <col width="100" />
				    <col />
				    <col width="100" />
				    <col />
				    <tbody>
				    	<tr>
				    	    <th>单据编号：</th>
                            <td>
                            	<input class="easyui-validatebox ipt"  name="billNo" id="billNo"  style="width: 150px;"/>
                            </td>
                          	<th>单据状态：</th>
						    <td>
						    	<select class="easyui-combobox"  name="extendStatus" id="status"  style="width: 130px;"
						        data-options="editable:false,valueField:'statusNo',textField:'statusName',url:BasePath + '/area_balance_common/getAPBalanceBillStatus'"/>
						    </td>
						    <th>品牌部： </th>
							<td>
								<input class="easyui-brandunit ipt"   name="brandUnitName" id="brandUnitNameIdCond" data-options="inputNoField:'brandUnitNoCond',inputNameField:'brandUnitNameIdCond',inputWidth:130"/>
							    <input type="hidden" name="brandUnitNo" id="brandUnitNoCond"/>
							</td>
							<th>审核人：</th>
						    <td>
						    	<input class="easyui-validatebox ipt" name="auditor" id="auditorCondition" style="width:130px;"/>
						    </td>
						</tr>
						<tr>
							<th>调入公司：</th>
                            <td>
                            	<input class="easyui-company ipt"   name="buyerName" id="buyerNameCon" 
                            	data-options="inputNoField:'buyerNoCon',inputNameField:'buyerNameCon',inputWidth:160,isDefaultData : false"/>
                                <input type="hidden" name="buyerNo" id="buyerNoCon"/>
                            </td>
						    <th>制单日期：</th>
						    <td>
						    	<input class="easyui-datebox"  name="createTimeStart"  readonly="true" id="createTimeStart" data-options="maxDate:'createTimeEnd'" />
						    </td>
							<th>至：</th>
						    <td>
						    	<input class="easyui-datebox"  name="createTimeEnd"  readonly="true" id="createTimeEnd" data-options="minDate:'createTimeStart'" />
						    </td>
						    <th>制单人：</th>
						    <td>
						    	<input class="easyui-validatebox ipt" name="createUser" id="createUserCondition" style="width:130px;"/>
						    </td>
						</tr>
						<tr>
						    <th>调出公司：</th>
                            <td>
                            	<input class="easyui-company ipt"  name="salerName" id="salerNameCon" 
                            	data-options="queryUrl: BasePath + '/base_setting/company/list.json?dataAccess=0&params=groupLeadRole',inputNoField:'salerNoCon',inputNameField:'salerNameCon',inputWidth:160,isDefaultData : false"/>
                           		<input type="hidden" name="salerNo" id="salerNoCon"/>
                           	</td>
                         	<th>结算期间：</th>
						    <td>
						    	<input class="easyui-datebox"  name="balanceStartDate"  readonly="true" id="startDateCond" data-options="maxDate:'endDateCond'" />
						    </td>
							<th>至：</th>
						    <td>
						    	<input class="easyui-datebox"  name="balanceEndDate"  readonly="true" id="endDateCond" data-options="minDate:'startDateCond'" />
						    </td>
                         	<th></th>
                         	<td></td>
						</tr>
				    </tbody>
				</table>   
	        </form>
				</div>
			</div>
			<#--列表-->
	        <div data-options="region:'center',border:false">
			      <@p.datagrid id="mainDataGrid"  loadUrl="" saveUrl=""   defaultColumn="" 
			              isHasToolBar="false" onClickRowEdit="false" pagination="true" selectOnCheck="true" 
			               checkOnSelect="true"   rownumbers="true" singleSelect="false" showFooter="true" 
				           columnsJsonList="[
				                {field:'ck',checkbox:true,notexport:true},
								{field : 'id',hidden:true},
								{field : 'billNo',title : '单据编号',width : 150,align:'left',halign:'center'},
								{field : 'askPaymentNo',title : '请款单号',width : 150,align:'center',halign:'center', formatter: function(value,row,index){
									return billNoMenuRedirect.billNoMenuFormat(value,row,index,'AI-请款单');
								}},
								{field : 'extendStatus',title : '单据状态',width : 115,align:'center',halign:'center',formatter:areaBalance.statusFormat},
								{field : 'buyerName',title : '调入公司',width : 200,align:'left',halign:'center'},
								{field : 'salerName',title : '调出公司',width : 200,align:'left',halign:'center'},
								{field : 'balanceStartDate',title : '结算起始日期',width : 100,align:'center',halign:'center'},
								{field : 'balanceEndDate',title : '结算结束日期',width : 100,align:'center',halign:'center'},
								{field : 'brandUnitName',title : '品牌部',width : 100,align:'center',halign:'center'},
								{field : 'balanceDate',title : '结算日',width : 100,align:'center',halign:'center'},
								{field : 'outQty',title : '发出数量',width : 80,align:'right',halign:'center'},
								{field : 'outAmount',title : '出库金额',width : 100,align:'right',halign:'center'},
								{field : 'deductionAmount',title : '扣项金额',width : 100,align:'right',halign:'center'},
								{field : 'balanceAmount',title : '应付金额',width : 100,align:'right',halign:'center'},
								{field : 'invoiceAmount',title : '发票金额',width : 100,align:'right',halign:'center'},
								{field : 'invoiceNo',title : '采购发票号',width : 150,align:'center',halign:'center'},
								{field : 'createUser',title : '制单人',width : 100,align:'center',halign:'center'},
								{field : 'createTime',title : '制单日期',width : 150,align:'center',halign:'center',sortField:'create_time',sortable:true},
								{field : 'auditor',title : '审核人',width : 100,align:'center',halign:'center'},
								{field : 'auditTime',title : '审核日期',width : 150,align:'center',halign:'center'},
								{field : 'billName',title : '单据名称',width : 100,align:'left',halign:'center'},
								{field : 'remark',title : '备注',width : 200,align:'left',halign:'center'}
				                 ]" 
					          jsonExtend='{
			                           onDblClickRow:function(rowIndex, rowData){
			                               //双击方法
					                   	  areaBalance.loadDetail(rowIndex,rowData);
					                   }
			         }'/>
			</div>
		 </div>
	</div>
</div>
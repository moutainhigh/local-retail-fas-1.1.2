package cn.wonhigh.retail.fas.common.exportformat;

import java.util.List;
import java.util.Map;

import cn.wonhigh.retail.fas.common.model.RegionCostMaintain;

/**
 *地区价格维护导出时转换model对象的类
 * 
 * @author zhu.ly
 * @date 2014-7-8 下午5:23:40
 * @version 0.1.0 
 * @copyright yougou.com 
 */
@SuppressWarnings({"rawtypes", "unchecked"})
public class RegionCostMaintainExportFormat extends AbstractExportFormat<RegionCostMaintain> {

	@Override
	public Map format(List<String> fields, RegionCostMaintain obj) throws Exception {
		Map map = null;
		try {
			map = super.format(fields, obj);
			for(String field : fields) {
				if("addBasis".equals(field)) {
					map.put(field, convertStatus(getFieldVal(field, obj)));
				}
			}
			return map;
		} catch(Exception e) {
			throw new Exception(e.getMessage(), e);

		}
	}
	private String convertStatus(Object value) {
		if(value == null)  {
			return "";
		}
		if("2".equals(value)) {
			return "牌价";
		}
		if("3".equals(value)) {
			return "总部成本";
		}
		return "";
	}
}

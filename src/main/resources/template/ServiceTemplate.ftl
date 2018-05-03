package ${config.PACKAGE_ROOT_NAME}.${config.PACKAGE_SERVICE_NAME};

import com.longmaosoft.data.dao.tags.${tableProName?cap_first}Dao;
import com.longmaosoft.lib.utils.entity.SimpleMap;
import org.springframework.stereotype.Service;
import com.longmaosoft.lib.web.entity.GridPage;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import javax.annotation.Resource;
import java.util.List;

/**
* -------------------------------------------------------------------------------
* 功能描述：	代码处成器生成
*
* 创建人：　	代码生成
* 创建日期：	${.now}
* 创建说明： 	${ tableProName?cap_first }业务逻辑实现
*
* 修改人：　
* 修改日期：
* 修改说明：
*
* -------------------------------------------------------------------------------
*/

@Service
public class ${tableProName?cap_first}ServiceImpl implements ${tableProName?cap_first}Service {

	@Resource
	private ${tableProName?cap_first}Dao ${tableProName}Dao;

    public SimpleMap get${tableProName?cap_first}ById(long id) {
        return ${tableProName}Dao.get${tableProName?cap_first}ById(id);
    }

    public void create${tableProName?cap_first}(SimpleMap map) {
		${tableProName}Dao.create${tableProName?cap_first}(map);
    }

    public boolean update${tableProName?cap_first}ById(SimpleMap map) {
        return ${tableProName}Dao.update${tableProName?cap_first}ById(map)>0;
    }

    public boolean delete${tableProName?cap_first}ById(long id) {
        return ${tableProName}Dao.delete${tableProName?cap_first}ById(id);
    }

    public GridPage query${tableProName?cap_first}PageList(SimpleMap params) {
        GridPage result = new GridPage();
        Page page = PageHelper.startPage(params.getInteger("page"), params.getInteger("pagesize"), true);
        result.setRows(${tableProName}Dao.query${tableProName?cap_first}List(params));
        result.setTotal(page.getTotal());
        return result;
    }

	public List<SimpleMap> query${tableProName?cap_first}List(SimpleMap params) {
    	return ${tableProName}Dao.query${tableProName?cap_first}List(params);
    }

}
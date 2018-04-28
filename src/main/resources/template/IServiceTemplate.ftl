package ${config.PACKAGE_ROOT_NAME}.${config.PACKAGE_ISERVICE_NAME};
import com.longmaosoft.lib.utils.entity.SimpleMap;
import com.longmaosoft.lib.web.entity.GridPage;

import java.util.List;

/**
* -------------------------------------------------------------------------------
* 功能描述：	代码处成器生成
*
* 创建人：　	代码生成
* 创建日期：	${.now}
* 创建说明： 	${ tableProName?cap_first }业务逻辑接口
*
* 修改人：　
* 修改日期：
* 修改说明：
*
* -------------------------------------------------------------------------------
*/

import java.util.List;

public interface ${tableProName?cap_first}Service {

    /**
     * 获取一条${tableName}表信息
     * @param id
     * @return
     */
    SimpleMap get${tableProName?cap_first}ById(long id);

    /**
     * 新增一条${tableName}表信息
     * @param map
     * @return
     */
    SimpleMap create${tableProName?cap_first}(SimpleMap map);

    /**
     * 通过ID更新一条${tableName}表信息
     * @param map
     * @return
     */
    boolean update${tableProName?cap_first}ById(SimpleMap map);

    /**
     * 通过ID删除一条${tableName}表信息
     * @param id
     * @return
     */
    boolean delete${tableProName?cap_first}ById(long id);

    /**
     * ${tableName}表列表页查询（带分页）
     * @param params
     * @return
     */
    GridPage query${tableProName?cap_first}PageList(SimpleMap params);

    /**
     * ${tableName}表查询（不带翻页）
     *
     * @param params
     * @return
     */
    List<SimpleMap> query${tableProName?cap_first}List(SimpleMap params);

}
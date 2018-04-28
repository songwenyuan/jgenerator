package ${config.PACKAGE_ROOT_NAME}.${config.PACKAGE_DAO_NAME};

import com.longmaosoft.lib.utils.entity.SimpleMap;

import java.util.List;

/**
* -------------------------------------------------------------------------------
* 功能描述：	代码生成器生成
*
* 创建人：　	代码生成
* 创建日期：	${.now}
* 创建说明： 	${ tableDescription?cap_first }数据操作
*
* 修改人：　
* 修改日期：
* 修改说明：
*
* -------------------------------------------------------------------------------
*/

public interface ${tableProName?cap_first}Dao {

	/**
     * 获取一条${tableDescription?cap_first}信息
     * @param id
     * @return
     */
    SimpleMap get${tableProName?cap_first}ById(long id);

    /**
     * 新增一条${tableDescription?cap_first}
     * @param map
     * @return
     */
    void create${tableProName?cap_first}(SimpleMap map);

    /**
     * 通过ID更新一条${tableDescription?cap_first}
     * @param map
     * @return
     */
    long update${tableProName?cap_first}ById(SimpleMap map);

    /**
     * 通过ID删除一条${tableDescription?cap_first}
     * @param id
     * @return
     */
    boolean delete${tableProName?cap_first}ById(long id);

    /**
     * ${tableDescription?cap_first}列表页查询
     * @param params
     * @return
     */
    List<SimpleMap> query${tableProName?cap_first}List(SimpleMap params);

}
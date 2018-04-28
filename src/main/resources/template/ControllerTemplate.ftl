package ${config.PACKAGE_ROOT_NAME}.${config.PACKAGE_CONTROLLER_NAME};


import com.longmaosoft.lib.utils.entity.Message;
import com.longmaosoft.lib.utils.entity.SimpleMap;
import org.springframework.web.bind.annotation.*;

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

@RestController
@RequestMapping(value = "tags/${tableProName}")
public class ${tableProName?cap_first}Action {

    @Resource
    private ${tableProName?cap_first}Service ${tableProName}Service;


    @RequestMapping(value = "get/{id}", method = RequestMethod.GET)
    public Message get${tableProName?cap_first}ById(@PathVariable long id) {
        return new Message(Message.STATUS_OK).setResult(${tableProName}Service.get${tableProName?cap_first}ById(id));
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public Message create${tableProName?cap_first}(@RequestBody SimpleMap map) {
        return new Message(Message.STATUS_OK).setResult(${tableProName}Service.create${tableProName?cap_first}(map));
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public Message update${tableProName?cap_first}ById(@RequestBody SimpleMap map) {
        return new Message(Message.STATUS_OK).setResult(${tableProName}Service.update${tableProName?cap_first}ById(map));
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public Message delete${tableProName?cap_first}ById(@PathVariable long id) {
        return new Message(Message.STATUS_OK).setResult(${tableProName}Service.delete${tableProName?cap_first}ById(id));
    }

    @RequestMapping(value = "query_page", method = RequestMethod.POST)
    public Message query${tableProName?cap_first}PageList(@RequestBody SimpleMap params) {
        return new Message(Message.STATUS_OK).setResult(${tableProName}Service.query${tableProName?cap_first}PageList(params));
    }

    @RequestMapping(value = "query", method = RequestMethod.POST)
    public Message query${tableProName?cap_first}List(@RequestBody SimpleMap params) {
        return new Message(Message.STATUS_OK).setResult(${tableProName}Service.query${tableProName?cap_first}List(params));
    }
}
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd" >
<mapper namespace="${config.PACKAGE_ROOT_NAME}.${tableProName?cap_first}${config.PACKAGE_DAO_NAME?cap_first}">

    <select id="get${tableProName?cap_first}ById" parameterType="long" resultType="bean">
        SELECT
        <#list fieldList as pro>
            `${pro.name}`<#if pro_has_next>,</#if>
        </#list>
        FROM
        `${tableName}`
        WHERE id=${r'#'}{id}
    </select>

    <insert id="create${tableProName?cap_first}" parameterType="map" useGeneratedKeys="true" keyProperty="id">
        INSERT INTO `${tableName}` (
        <#list fieldList as pro><#if pro.isIdentity==0>`${pro.name}`<#if pro_has_next>,</#if></#if></#list>
        )VALUES (
        <#list fieldList as pro><#if pro.isIdentity==0>${r'#'}{${pro.proName}}<#if pro_has_next>,</#if></#if></#list>
        )
    </insert>

    <update id="update${tableProName?cap_first}ById" parameterType="bean">
        UPDATE
    `${tableName}`
        <trim prefix="set" suffixOverrides=",">
        <#list fieldList as pro>
            <#if pro.isIdentity==0>
            <${r''}if test="${pro.proName} != null">
            `${pro.name}` = ${r'#'}{${pro.proName}}<#if pro_has_next>,</#if>
            </${r''}if>
            </#if>
        </#list>
        </trim>
        WHERE id = ${r'#'}{id}
    </update>

    <delete id="delete${tableProName?cap_first}ById" parameterType="long">
        DELETE FROM `${tableName}` where id = ${r'#'}{id}
    </delete>
    <!--暂时无调用 使用时删掉此行注释-->
    <select id="query${tableProName?cap_first}List" parameterType="map" resultType="bean">
        SELECT
        <#list fieldList as pro>
            `${pro.name}`<#if pro_has_next>,</#if>
        </#list>
        FROM
        `${tableName}`
    </select>
</mapper>

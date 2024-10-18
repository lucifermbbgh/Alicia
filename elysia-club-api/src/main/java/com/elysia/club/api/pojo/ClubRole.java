package com.elysia.club.api.pojo;

import com.elysia.common.base.BaseDao;
import lombok.Data;

/**
 * @BelongsProject: Elysia
 * @BelongsPackage: com.elysia.club.api.pojo
 * @Author: ElysiaKafka
 * @CreateTime: 2023-11-22  12:27:45
 * @Description: TODO
 * @Version: 1.0
 */
@Data
public class ClubRole extends BaseDao {
    private String id;// 角色id
    private String roleName;// 角色名
    private Integer status;// 状态
    private String createUser;// 创建用户
    private String createDate;// 创建日期
    private String createTime;// 创建时间
    private String updateUser;// 更新用户
    private String updateDate;// 更新日期
    private String updateTime;// 更新时间
}

/***
 * @Author: 码上talk|RC
 * @Date: 2020-06-12 15:36:59
 * @LastEditTime: 2020-06-12 15:37:00
 * @LastEditors: 码上talk|RC
 * @Description: 
 * @FilePath: \tacomall-springboot\tacomall-entity\src\main\java\cn\codingtalk\tacomallentity\admin\AdminDelivery.java
 * @Just do what I think it is right
 */
package store.tacomall.common.db.entity.admin;

import java.util.Date;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.*;

@Data
public class AdminDelivery {
    @TableId(value = "id", type = IdType.AUTO)
    private int id;

    private int isDelete;

    private Date createTime;

    private Date updateTime;

    private Date deleteTime;
}

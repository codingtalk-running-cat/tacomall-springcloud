/***
 * @Author: 码上talk|RC
 * @Date: 2020-06-09 23:20:09
 * @LastEditTime: 2020-11-13 09:12:49
 * @LastEditors: 码上talk|RC
 * @Description: 
 * @FilePath: /tacomall-springcloud/app/member/src/main/java/store/tacomall/appmember/controller/MemberController.java
 * @微信:  13680065830
 * @邮箱:  3189482282@qq.com
 * @oops: Just do what I think it is right
 */
/***
 * @Author: 码上talk|RC
 * @Date: 2020-06-09 23:20:09
 * @LastEditTime: 2020-06-17 14:53:30
 * @LastEditors: 码上talk|RC
 * @Description: 
 * @FilePath: /tacomall-springcloud/tacomall-service/app/app-member/src/main/java/cn/codingtalk/tacomallappmember/controller/MemberController.java
 * @Just do what I think it is right
 */
package store.tacomall.appmember.controller;

import java.util.HashMap;

import com.alibaba.fastjson.JSONObject;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

import store.tacomall.common.dto.AppDto;
import store.tacomall.db.entity.member.Member;
import store.tacomall.appmember.service.MemberService;

@RestController
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @PostMapping("/get")
    public AppDto<Member> get(@RequestBody JSONObject json) {
        return this.memberService.get(json);
    }

    @PostMapping("/add")
    public AppDto<Member> add(@RequestBody JSONObject json) {
        return this.memberService.add(json);
    }
}

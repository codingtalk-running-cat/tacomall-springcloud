/***
 * @Author: 码上talk|RC
 * @Date: 2020-06-12 14:45:49
 * @LastEditTime: ,: 2020-10-21 18:39:13
 * @LastEditors: ,: 码上talk|RC
 * @Description: 
 * @FilePath: ,: /tacomall-springboot/tacomall-mapper/src/main/java/store/tacomall/mapper/member/MemberWeixinMapper.java
 * @Just do what I think it is right
 */
package store.tacomall.common.db.mapper.member;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import store.tacomall.common.db.entity.member.MemberWeixin;

@Repository
public interface MemberWeixinMapper extends BaseMapper<MemberWeixin> {

    @Select("SELECT * FROM member_weixin WHERE member_id = #{memberId}")
    MemberWeixin getMemberWeixinByMemberId(@Param("memberId") int memberId);
}

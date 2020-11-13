/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : tacomall

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 29/10/2020 08:34:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `cover` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'H5地址',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, NULL, NULL, '//m.360buyimg.com/mobilecms/s700x280_jfs/t1/143134/11/9008/96174/5f685f2cE5640762c/458f0a5f4f8e22d3.jpg!q70.jpg.dpg', '', 0, NULL, NULL, NULL);
INSERT INTO `activity` VALUES (2, NULL, NULL, '//m.360buyimg.com/mobilecms/s700x280_jfs/t1/114550/12/7437/102254/5ec3971fE78db18f4/438d4775f9d653ee.jpg!q70.jpg.dpg', '', 0, NULL, NULL, NULL);
INSERT INTO `activity` VALUES (3, NULL, NULL, '//m.360buyimg.com/mobilecms/s700x280_jfs/t1/137439/29/12894/332063/5f8d846fEcf1b6300/9cdc34c5cc986663.jpg!q70.jpg.dpg', '', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for activity_apply
-- ----------------------------
DROP TABLE IF EXISTS `activity_apply`;
CREATE TABLE `activity_apply`  (
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_apply
-- ----------------------------

-- ----------------------------
-- Table structure for admin_auth_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_auth_role`;
CREATE TABLE `admin_auth_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限角色名',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理权限角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_auth_role
-- ----------------------------

-- ----------------------------
-- Table structure for admin_auth_role_mapping_rule
-- ----------------------------
DROP TABLE IF EXISTS `admin_auth_role_mapping_rule`;
CREATE TABLE `admin_auth_role_mapping_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色外键',
  `rule_id` int(11) NULL DEFAULT NULL COMMENT '规则外键',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理权限角色/规则关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_auth_role_mapping_rule
-- ----------------------------

-- ----------------------------
-- Table structure for admin_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `admin_auth_rule`;
CREATE TABLE `admin_auth_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `update_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理权限规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for admin_auth_rule_view
-- ----------------------------
DROP TABLE IF EXISTS `admin_auth_rule_view`;
CREATE TABLE `admin_auth_rule_view`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rule_id` int(11) NULL DEFAULT NULL COMMENT '规则外键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视图名称',
  `path` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视图地址',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理权限规则视图表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_auth_rule_view
-- ----------------------------

-- ----------------------------
-- Table structure for admin_coupon
-- ----------------------------
DROP TABLE IF EXISTS `admin_coupon`;
CREATE TABLE `admin_coupon`  (
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '平台全平类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for admin_coupon_mapping_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `admin_coupon_mapping_goods_category`;
CREATE TABLE `admin_coupon_mapping_goods_category`  (
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '平台优惠券/产品分类中间关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_coupon_mapping_goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for admin_delivery
-- ----------------------------
DROP TABLE IF EXISTS `admin_delivery`;
CREATE TABLE `admin_delivery`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物流表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_delivery
-- ----------------------------

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组件',
  `auth_role_id` int(11) NULL DEFAULT NULL COMMENT '权限角色外键',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `passwd` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `status` int(11) NULL DEFAULT NULL COMMENT '1',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '平台用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user
-- ----------------------------

-- ----------------------------
-- Table structure for admin_user_login_logger
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_login_logger`;
CREATE TABLE `admin_user_login_logger`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户外键',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user_login_logger
-- ----------------------------

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `goods_item_id` int(11) NULL DEFAULT NULL COMMENT '商品表外键',
  `quantity` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 1, 1, '2', 0, NULL, NULL, NULL);
INSERT INTO `cart` VALUES (2, 1, 3, '2', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `give_type` int(11) NULL DEFAULT NULL COMMENT '优惠卷类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
  `use_type` int(11) NULL DEFAULT NULL COMMENT '使用类型：0->全场通用；1->指定分类；2->指定商品',
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠码',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '金额',
  `note` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `count` int(11) NULL DEFAULT NULL COMMENT '数量',
  `receive_count` int(11) NULL DEFAULT NULL COMMENT '领取数量',
  `use_count` int(11) NULL DEFAULT NULL COMMENT '使用数量',
  `per_limit_count` int(11) NULL DEFAULT NULL COMMENT '没人限领数量',
  `enable_time` datetime(0) NULL DEFAULT NULL COMMENT '开始领取时间',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始使用时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束使用时间',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '商户表外键',
  `goods_brand_id` int(11) NULL DEFAULT NULL COMMENT '产品品牌表外键',
  `goods_category_id` int(11) NULL DEFAULT NULL COMMENT '产品分类表外键',
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `name` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `cover` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `attr_json` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格json',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 1, NULL, 6, NULL, '小米10', NULL, NULL, '[{\"attr\":[{\"key\":\"容量\",\"value\":\"8G\"},{\"key\":\"存储\",\"value\":\"64G\"}],\"goods_item_id\":1},{\"attr\":[{\"key\":\"容量\",\"value\":\"8G\"},{\"key\":\"存储\",\"value\":\"128G\"}],\"goods_item_id\":2}]', 0, NULL, NULL, NULL);
INSERT INTO `goods` VALUES (2, 1, NULL, 9, NULL, '格力（GREE）正1.5匹 品悦一级能效 变频冷暖 智能 壁挂式卧室空调挂机 KFR-35GW/(35592)FNhAc-A1(WIFI)', NULL, NULL, '[{\"attr\":[{\"key\":\"功率\",\"value\":\"800W\"}],\"goods_item_id\":3}]', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods_aftermarket
-- ----------------------------
DROP TABLE IF EXISTS `goods_aftermarket`;
CREATE TABLE `goods_aftermarket`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品售后表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_aftermarket
-- ----------------------------

-- ----------------------------
-- Table structure for goods_attr_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr_category`;
CREATE TABLE `goods_attr_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `p_id` int(11) NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品属性分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_attr_category
-- ----------------------------
INSERT INTO `goods_attr_category` VALUES (1, 0, '数码', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_category` VALUES (2, 1, '手机', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_category` VALUES (3, 0, '家电', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_category` VALUES (4, 3, '空调', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods_attr_key
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr_key`;
CREATE TABLE `goods_attr_key`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `attr_category_id` int(11) NULL DEFAULT NULL COMMENT '属性分类表外键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品属性键表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_attr_key
-- ----------------------------
INSERT INTO `goods_attr_key` VALUES (1, 2, '容量', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_key` VALUES (2, 2, '存储', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_key` VALUES (3, 4, '功率', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr_value`;
CREATE TABLE `goods_attr_value`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_key_id` int(11) NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT 0,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品属性值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_attr_value
-- ----------------------------
INSERT INTO `goods_attr_value` VALUES (1, 1, '8G', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_value` VALUES (2, 1, '12G', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_value` VALUES (3, 2, '64G', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_value` VALUES (4, 2, '128G', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_value` VALUES (5, 3, '800W', 0, NULL, NULL, NULL);
INSERT INTO `goods_attr_value` VALUES (6, 3, '1200W', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `goods_brand`;
CREATE TABLE `goods_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `cover` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_brand
-- ----------------------------

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `p_id` int(11) NULL DEFAULT NULL COMMENT '父id',
  `is_index_floor` int(11) NULL DEFAULT NULL COMMENT '首页楼层分类：0->否；1->是',
  `is_index_category` int(11) NULL DEFAULT NULL COMMENT '首页分类入口：0->否；1->是',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `cover` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `discription` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES (1, 0, 1, NULL, '热门推荐', NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_category` VALUES (2, 1, NULL, NULL, '热门分类', NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_category` VALUES (3, 2, NULL, 1, '电脑', NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_category` VALUES (4, 0, 1, NULL, '手机数码', NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_category` VALUES (5, 4, NULL, NULL, '热门品牌', NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_category` VALUES (6, 5, NULL, NULL, '小米', NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_category` VALUES (7, 0, NULL, 1, '美妆护肤', NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_category` VALUES (8, 7, NULL, NULL, '当季主推', NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_category` VALUES (9, 8, NULL, NULL, '防晒', NULL, NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `goods_evaluate`;
CREATE TABLE `goods_evaluate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `text` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复文本',
  `images` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复图片',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品评价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for goods_evaluate_reply
-- ----------------------------
DROP TABLE IF EXISTS `goods_evaluate_reply`;
CREATE TABLE `goods_evaluate_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `evaluate_id` int(11) NULL DEFAULT NULL COMMENT '产品评论表外键',
  `text` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复文本',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品评价回复表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_evaluate_reply
-- ----------------------------

-- ----------------------------
-- Table structure for goods_item
-- ----------------------------
DROP TABLE IF EXISTS `goods_item`;
CREATE TABLE `goods_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '产品表外键',
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `name` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `cover` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '金额',
  `git_integral` int(11) NULL DEFAULT NULL COMMENT '赠送积分',
  `gift_growth` int(11) NULL DEFAULT NULL COMMENT '赠送成长值',
  `stock` int(11) NULL DEFAULT NULL COMMENT '库存',
  `stock_low` int(11) NULL DEFAULT NULL COMMENT '库存预警',
  `promote_type` int(11) NULL DEFAULT NULL COMMENT '促销类型：0->没有促销使用原价；1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
  `promote_amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '促销金额',
  `promote_start_time` datetime(0) NULL DEFAULT NULL COMMENT '促销开始时间',
  `promote_end_time` datetime(0) NULL DEFAULT NULL COMMENT '促销结束时间',
  `promote_per_limit` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '促销限购数量',
  `status_new` int(11) NULL DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
  `status_publish` int(11) NULL DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
  `album_images` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相册',
  `album_h5_images` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动端相册',
  `detail_images` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情图片',
  `detail_h5_images` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动端详情图片',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_item
-- ----------------------------
INSERT INTO `goods_item` VALUES (1, 1, NULL, '小米10 6GRAM+128GROM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_item` VALUES (2, 1, NULL, '小米10 8GRAM+128GROM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `goods_item` VALUES (3, 2, NULL, '格力（GREE）大1匹 品悦一级能效 变频冷暖 智能 壁挂式卧室空调挂机 KFR-26GW/(26592)FNhAc-A1(WIFI) 大1匹', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods_service
-- ----------------------------
DROP TABLE IF EXISTS `goods_service`;
CREATE TABLE `goods_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品服务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_service
-- ----------------------------

-- ----------------------------
-- Table structure for jobs_info
-- ----------------------------
DROP TABLE IF EXISTS `jobs_info`;
CREATE TABLE `jobs_info`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs_info
-- ----------------------------

-- ----------------------------
-- Table structure for jobs_lock
-- ----------------------------
DROP TABLE IF EXISTS `jobs_lock`;
CREATE TABLE `jobs_lock`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务锁定表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs_lock
-- ----------------------------

-- ----------------------------
-- Table structure for jobs_log
-- ----------------------------
DROP TABLE IF EXISTS `jobs_log`;
CREATE TABLE `jobs_log`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs_log
-- ----------------------------

-- ----------------------------
-- Table structure for jobs_registry
-- ----------------------------
DROP TABLE IF EXISTS `jobs_registry`;
CREATE TABLE `jobs_registry`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务注册表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs_registry
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `passwd` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` int(11) NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `signature` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, NULL, NULL, '码上talk|RC', 'https://thirdwx.qlogo.cn/mmopen/vi_32/KmUvAQOOKMwDKib4WiaTVKGZkWvnQicXkMlU3c8tvicqzNbjBYUXer7S64JO7OsLHXsJjebqngvo6D6HFSQNs6Ut3Q/132', 0, NULL, NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for member_address
-- ----------------------------
DROP TABLE IF EXISTS `member_address`;
CREATE TABLE `member_address`  (
  `id` int(11) NULL DEFAULT NULL COMMENT '主键',
  `member_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员表外键',
  `post_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `area` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `district` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '街道',
  `detail` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `receiver_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人名称',
  `receiver_mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人手机',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_address
-- ----------------------------

-- ----------------------------
-- Table structure for member_collect_goods
-- ----------------------------
DROP TABLE IF EXISTS `member_collect_goods`;
CREATE TABLE `member_collect_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '会员表外键',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '产品表外键',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户收藏商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_collect_goods
-- ----------------------------

-- ----------------------------
-- Table structure for member_coupon_admin
-- ----------------------------
DROP TABLE IF EXISTS `member_coupon_admin`;
CREATE TABLE `member_coupon_admin`  (
  `id` int(11) NULL DEFAULT NULL COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '优惠表外键',
  `count` int(11) NULL DEFAULT NULL COMMENT '领取数量',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户平台优惠券表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_coupon_admin
-- ----------------------------

-- ----------------------------
-- Table structure for member_coupon_merchant
-- ----------------------------
DROP TABLE IF EXISTS `member_coupon_merchant`;
CREATE TABLE `member_coupon_merchant`  (
  `id` int(11) NULL DEFAULT NULL COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '优惠表外键',
  `count` int(11) NULL DEFAULT NULL COMMENT '领取数量',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户商家优惠券表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_coupon_merchant
-- ----------------------------

-- ----------------------------
-- Table structure for member_growth
-- ----------------------------
DROP TABLE IF EXISTS `member_growth`;
CREATE TABLE `member_growth`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `count` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成长值达标',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户成长表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_growth
-- ----------------------------

-- ----------------------------
-- Table structure for member_growth_rule
-- ----------------------------
DROP TABLE IF EXISTS `member_growth_rule`;
CREATE TABLE `member_growth_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `count` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成长值达标',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户成长规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_growth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for member_integral
-- ----------------------------
DROP TABLE IF EXISTS `member_integral`;
CREATE TABLE `member_integral`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `count` int(11) NULL DEFAULT NULL COMMENT '积分变化数量',
  `change_type` int(11) NULL DEFAULT NULL COMMENT '改变类型：0->减少；1->新增',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户积分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_integral
-- ----------------------------
INSERT INTO `member_integral` VALUES (1, 2, NULL, NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for member_integral_log
-- ----------------------------
DROP TABLE IF EXISTS `member_integral_log`;
CREATE TABLE `member_integral_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `count_remain` int(11) NULL DEFAULT NULL COMMENT '剩余积分',
  `count_cost` int(11) NULL DEFAULT NULL COMMENT '积分变化数量',
  `change_type` int(11) NULL DEFAULT NULL COMMENT '改变类型：0->减少；1->新增',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户积分记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_integral_log
-- ----------------------------

-- ----------------------------
-- Table structure for member_statistics_info
-- ----------------------------
DROP TABLE IF EXISTS `member_statistics_info`;
CREATE TABLE `member_statistics_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `consume_amount` int(11) NULL DEFAULT NULL COMMENT '消费总金额',
  `order_non_payment_count` int(11) NULL DEFAULT NULL COMMENT '未支付订单数量',
  `order_paid_count` int(11) NULL DEFAULT NULL COMMENT '待收货订单数量',
  `order_done_count` int(11) NULL DEFAULT NULL COMMENT '已完成订单数量',
  `order_return_count` int(11) NULL DEFAULT NULL COMMENT '售后订单数量',
  `integral_count` int(11) NULL DEFAULT NULL COMMENT '当前积分',
  `growth_count` int(11) NULL DEFAULT NULL COMMENT '成长值',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户统计信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_statistics_info
-- ----------------------------
INSERT INTO `member_statistics_info` VALUES (1, 1, 0, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for member_weixin
-- ----------------------------
DROP TABLE IF EXISTS `member_weixin`;
CREATE TABLE `member_weixin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `union_id` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信union_id',
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信昵称',
  `avatar` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信头像',
  `gender` int(11) NULL DEFAULT 0 COMMENT '微信性别',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信手机号',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户微信表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_weixin
-- ----------------------------
INSERT INTO `member_weixin` VALUES (1, 1, NULL, '码上talk|RC', 'https://thirdwx.qlogo.cn/mmopen/vi_32/KmUvAQOOKMwDKib4WiaTVKGZkWvnQicXkMlU3c8tvicqzNbjBYUXer7S64JO7OsLHXsJjebqngvo6D6HFSQNs6Ut3Q/132', 0, NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for member_weixin_ma
-- ----------------------------
DROP TABLE IF EXISTS `member_weixin_ma`;
CREATE TABLE `member_weixin_ma`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `open_id` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信open_id',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户微信小程序表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_weixin_ma
-- ----------------------------
INSERT INTO `member_weixin_ma` VALUES (1, 1, 'ovlOT0ieGQg_KCgelKGYVGINc4eY', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES (1, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for merchant_coupon
-- ----------------------------
DROP TABLE IF EXISTS `merchant_coupon`;
CREATE TABLE `merchant_coupon`  (
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户全品类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for merchant_coupon_mapping_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `merchant_coupon_mapping_goods_category`;
CREATE TABLE `merchant_coupon_mapping_goods_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `merchant_user_id` int(11) NULL DEFAULT NULL COMMENT '商户用户表外键',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '优惠券表外键',
  `goods_category_id` int(11) NULL DEFAULT NULL COMMENT '产品分类表外键',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户优惠券/产品分类中间关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_coupon_mapping_goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for merchant_coupon_mapping_goods_item
-- ----------------------------
DROP TABLE IF EXISTS `merchant_coupon_mapping_goods_item`;
CREATE TABLE `merchant_coupon_mapping_goods_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `merchant_user_id` int(11) NULL DEFAULT NULL COMMENT '商户用户表外键',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '优惠券表外键',
  `goods_item_id` int(11) NULL DEFAULT NULL COMMENT '商品表外键',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券/商品中间关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_coupon_mapping_goods_item
-- ----------------------------

-- ----------------------------
-- Table structure for merchant_user
-- ----------------------------
DROP TABLE IF EXISTS `merchant_user`;
CREATE TABLE `merchant_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `passwd` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `status` int(11) NULL DEFAULT NULL COMMENT '1',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_user
-- ----------------------------

-- ----------------------------
-- Table structure for merchant_user_login_logger
-- ----------------------------
DROP TABLE IF EXISTS `merchant_user_login_logger`;
CREATE TABLE `merchant_user_login_logger`  (
  `id` int(11) NOT NULL COMMENT '主键',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户外键',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户用户登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_user_login_logger
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户表外键',
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `total_amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '订单总金额',
  `pay_type` int(11) NULL DEFAULT NULL COMMENT '支付方式：0->未支付；1->支付宝；2->微信',
  `pay_amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '支付总金额',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `delivery_amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '物流费用金额',
  `delivery_id` int(11) NULL DEFAULT NULL COMMENT '物流表外键',
  `delivery_sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流编号',
  `delivery_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流发货时间',
  `promote_amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '促销抵扣金额',
  `integral_amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '积分抵扣金额',
  `coupon_amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '优惠券抵扣金额',
  `gift_integral` int(11) NULL DEFAULT NULL COMMENT '赠送积分',
  `gift_growth` int(11) NULL DEFAULT NULL COMMENT '赠送成长值',
  `receiver_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人名称',
  `receiver_mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人手机',
  `receiver_post_sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件区域编码',
  `receiver_province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `receiver_city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `receiver_area` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `receiver_district` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '街道',
  `receiver_detail` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `receiver_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货时间',
  `receipt_type` int(11) NULL DEFAULT NULL COMMENT '发票类型：0->不开发票；1->电子发票；2->纸质发票',
  `receipt_header` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票抬头',
  `receipt_content` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票内容',
  `receipt_receiver_email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票收件邮箱',
  `receipt_receiver_mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票收件手机号',
  `status` int(11) NULL DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `note` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_mapping_goods_item
-- ----------------------------
DROP TABLE IF EXISTS `order_mapping_goods_item`;
CREATE TABLE `order_mapping_goods_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单表外键',
  `goods_item_id` int(11) NULL DEFAULT NULL COMMENT '商品表外键',
  `amount` decimal(32, 8) NULL DEFAULT NULL COMMENT '成交金额',
  `quantity` int(11) NULL DEFAULT NULL COMMENT '数量',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单/产品中间关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_mapping_goods_item
-- ----------------------------

-- ----------------------------
-- Table structure for order_return_apply
-- ----------------------------
DROP TABLE IF EXISTS `order_return_apply`;
CREATE TABLE `order_return_apply`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单退货申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_return_apply
-- ----------------------------

-- ----------------------------
-- Table structure for order_return_type
-- ----------------------------
DROP TABLE IF EXISTS `order_return_type`;
CREATE TABLE `order_return_type`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单退货类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_return_type
-- ----------------------------

-- ----------------------------
-- Table structure for seckill
-- ----------------------------
DROP TABLE IF EXISTS `seckill`;
CREATE TABLE `seckill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `apply_total_count` int(11) NULL DEFAULT NULL COMMENT '可申请加入数量',
  `applay_used_count` int(11) NULL DEFAULT NULL COMMENT '已申请加入数量',
  `start_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开启时间',
  `end_tme` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秒杀主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seckill
-- ----------------------------

-- ----------------------------
-- Table structure for seckill_goods_apply
-- ----------------------------
DROP TABLE IF EXISTS `seckill_goods_apply`;
CREATE TABLE `seckill_goods_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `seckill_id` int(11) NULL DEFAULT NULL COMMENT '秒杀主表外键',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '商户外键',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '申请加入秒杀产品外键',
  `status` int(11) NULL DEFAULT NULL COMMENT '申请审核状态',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `total_count` int(11) NULL DEFAULT NULL COMMENT '可卖数量',
  `sell_out_count` int(11) NULL DEFAULT NULL COMMENT '卖出数量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秒杀产品申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seckill_goods_apply
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_config_oss`;
CREATE TABLE `sys_config_oss`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '阿里云存储配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oss_object
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss_object`;
CREATE TABLE `sys_oss_object`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '阿里云存储对象表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oss_object
-- ----------------------------

-- ----------------------------
-- Table structure for sys_region
-- ----------------------------
DROP TABLE IF EXISTS `sys_region`;
CREATE TABLE `sys_region`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_region
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sms_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_config`;
CREATE TABLE `sys_sms_config`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sms_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_weixin_ma_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_ma_config`;
CREATE TABLE `sys_weixin_ma_config`  (
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信小程序配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_weixin_ma_config
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : ALOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : db_ci_test_listrik

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 20/03/2024 15:54:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_finance
-- ----------------------------
DROP TABLE IF EXISTS `tbl_finance`;
CREATE TABLE `tbl_finance`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  `category` int NULL DEFAULT NULL COMMENT '1: finance performance, 2: finance ratio',
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `adddate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_finance
-- ----------------------------
INSERT INTO `tbl_finance` VALUES (1, 'Net Sales', 'IE', 433.00, 1, NULL, '2019-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (2, 'Net Sales', 'PLN', 155.50, 1, NULL, '2019-02-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (3, 'Net Sales', 'IE', 365.40, 1, NULL, '2020-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (4, 'Net Sales', 'PLN', 101.50, 1, NULL, '2020-02-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (5, 'Net Sales', 'IE', 426.40, 1, NULL, '2021-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (6, 'Net Sales', 'PLN', 89.50, 1, NULL, '2021-02-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (7, 'Net Sales', 'IE', 477.00, 1, NULL, '2022-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (8, 'Net Sales', 'PLN', 74.50, 1, NULL, '2022-02-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (9, 'Net Sales', 'IE', 472.20, 1, NULL, '2023-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (10, 'Net Sales', 'PLN', 73.90, 1, NULL, '2023-02-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (11, 'Operating Profit', NULL, 162.80, 1, NULL, '2019-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (12, 'Operating Profit', NULL, 127.80, 1, NULL, '2020-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (13, 'Operating Profit', NULL, 144.90, 1, NULL, '2021-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (14, 'Operating Profit', NULL, 133.60, 1, NULL, '2022-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (15, 'Operating Profit', NULL, 124.60, 1, NULL, '2023-01-01', '2024-03-20 10:36:39');
INSERT INTO `tbl_finance` VALUES (16, 'Profit Before Income Tax', NULL, 140.40, 1, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (17, 'Profit Before Income Tax', NULL, 105.10, 1, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (18, 'Profit Before Income Tax', NULL, 120.70, 1, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (19, 'Profit Before Income Tax', NULL, 111.30, 1, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (20, 'Profit Before Income Tax', NULL, 113.30, 1, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (21, 'Profit for the Year', NULL, 113.50, 1, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (22, 'Profit for the Year', NULL, 74.80, 1, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (23, 'Profit for the Year', NULL, 90.40, 1, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (24, 'Profit for the Year', NULL, 72.50, 1, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (25, 'Profit for the Year', NULL, 77.00, 1, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (26, 'Total Comprehensive Income for the Year', NULL, 113.30, 1, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (27, 'Total Comprehensive Income for the Year', NULL, 74.90, 1, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (28, 'Total Comprehensive Income for the Year', NULL, 91.00, 1, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (29, 'Total Comprehensive Income for the Year', NULL, 68.50, 1, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (30, 'Total Comprehensive Income for the Year', NULL, 78.10, 1, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (31, 'Basic Earnings per Share (US$)', NULL, 0.71, 1, 'dolar', '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (32, 'Basic Earnings per Share (US$)', NULL, 0.47, 1, 'dolar', '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (33, 'Basic Earnings per Share (US$)', NULL, 0.57, 1, 'dolar', '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (34, 'Basic Earnings per Share (US$)', NULL, 0.46, 1, 'dolar', '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (35, 'Basic Earnings per Share (US$)', NULL, 0.49, 1, 'dolar', '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (36, 'Total Liabilities', NULL, 665.20, 1, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (37, 'Total Liabilities', NULL, 672.30, 1, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (38, 'Total Liabilities', NULL, 660.50, 1, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (39, 'Total Liabilities', NULL, 661.90, 1, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (40, 'Total Liabilities', NULL, 620.10, 1, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (41, 'Total Equity', NULL, 659.60, 1, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (42, 'Total Equity', NULL, 670.60, 1, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (43, 'Total Equity', NULL, 698.50, 1, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (44, 'Total Equity', NULL, 699.80, 1, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (45, 'Total Equity', NULL, 704.10, 1, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (46, 'Cash Ratio (times)', NULL, 44.00, 2, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (47, 'Cash Ratio (times)', NULL, 48.00, 2, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (48, 'Cash Ratio (times)', NULL, 52.00, 2, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (49, 'Cash Ratio (times)', NULL, 56.00, 2, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (50, 'Cash Ratio (times)', NULL, 42.00, 2, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (51, 'Quick Ratio (times)', NULL, 58.00, 2, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (52, 'Quick Ratio (times)', NULL, 69.00, 2, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (53, 'Quick Ratio (times)', NULL, 84.00, 2, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (54, 'Quick Ratio (times)', NULL, 87.00, 2, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (55, 'Quick Ratio (times)', NULL, 83.00, 2, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (56, 'Current Ratio (times)', NULL, 67.00, 2, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (57, 'Current Ratio (times)', NULL, 77.00, 2, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (58, 'Current Ratio (times)', NULL, 93.00, 2, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (59, 'Current Ratio (times)', NULL, 99.00, 2, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (60, 'Current Ratio (times)', NULL, 96.00, 2, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (61, 'Debt to Equity Ratio1 (times)', NULL, 1.00, 2, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (62, 'Debt to Equity Ratio1 (times)', NULL, 1.00, 2, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (63, 'Debt to Equity Ratio1 (times)', NULL, 9.00, 2, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (64, 'Debt to Equity Ratio1 (times)', NULL, 9.00, 2, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (65, 'Debt to Equity Ratio1 (times)', NULL, 9.00, 2, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (66, 'Debt to Asset Ratio2 (times)', NULL, 0.50, 2, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (67, 'Debt to Asset Ratio2 (times)', NULL, 0.50, 2, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (68, 'Debt to Asset Ratio2 (times)', NULL, 0.50, 2, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (69, 'Debt to Asset Ratio2 (times)', NULL, 0.50, 2, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (70, 'Debt to Asset Ratio2 (times)', NULL, 0.50, 2, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (71, 'Return on Assets (%)', NULL, 8.60, 2, 'percent', '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (72, 'Return on Assets (%)', NULL, 5.60, 2, 'percent', '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (73, 'Return on Assets (%)', NULL, 6.70, 2, 'percent', '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (74, 'Return on Assets (%)', NULL, 5.30, 2, 'percent', '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (75, 'Return on Assets (%)', NULL, 5.80, 2, 'percent', '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (76, 'Return on Equity (%)', NULL, 17.20, 2, 'percent', '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (77, 'Return on Equity (%)', NULL, 11.10, 2, 'percent', '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (78, 'Return on Equity (%)', NULL, 12.90, 2, 'percent', '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (79, 'Return on Equity (%)', NULL, 10.40, 2, 'percent', '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (80, 'Return on Equity (%)', NULL, 10.90, 2, 'percent', '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (81, 'Net Profit Margin (%)', NULL, 19.30, 2, 'percent', '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (82, 'Net Profit Margin (%)', NULL, 17.60, 2, 'percent', '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (83, 'Net Profit Margin (%)', NULL, 16.00, 2, 'percent', '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (84, 'Net Profit Margin (%)', NULL, 13.20, 2, 'percent', '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (85, 'Net Profit Margin (%)', NULL, 14.10, 2, 'percent', '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (86, 'Fixed Charge Coverage Ratio3 (times)', NULL, 7.90, 2, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (87, 'Fixed Charge Coverage Ratio3 (times)', NULL, 6.50, 2, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (88, 'Fixed Charge Coverage Ratio3 (times)', NULL, 7.10, 2, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (89, 'Fixed Charge Coverage Ratio3 (times)', NULL, 7.20, 2, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (90, 'Fixed Charge Coverage Ratio3 (times)', NULL, 7.40, 2, NULL, '2023-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (91, 'Net Debt to EBITDA Ratio4 (times)', NULL, 1.30, 2, NULL, '2019-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (92, 'Net Debt to EBITDA Ratio4 (times)', NULL, 1.40, 2, NULL, '2020-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (93, 'Net Debt to EBITDA Ratio4 (times)', NULL, 1.30, 2, NULL, '2021-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (94, 'Net Debt to EBITDA Ratio4 (times)', NULL, 0.90, 2, NULL, '2022-01-01', '2024-03-20 14:49:18');
INSERT INTO `tbl_finance` VALUES (95, 'Net Debt to EBITDA Ratio4 (times)', NULL, 0.50, 2, NULL, '2023-01-01', '2024-03-20 14:49:18');

-- ----------------------------
-- Table structure for tbl_stetment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stetment`;
CREATE TABLE `tbl_stetment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `adddate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_stetment
-- ----------------------------
INSERT INTO `tbl_stetment` VALUES (1, 'FINANCIAL STATEMENTS ', '2023-12-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (2, 'FINANCIAL STATEMENTS ', '2023-09-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (3, 'FINANCIAL STATEMENTS ', '2023-06-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (4, 'FINANCIAL STATEMENTS ', '2023-03-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (5, 'FINANCIAL STATEMENTS ', '2022-12-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (6, 'FINANCIAL STATEMENTS ', '2022-09-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (7, 'FINANCIAL STATEMENTS ', '2022-06-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (8, 'FINANCIAL STATEMENTS ', '2022-03-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (9, 'FINANCIAL STATEMENTS ', '2021-12-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (10, 'FINANCIAL STATEMENTS ', '2021-09-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (11, 'FINANCIAL STATEMENTS ', '2021-06-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (12, 'FINANCIAL STATEMENTS ', '2021-03-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (13, 'FINANCIAL STATEMENTS ', '2020-12-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (14, 'FINANCIAL STATEMENTS ', '2020-09-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (15, 'FINANCIAL STATEMENTS ', '2020-06-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (16, 'FINANCIAL STATEMENTS ', '2020-03-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (17, 'FINANCIAL STATEMENTS ', '2019-12-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (18, 'FINANCIAL STATEMENTS ', '2019-09-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (19, 'FINANCIAL STATEMENTS ', '2019-06-30', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);
INSERT INTO `tbl_stetment` VALUES (20, 'FINANCIAL STATEMENTS ', '2019-03-31', 'https://www.listrindo.com/uploads/financial_statement/pri_1709225695_fb44e98c73db9efdba852258a2f15524.jpg', NULL);

SET FOREIGN_KEY_CHECKS = 1;

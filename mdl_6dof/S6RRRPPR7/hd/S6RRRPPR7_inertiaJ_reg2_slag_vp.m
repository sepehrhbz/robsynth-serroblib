% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 16:02
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPPR7_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR7_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR7_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 05:56:58
% EndTime: 2019-05-07 05:57:05
% DurationCPUTime: 2.15s
% Computational Cost: add. (1710->182), mult. (3248->345), div. (0->0), fcn. (3514->8), ass. (0->100)
t89 = sin(qJ(3));
t82 = t89 ^ 2;
t91 = cos(qJ(3));
t84 = t91 ^ 2;
t134 = t82 + t84;
t133 = -t91 * pkin(3) - t89 * qJ(4);
t60 = -pkin(2) + t133;
t43 = t91 * pkin(4) - t60;
t86 = sin(pkin(10));
t87 = cos(pkin(10));
t44 = t86 * t89 + t87 * t91;
t27 = pkin(5) * t44 + t43;
t132 = 0.2e1 * t27;
t131 = 0.2e1 * t43;
t130 = -0.2e1 * t60;
t90 = sin(qJ(2));
t129 = -0.2e1 * t90;
t128 = 0.2e1 * t90;
t92 = cos(qJ(2));
t127 = -0.2e1 * t92;
t126 = 0.2e1 * t92;
t125 = -pkin(3) - pkin(4);
t124 = pkin(2) * t89;
t123 = pkin(2) * t91;
t122 = pkin(3) * t89;
t121 = pkin(7) * t89;
t120 = pkin(7) * t91;
t119 = t89 * pkin(8);
t118 = t90 * pkin(7);
t117 = t91 * pkin(8);
t116 = cos(qJ(6));
t115 = t89 * t90;
t114 = t89 * t91;
t113 = t89 * t92;
t112 = t90 * t92;
t74 = t91 * t90;
t111 = t91 * t92;
t110 = pkin(8) - qJ(5);
t105 = qJ(5) * t90;
t61 = -pkin(2) * t92 - pkin(8) * t90 - pkin(1);
t109 = pkin(7) * t113 - t91 * t61;
t81 = t92 * pkin(3);
t33 = t81 + t109;
t18 = pkin(4) * t92 - t91 * t105 + t33;
t106 = qJ(4) * t92;
t36 = pkin(7) * t111 + t89 * t61;
t32 = -t106 + t36;
t23 = t89 * t105 + t32;
t9 = t86 * t18 + t87 * t23;
t101 = t110 * t91;
t102 = t110 * t89;
t30 = t87 * t101 + t86 * t102;
t108 = t134 * pkin(8) ^ 2;
t107 = qJ(4) * t91;
t104 = t89 * t112;
t83 = t90 ^ 2;
t103 = t83 * t114;
t100 = -t87 * t18 + t23 * t86;
t56 = t86 * qJ(4) - t87 * t125;
t99 = -pkin(5) - t56;
t98 = t107 - t122;
t97 = t32 * t91 + t33 * t89;
t96 = t109 * t89 + t36 * t91;
t28 = t86 * t101 - t87 * t102;
t40 = t44 * t90;
t3 = pkin(5) * t92 - pkin(9) * t40 - t100;
t38 = -t87 * t115 + t86 * t74;
t4 = -pkin(9) * t38 + t9;
t88 = sin(qJ(6));
t1 = t116 * t3 - t88 * t4;
t2 = t116 * t4 + t88 * t3;
t65 = t90 * t107;
t31 = t65 + (t125 * t89 - pkin(7)) * t90;
t48 = -t86 * t91 + t87 * t89;
t95 = -t48 * pkin(9) - t28;
t94 = pkin(7) ^ 2;
t85 = t92 ^ 2;
t77 = t83 * t94;
t73 = t84 * t83;
t72 = t82 * t83;
t67 = pkin(8) * t113;
t64 = t89 * t74;
t62 = t111 * t129;
t59 = 0.2e1 * t134 * pkin(8);
t58 = t87 * qJ(4) + t86 * t125;
t55 = (t82 - t84) * t90;
t49 = t116 * t86 + t88 * t87;
t46 = -t116 * t87 + t88 * t86;
t37 = -t65 + (pkin(7) + t122) * t90;
t26 = t116 * t58 + t88 * t99;
t24 = -t116 * t99 + t88 * t58;
t22 = t116 * t48 - t88 * t44;
t20 = t116 * t44 + t88 * t48;
t15 = -pkin(9) * t44 + t30;
t14 = t116 * t40 - t88 * t38;
t12 = t116 * t38 + t88 * t40;
t10 = t38 * pkin(5) + t31;
t7 = t116 * t15 + t88 * t95;
t5 = -t116 * t95 + t88 * t15;
t6 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t83, 0.2e1 * t112, 0, t85, 0, 0, pkin(1) * t126, pkin(1) * t129, 0.2e1 * (t83 + t85) * pkin(7), pkin(1) ^ 2 + t85 * t94 + t77, t73, -0.2e1 * t103, t62, t72, 0.2e1 * t104, t85, 0.2e1 * t109 * t92 + 0.2e1 * t83 * t121, 0.2e1 * t83 * t120 + 0.2e1 * t36 * t92 (t109 * t91 - t36 * t89) * t128, t109 ^ 2 + t36 ^ 2 + t77, t73, t62, 0.2e1 * t103, t85, -0.2e1 * t104, t72, 0.2e1 * t37 * t115 + 0.2e1 * t33 * t92 (-t32 * t89 + t33 * t91) * t128, -0.2e1 * t32 * t92 - 0.2e1 * t37 * t74, t32 ^ 2 + t33 ^ 2 + t37 ^ 2, t40 ^ 2, -0.2e1 * t40 * t38, t40 * t126, t38 ^ 2, t38 * t127, t85, -0.2e1 * t100 * t92 + 0.2e1 * t31 * t38, 0.2e1 * t31 * t40 - 0.2e1 * t9 * t92, 0.2e1 * t100 * t40 - 0.2e1 * t38 * t9, t100 ^ 2 + t31 ^ 2 + t9 ^ 2, t14 ^ 2, -0.2e1 * t14 * t12, t14 * t126, t12 ^ 2, t12 * t127, t85, 0.2e1 * t1 * t92 + 0.2e1 * t10 * t12, 0.2e1 * t10 * t14 - 0.2e1 * t2 * t92, -0.2e1 * t1 * t14 - 0.2e1 * t12 * t2, t1 ^ 2 + t10 ^ 2 + t2 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, 0, t92, 0, -t118, -t92 * pkin(7), 0, 0, t64, -t55, -t113, -t64, -t111, 0, t67 + (-t120 - t124) * t90, pkin(8) * t111 + (t121 - t123) * t90, t96, -pkin(2) * t118 + t96 * pkin(8), t64, -t113, t55, 0, t111, -t64, t60 * t115 - t37 * t91 + t67, t97, -t37 * t89 + (-pkin(8) * t92 - t60 * t90) * t91, t97 * pkin(8) + t37 * t60, t40 * t48, -t38 * t48 - t40 * t44, t48 * t92, t38 * t44, -t44 * t92, 0, -t28 * t92 + t31 * t44 + t38 * t43, -t30 * t92 + t31 * t48 + t40 * t43, t100 * t48 + t28 * t40 - t30 * t38 - t44 * t9, t100 * t28 + t30 * t9 + t31 * t43, t14 * t22, -t12 * t22 - t14 * t20, t22 * t92, t12 * t20, -t20 * t92, 0, t10 * t20 + t12 * t27 - t5 * t92, t10 * t22 + t14 * t27 - t7 * t92, -t1 * t22 - t12 * t7 + t14 * t5 - t2 * t20, -t1 * t5 + t10 * t27 + t2 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t82, 0.2e1 * t114, 0, t84, 0, 0, 0.2e1 * t123, -0.2e1 * t124, t59, pkin(2) ^ 2 + t108, t82, 0, -0.2e1 * t114, 0, 0, t84, t91 * t130, t59, t89 * t130, t60 ^ 2 + t108, t48 ^ 2, -0.2e1 * t48 * t44, 0, t44 ^ 2, 0, 0, t44 * t131, t48 * t131, 0.2e1 * t28 * t48 - 0.2e1 * t30 * t44, t28 ^ 2 + t30 ^ 2 + t43 ^ 2, t22 ^ 2, -0.2e1 * t22 * t20, 0, t20 ^ 2, 0, 0, t20 * t132, t22 * t132, -0.2e1 * t20 * t7 + 0.2e1 * t5 * t22, t27 ^ 2 + t5 ^ 2 + t7 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, -t115, -t92, -t109, -t36, 0, 0, 0, t74, 0, -t92, t115, 0, -0.2e1 * t81 - t109, t133 * t90, -0.2e1 * t106 + t36, -pkin(3) * t33 + qJ(4) * t32, 0, 0, -t40, 0, t38, -t92, -t56 * t92 + t100, -t58 * t92 + t9, -t38 * t58 + t40 * t56, t100 * t56 + t58 * t9, 0, 0, -t14, 0, t12, -t92, -t24 * t92 - t1, -t26 * t92 + t2, -t12 * t26 + t14 * t24, -t1 * t24 + t2 * t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t89, 0, t91, 0, -t119, -t117, 0, 0, 0, t89, 0, 0, -t91, 0, -t119, t98, t117, t98 * pkin(8), 0, 0, -t48, 0, t44, 0, t28, t30, -t44 * t58 + t48 * t56, t28 * t56 + t30 * t58, 0, 0, -t22, 0, t20, 0, t5, t7, -t20 * t26 + t22 * t24, t24 * t5 + t26 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(3), 0, 0.2e1 * qJ(4), pkin(3) ^ 2 + qJ(4) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t56, 0.2e1 * t58, 0, t56 ^ 2 + t58 ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t24, 0.2e1 * t26, 0, t24 ^ 2 + t26 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, t74, 0, t33, 0, 0, 0, 0, 0, 0, t87 * t92, -t86 * t92, -t38 * t86 - t40 * t87, -t100 * t87 + t86 * t9, 0, 0, 0, 0, 0, 0, -t46 * t92, -t49 * t92, -t12 * t49 + t14 * t46, -t1 * t46 + t2 * t49; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t89, 0, t119, 0, 0, 0, 0, 0, 0, 0, 0, -t44 * t86 - t48 * t87, -t28 * t87 + t30 * t86, 0, 0, 0, 0, 0, 0, 0, 0, -t20 * t49 + t22 * t46, t46 * t5 + t49 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(3), 0, 0, 0, 0, 0, 0, -t87, t86, 0, -t56 * t87 + t58 * t86, 0, 0, 0, 0, 0, 0, t46, t49, 0, t24 * t46 + t26 * t49; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86 ^ 2 + t87 ^ 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46 ^ 2 + t49 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, t40, 0, t31, 0, 0, 0, 0, 0, 0, t12, t14, 0, t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, t48, 0, t43, 0, 0, 0, 0, 0, 0, t20, t22, 0, t27; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t14, 0, -t12, t92, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t22, 0, -t20, 0, -t5, -t7, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -t24, -t26, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t46, -t49, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t6;

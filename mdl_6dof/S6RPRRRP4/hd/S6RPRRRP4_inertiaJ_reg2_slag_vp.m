% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRRRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRRRP4_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP4_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP4_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 01:25:35
% EndTime: 2019-05-06 01:25:40
% DurationCPUTime: 1.76s
% Computational Cost: add. (1909->134), mult. (3626->233), div. (0->0), fcn. (4398->8), ass. (0->96)
t67 = sin(qJ(5));
t63 = t67 ^ 2;
t70 = cos(qJ(5));
t64 = t70 ^ 2;
t51 = t63 + t64;
t68 = sin(qJ(4));
t103 = t68 * pkin(3);
t56 = pkin(9) + t103;
t90 = t51 * t56;
t65 = sin(pkin(10));
t66 = cos(pkin(10));
t69 = sin(qJ(3));
t72 = cos(qJ(3));
t41 = -t69 * t65 + t72 * t66;
t42 = t72 * t65 + t69 * t66;
t71 = cos(qJ(4));
t33 = t68 * t41 + t71 * t42;
t112 = -0.2e1 * t33;
t93 = pkin(7) + qJ(2);
t44 = t93 * t65;
t45 = t93 * t66;
t35 = -t69 * t44 + t72 * t45;
t20 = t41 * pkin(8) + t35;
t34 = -t72 * t44 - t69 * t45;
t76 = -t42 * pkin(8) + t34;
t11 = t20 * t68 - t71 * t76;
t111 = t11 ^ 2;
t31 = -t71 * t41 + t68 * t42;
t29 = t31 ^ 2;
t55 = -t66 * pkin(2) - pkin(1);
t36 = -t41 * pkin(3) + t55;
t110 = 0.2e1 * t36;
t109 = 0.2e1 * t42;
t108 = 0.2e1 * t66;
t107 = 0.2e1 * t67;
t106 = -0.2e1 * t70;
t105 = pkin(5) * t31;
t104 = t67 * pkin(5);
t102 = t70 * pkin(5);
t96 = t67 * t33;
t8 = pkin(5) * t96 + t11;
t101 = t70 * t8;
t100 = t71 * pkin(3);
t57 = -pkin(4) - t100;
t99 = pkin(4) - t57;
t98 = t11 * t70;
t97 = t67 * t31;
t95 = t67 * t70;
t13 = t71 * t20 + t68 * t76;
t94 = t70 * t13;
t28 = t70 * t33;
t92 = -qJ(6) - pkin(9);
t58 = -pkin(4) - t102;
t46 = t58 - t100;
t91 = t46 + t58;
t89 = t51 * pkin(9);
t61 = t65 ^ 2;
t62 = t66 ^ 2;
t88 = t61 + t62;
t87 = qJ(6) * t33;
t86 = qJ(6) + t56;
t85 = t31 * t112;
t14 = t31 * pkin(4) - t33 * pkin(9) + t36;
t5 = -t13 * t67 + t70 * t14;
t77 = -t70 * t87 + t5;
t2 = t77 + t105;
t4 = t94 + (t14 - t87) * t67;
t84 = -t2 * t67 + t4 * t70;
t83 = -pkin(4) * t33 - pkin(9) * t31;
t82 = t2 * t70 + t4 * t67;
t6 = t14 * t67 + t94;
t81 = t5 * t70 + t6 * t67;
t1 = -t5 * t67 + t6 * t70;
t80 = -t31 * t56 + t33 * t57;
t39 = t86 * t67;
t40 = t86 * t70;
t79 = -t39 * t70 + t40 * t67;
t47 = t92 * t67;
t48 = t92 * t70;
t78 = t47 * t70 - t48 * t67;
t52 = 0.2e1 * t95;
t43 = t48 * t70;
t37 = t40 * t70;
t30 = t33 ^ 2;
t27 = t70 * t31;
t26 = t64 * t30;
t23 = t63 * t30;
t22 = t67 * t28;
t21 = -0.2e1 * t30 * t95;
t18 = 0.2e1 * t31 * t28;
t17 = t67 * t85;
t16 = t51 * t33;
t15 = (-t63 + t64) * t33;
t9 = t11 * t67;
t7 = t8 * t67;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t61, t65 * t108, 0, t62, 0, 0, pkin(1) * t108, -0.2e1 * pkin(1) * t65, 0.2e1 * t88 * qJ(2), t88 * qJ(2) ^ 2 + pkin(1) ^ 2, t42 ^ 2, t41 * t109, 0, t41 ^ 2, 0, 0, -0.2e1 * t55 * t41, t55 * t109, -0.2e1 * t34 * t42 + 0.2e1 * t35 * t41, t34 ^ 2 + t35 ^ 2 + t55 ^ 2, t30, t85, 0, t29, 0, 0, t31 * t110, t33 * t110, 0.2e1 * t11 * t33 - 0.2e1 * t13 * t31, t13 ^ 2 + t36 ^ 2 + t111, t26, t21, t18, t23, t17, t29, 0.2e1 * t11 * t96 + 0.2e1 * t31 * t5, 0.2e1 * t11 * t28 - 0.2e1 * t31 * t6, t81 * t112, t5 ^ 2 + t6 ^ 2 + t111, t26, t21, t18, t23, t17, t29, 0.2e1 * t2 * t31 + 0.2e1 * t8 * t96, 0.2e1 * t8 * t28 - 0.2e1 * t31 * t4, t82 * t112, t2 ^ 2 + t4 ^ 2 + t8 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t66, t65, 0, -pkin(1), 0, 0, 0, 0, 0, 0, -t41, t42, 0, t55, 0, 0, 0, 0, 0, 0, t31, t33, 0, t36, 0, 0, 0, 0, 0, 0, t27, -t97, -t16, t81, 0, 0, 0, 0, 0, 0, t27, -t97, -t16, t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42, 0, t41, 0, t34, -t35, 0, 0, 0, 0, t33, 0, -t31, 0, -t11, -t13 (-t31 * t68 - t33 * t71) * pkin(3) (-t11 * t71 + t13 * t68) * pkin(3), t22, t15, t97, -t22, t27, 0, t80 * t67 - t98, t80 * t70 + t9, t1, t1 * t56 + t11 * t57, t22, t15, t97, -t22, t27, 0, -t31 * t39 + t46 * t96 - t101, t46 * t28 - t31 * t40 + t7, -t79 * t33 + t84, -t2 * t39 + t4 * t40 + t46 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t100, -0.2e1 * t103, 0 (t68 ^ 2 + t71 ^ 2) * pkin(3) ^ 2, t63, t52, 0, t64, 0, 0, t57 * t106, t57 * t107, 0.2e1 * t90, t51 * t56 ^ 2 + t57 ^ 2, t63, t52, 0, t64, 0, 0, t46 * t106, t46 * t107, 0.2e1 * t39 * t67 + 0.2e1 * t37, t39 ^ 2 + t40 ^ 2 + t46 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t33, 0, -t31, 0, -t11, -t13, 0, 0, t22, t15, t97, -t22, t27, 0, t83 * t67 - t98, t83 * t70 + t9, t1, -t11 * pkin(4) + t1 * pkin(9), t22, t15, t97, -t22, t27, 0, t31 * t47 + t58 * t96 - t101, t58 * t28 + t31 * t48 + t7, -t78 * t33 + t84, t2 * t47 - t4 * t48 + t58 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t100, -t103, 0, 0, t63, t52, 0, t64, 0, 0, t99 * t70, -t99 * t67, t89 + t90, -t57 * pkin(4) + pkin(9) * t90, t63, t52, 0, t64, 0, 0, -t91 * t70, t91 * t67, t37 - t43 + (t39 - t47) * t67, -t39 * t47 - t40 * t48 + t46 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t63, t52, 0, t64, 0, 0, 0.2e1 * pkin(4) * t70, -0.2e1 * pkin(4) * t67, 0.2e1 * t89, t51 * pkin(9) ^ 2 + pkin(4) ^ 2, t63, t52, 0, t64, 0, 0, t58 * t106, t58 * t107, -0.2e1 * t47 * t67 - 0.2e1 * t43, t47 ^ 2 + t48 ^ 2 + t58 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28, 0, -t96, t31, t5, -t6, 0, 0, 0, 0, t28, 0, -t96, t31, t77 + 0.2e1 * t105, -t4, -pkin(5) * t28, t2 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t70, -t67, 0, 0, 0, 0, 0, 0, 0, 0, t70, -t67, 0, t102; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, 0, t70, 0, -t67 * t56, -t70 * t56, 0, 0, 0, 0, t67, 0, t70, 0, -t39, -t40, -t104, -t39 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, 0, t70, 0, -t67 * pkin(9), -t70 * pkin(9), 0, 0, 0, 0, t67, 0, t70, 0, t47, t48, -t104, t47 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * pkin(5), 0, 0, pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, t28, 0, t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, t67, 0, t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, t67, 0, t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t3;

% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPPPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPPPR4_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR4_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPPR4_inertiaJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 08:44:15
% EndTime: 2019-05-06 08:44:20
% DurationCPUTime: 1.37s
% Computational Cost: add. (757->119), mult. (1328->205), div. (0->0), fcn. (1351->6), ass. (0->86)
t72 = sin(pkin(9));
t67 = t72 ^ 2;
t73 = cos(pkin(9));
t68 = t73 ^ 2;
t50 = t67 + t68;
t76 = sin(qJ(2));
t70 = t76 ^ 2;
t78 = cos(qJ(2));
t71 = t78 ^ 2;
t111 = t70 + t71;
t75 = sin(qJ(6));
t77 = cos(qJ(6));
t110 = t72 * t77 - t73 * t75;
t81 = t72 * t75 + t73 * t77;
t109 = t81 ^ 2;
t108 = -0.2e1 * t81;
t107 = -0.2e1 * t76;
t106 = 0.2e1 * t78;
t105 = 2 * qJ(3);
t104 = pkin(3) + pkin(7);
t103 = -pkin(4) - pkin(5);
t74 = -pkin(2) - qJ(4);
t84 = -t76 * qJ(3) - pkin(1);
t30 = t74 * t78 + t84;
t65 = t76 * pkin(7);
t46 = pkin(3) * t76 + t65;
t14 = -t30 * t72 + t73 * t46;
t96 = t72 * t78;
t8 = pkin(8) * t96 + t103 * t76 - t14;
t15 = t30 * t73 + t46 * t72;
t10 = qJ(5) * t76 + t15;
t59 = t73 * t78;
t9 = pkin(8) * t59 + t10;
t3 = -t75 * t9 + t77 * t8;
t4 = t75 * t8 + t77 * t9;
t102 = t110 * t4 - t3 * t81;
t101 = t78 * pkin(7);
t100 = pkin(8) + t74;
t23 = t110 * t78;
t99 = t81 * t23;
t98 = t81 * t76;
t97 = t110 * t76;
t95 = t73 * t72;
t94 = t74 * t76;
t92 = t76 * t78;
t90 = t50 * t74 ^ 2;
t89 = t111 * pkin(7) ^ 2;
t88 = t78 * qJ(3);
t87 = -qJ(5) * t73 + qJ(3);
t86 = t71 * t95;
t85 = t73 * t92;
t83 = -qJ(5) * t72 - t104;
t82 = -pkin(2) * t76 + t88;
t11 = -pkin(4) * t76 - t14;
t6 = t10 * t72 - t11 * t73;
t7 = t14 * t73 + t15 * t72;
t79 = qJ(3) ^ 2;
t58 = t73 * t76;
t57 = t68 * t71;
t55 = t72 * t76;
t54 = t67 * t71;
t51 = 0.2e1 * t92;
t48 = t73 * t94;
t47 = t104 * t78;
t45 = t72 * t59;
t44 = -0.2e1 * t72 * t92;
t43 = -pkin(2) * t78 + t84;
t42 = pkin(4) * t72 + t87;
t41 = 0.2e1 * t111 * pkin(7);
t40 = t100 * t73;
t39 = t100 * t72;
t36 = (-t67 + t68) * t78;
t32 = t50 * t74;
t31 = t110 ^ 2;
t28 = -t103 * t72 + t87;
t27 = 0.2e1 * t32;
t22 = t81 * t78;
t21 = (pkin(4) * t73 - t83) * t78;
t20 = t31 + t109;
t19 = t39 * t77 - t40 * t75;
t18 = -t39 * t75 - t40 * t77;
t16 = (t103 * t73 + t83) * t78;
t13 = t22 * t110;
t12 = t110 * t75 - t77 * t81;
t5 = t110 * t19 - t18 * t81;
t1 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t70, t51, 0, t71, 0, 0, pkin(1) * t106, pkin(1) * t107, t41, pkin(1) ^ 2 + t89, 0, 0, 0, t70, t51, t71, t41, t43 * t106, t43 * t107, t43 ^ 2 + t89, t54, 0.2e1 * t86, t44, t57, -0.2e1 * t85, t70, 0.2e1 * t14 * t76 + 0.2e1 * t47 * t59, -0.2e1 * t15 * t76 - 0.2e1 * t47 * t96 (t14 * t72 - t15 * t73) * t106, t14 ^ 2 + t15 ^ 2 + t47 ^ 2, t54, t44, -0.2e1 * t86, t70, 0.2e1 * t85, t57, -0.2e1 * t11 * t76 + 0.2e1 * t21 * t59 (-t10 * t73 - t11 * t72) * t106, 0.2e1 * t10 * t76 + 0.2e1 * t21 * t96, t10 ^ 2 + t11 ^ 2 + t21 ^ 2, t23 ^ 2, -0.2e1 * t23 * t22, 0.2e1 * t23 * t76, t22 ^ 2, t22 * t107, t70, -0.2e1 * t16 * t22 - 0.2e1 * t3 * t76, -0.2e1 * t16 * t23 + 0.2e1 * t4 * t76, 0.2e1 * t22 * t4 + 0.2e1 * t23 * t3, t16 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, t78, 0, -t65, -t101, 0, 0, 0, -t76, -t78, 0, 0, 0, t82, t65, t101, t82 * pkin(7), -t45, -t36, t58, t45, -t55, 0, t47 * t72 + t73 * t88 + t48, t47 * t73 + (-t88 - t94) * t72, -t7, t47 * qJ(3) + t7 * t74, -t45, t58, t36, 0, t55, t45, t21 * t72 + t42 * t59 + t48, -t6, -t21 * t73 + (t42 * t78 + t94) * t72, t21 * t42 + t6 * t74, -t99, -t110 * t23 + t22 * t81, -t98, t13, -t97, 0, -t110 * t16 - t18 * t76 + t22 * t28, t16 * t81 + t19 * t76 + t23 * t28, t18 * t23 + t19 * t22 + t102, -t16 * t28 + t18 * t3 + t19 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(2), t105, pkin(2) ^ 2 + t79, t68, -0.2e1 * t95, 0, t67, 0, 0, t72 * t105, t73 * t105, -t27, t79 + t90, t68, 0, 0.2e1 * t95, 0, 0, t67, 0.2e1 * t42 * t72, -t27, -0.2e1 * t42 * t73, t42 ^ 2 + t90, t109, -t110 * t108, 0, t31, 0, 0, 0.2e1 * t28 * t110, t28 * t108, 0.2e1 * t5, t18 ^ 2 + t19 ^ 2 + t28 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, 0, t65, 0, 0, 0, 0, 0, 0, t58, -t55, 0, t7, 0, 0, 0, 0, 0, 0, t58, 0, t55, t6, 0, 0, 0, 0, 0, 0, t98, t97, t13 - t99, t102; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(2), 0, 0, 0, 0, 0, 0, 0, 0, -t50, t32, 0, 0, 0, 0, 0, 0, 0, -t50, 0, t32, 0, 0, 0, 0, 0, 0, 0, 0, t20, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, 0, 0, 0, 0, 0, 0, 0, 0, t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t59, -t96, 0, t47, 0, 0, 0, 0, 0, 0, t59, 0, t96, t21, 0, 0, 0, 0, 0, 0, t22, t23, 0, -t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, t73, 0, qJ(3), 0, 0, 0, 0, 0, 0, t72, 0, -t73, t42, 0, 0, 0, 0, 0, 0, t110, -t81, 0, t28; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t76, -t96, 0, t11, 0, 0, 0, 0, 0, 0, -t77 * t76, t75 * t76, t22 * t75 + t23 * t77, t3 * t77 + t4 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0, -t73 * t74, 0, 0, 0, 0, 0, 0, 0, 0, t12, t18 * t77 + t19 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75 ^ 2 + t77 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t23, 0, t22, -t76, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t81, 0, t110, 0, t18, -t19, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t81, -t110, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77, -t75, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t1;

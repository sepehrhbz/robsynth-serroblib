% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d6,theta1,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:07
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRRPPR2_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPPR2_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPPR2_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 02:46:34
% EndTime: 2019-05-05 02:46:38
% DurationCPUTime: 1.12s
% Computational Cost: add. (735->103), mult. (1521->183), div. (0->0), fcn. (1843->10), ass. (0->82)
t53 = cos(pkin(6));
t55 = sin(qJ(3));
t58 = cos(qJ(3));
t51 = sin(pkin(6));
t56 = sin(qJ(2));
t86 = t51 * t56;
t26 = t53 * t58 - t55 * t86;
t27 = t53 * t55 + t58 * t86;
t50 = sin(pkin(11));
t52 = cos(pkin(11));
t15 = t50 * t26 + t52 * t27;
t12 = t15 ^ 2;
t13 = -t52 * t26 + t50 * t27;
t45 = t51 ^ 2;
t59 = cos(qJ(2));
t41 = t45 * t59 ^ 2;
t98 = t13 ^ 2 + t12 + t41;
t30 = t50 * t55 - t52 * t58;
t28 = t30 ^ 2;
t32 = t50 * t58 + t52 * t55;
t29 = t32 ^ 2;
t92 = t50 * pkin(3);
t39 = qJ(5) + t92;
t97 = t39 ^ 2;
t44 = -t58 * pkin(3) - pkin(2);
t63 = -t32 * qJ(5) + t44;
t17 = t30 * pkin(4) + t63;
t96 = -0.2e1 * t17;
t95 = 0.2e1 * t39;
t94 = 0.2e1 * t44;
t93 = 0.2e1 * t58;
t91 = t52 * pkin(3);
t90 = t15 * t39;
t89 = t32 * t30;
t88 = t39 * t30;
t54 = sin(qJ(6));
t46 = t54 ^ 2;
t87 = t46 * t30;
t85 = t51 * t59;
t84 = t54 * t30;
t83 = t54 * t32;
t57 = cos(qJ(6));
t82 = t57 * t30;
t25 = t57 * t32;
t81 = t57 * t54;
t80 = -qJ(4) - pkin(8);
t48 = t57 ^ 2;
t79 = t46 + t48;
t47 = t55 ^ 2;
t49 = t58 ^ 2;
t78 = t47 + t49;
t77 = -0.2e1 * t89;
t76 = 0.2e1 * t89;
t74 = t30 * t85;
t73 = t32 * t85;
t72 = t30 * t81;
t35 = t80 * t58;
t70 = t80 * t55;
t18 = -t50 * t35 - t52 * t70;
t20 = -t52 * t35 + t50 * t70;
t71 = t18 ^ 2 + t20 ^ 2;
t43 = -pkin(4) - t91;
t10 = t32 * pkin(5) + t18;
t8 = (pkin(4) + pkin(9)) * t30 + t63;
t3 = t57 * t10 - t54 * t8;
t4 = t54 * t10 + t57 * t8;
t1 = t3 * t57 + t4 * t54;
t69 = -t3 * t54 + t4 * t57;
t5 = t57 * t13 + t54 * t85;
t6 = -t54 * t13 + t57 * t85;
t2 = t5 * t57 - t6 * t54;
t68 = -t5 * t54 - t6 * t57;
t67 = t13 * t18 + t15 * t20;
t66 = t13 * t32 - t15 * t30;
t65 = -t26 * t55 + t27 * t58;
t38 = -pkin(9) + t43;
t64 = -t32 * t38 + t88;
t62 = 0.2e1 * t18 * t32 - 0.2e1 * t20 * t30;
t24 = t48 * t30;
t22 = t79 * t38;
t11 = -t30 * pkin(5) + t20;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45 * t56 ^ 2 + t53 ^ 2 + t41, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26 ^ 2 + t27 ^ 2 + t41, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 ^ 2 + t6 ^ 2 + t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85, -t86, 0, 0, 0, 0, 0, 0, 0, 0, t58 * t85, -t55 * t85, t65, pkin(2) * t85 + pkin(8) * t65, 0, 0, 0, 0, 0, 0, -t74, -t73, t66, -t44 * t85 + t67, 0, 0, 0, 0, 0, 0, t66, t74, t73, -t17 * t85 + t67, 0, 0, 0, 0, 0, 0, -t15 * t82 + t5 * t32, t15 * t84 + t6 * t32, t68 * t30, t15 * t11 + t5 * t3 - t6 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t47, t55 * t93, 0, t49, 0, 0, pkin(2) * t93, -0.2e1 * pkin(2) * t55, 0.2e1 * t78 * pkin(8), t78 * pkin(8) ^ 2 + pkin(2) ^ 2, t29, t77, 0, t28, 0, 0, t30 * t94, t32 * t94, t62, t44 ^ 2 + t71, 0, 0, 0, t29, t77, t28, t62, t30 * t96, t32 * t96, t17 ^ 2 + t71, t46 * t28, 0.2e1 * t28 * t81, t54 * t76, t48 * t28, t57 * t76, t29, -0.2e1 * t11 * t82 + 0.2e1 * t3 * t32, 0.2e1 * t11 * t84 - 0.2e1 * t4 * t32, 0.2e1 * t69 * t30, t11 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26, -t27, 0, 0, 0, 0, 0, 0, 0, 0, -t13, -t15, 0 (-t13 * t52 + t15 * t50) * pkin(3), 0, 0, 0, 0, 0, 0, 0, t13, t15, t13 * t43 + t90, 0, 0, 0, 0, 0, 0, t15 * t54, t15 * t57, -t2, t2 * t38 + t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, 0, t58, 0, -t55 * pkin(8), -t58 * pkin(8), 0, 0, 0, 0, t32, 0, -t30, 0, -t18, -t20 (-t30 * t50 - t32 * t52) * pkin(3) (-t18 * t52 + t20 * t50) * pkin(3), 0, -t32, t30, 0, 0, 0, t43 * t32 - t88, t18, t20, t18 * t43 + t20 * t39, t72, t24 - t87, t25, -t72, -t83, 0, t11 * t54 - t57 * t64, t11 * t57 + t54 * t64, -t1, t1 * t38 + t11 * t39; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t91, -0.2e1 * t92, 0 (t50 ^ 2 + t52 ^ 2) * pkin(3) ^ 2, 1, 0, 0, 0, 0, 0, 0, 0.2e1 * t43, t95, t43 ^ 2 + t97, t48, -0.2e1 * t81, 0, t46, 0, 0, t54 * t95, t57 * t95, -0.2e1 * t22, t79 * t38 ^ 2 + t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t85, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t85, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30, t32, 0, t44, 0, 0, 0, 0, 0, 0, 0, -t30, -t32, t17, 0, 0, 0, 0, 0, 0, -t83, -t25, t24 + t87, t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t13, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, 0, 0, t18, 0, 0, 0, 0, 0, 0, t25, -t83, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, t43, 0, 0, 0, 0, 0, 0, 0, 0, -t79, t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5, t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, 0, t82, t32, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t57, 0, -t54, 0, t57 * t38, -t54 * t38, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t54, -t57, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t57, -t54, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t7;

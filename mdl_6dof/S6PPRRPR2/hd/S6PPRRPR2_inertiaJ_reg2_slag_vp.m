% Calculate inertial parameters regressor of joint inertia matrix for
% S6PPRRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d6,theta1,theta2]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:51
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PPRRPR2_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRPR2_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PPRRPR2_inertiaJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 20:17:33
% EndTime: 2019-05-04 20:17:37
% DurationCPUTime: 1.19s
% Computational Cost: add. (580->111), mult. (1529->188), div. (0->0), fcn. (1907->12), ass. (0->84)
t60 = sin(qJ(4));
t49 = t60 ^ 2;
t63 = cos(qJ(4));
t51 = t63 ^ 2;
t102 = t49 + t51;
t53 = sin(pkin(12));
t55 = sin(pkin(6));
t58 = cos(pkin(6));
t61 = sin(qJ(3));
t64 = cos(qJ(3));
t56 = cos(pkin(12));
t57 = cos(pkin(7));
t91 = t56 * t57;
t54 = sin(pkin(7));
t92 = t54 * t64;
t13 = -t58 * t92 + (t53 * t61 - t64 * t91) * t55;
t93 = t54 * t61;
t25 = -t63 * t57 + t60 * t93;
t15 = t58 * t93 + (t53 * t64 + t61 * t91) * t55;
t23 = -t55 * t56 * t54 + t58 * t57;
t10 = t15 * t63 + t23 * t60;
t27 = t60 * t57 + t63 * t93;
t4 = t10 * t27;
t8 = t15 * t60 - t23 * t63;
t101 = -t13 * t92 + t8 * t25 + t4;
t12 = t13 ^ 2;
t7 = t10 ^ 2;
t100 = t8 ^ 2 + t12 + t7;
t24 = t27 ^ 2;
t46 = t54 ^ 2;
t39 = t46 * t64 ^ 2;
t99 = t25 ^ 2 + t24 + t39;
t98 = -0.2e1 * t60;
t97 = 0.2e1 * t63;
t96 = 2 * qJ(5);
t65 = -pkin(4) - pkin(10);
t95 = t13 * t60;
t94 = t13 * t63;
t59 = sin(qJ(6));
t90 = t59 * t60;
t89 = t59 * t63;
t88 = t60 * t63;
t62 = cos(qJ(6));
t87 = t62 * t59;
t86 = t62 * t63;
t85 = t102 * pkin(9) ^ 2;
t48 = t59 ^ 2;
t50 = t62 ^ 2;
t37 = t48 + t50;
t84 = qJ(5) * t63;
t83 = t10 * qJ(5);
t82 = t27 * qJ(5);
t80 = -0.2e1 * t88;
t78 = t60 * t92;
t77 = t63 * t92;
t76 = t59 * t86;
t75 = -t60 * qJ(5) - pkin(3);
t2 = -t13 * t59 + t8 * t62;
t3 = t13 * t62 + t8 * t59;
t1 = t2 * t62 + t3 * t59;
t74 = t10 * t63 + t8 * t60;
t73 = -pkin(4) * t60 + t84;
t29 = t65 * t63 + t75;
t43 = t60 * pkin(9);
t35 = t60 * pkin(5) + t43;
t16 = -t59 * t29 + t62 * t35;
t17 = t62 * t29 + t59 * t35;
t5 = t16 * t62 + t17 * t59;
t18 = t62 * t25 + t59 * t92;
t19 = -t59 * t25 + t62 * t92;
t6 = t18 * t62 - t19 * t59;
t72 = t25 * t60 + t27 * t63;
t71 = t60 * t65 + t84;
t69 = t74 * pkin(9);
t68 = t72 * pkin(9);
t66 = qJ(5) ^ 2;
t45 = t63 * pkin(9);
t41 = t62 * t60;
t38 = 0.2e1 * t88;
t36 = t63 * pkin(5) + t45;
t33 = -t63 * pkin(4) + t75;
t32 = 0.2e1 * t102 * pkin(9);
t30 = t37 * t65;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58 ^ 2 + (t53 ^ 2 + t56 ^ 2) * t55 ^ 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, t15 ^ 2 + t23 ^ 2 + t12, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2 ^ 2 + t3 ^ 2 + t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58, 0, 0, 0, 0, 0, 0, 0, 0, 0, t23 * t57 + (-t13 * t64 + t15 * t61) * t54, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2 * t18 - t3 * t19 + t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46 * t61 ^ 2 + t57 ^ 2 + t39, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18 ^ 2 + t19 ^ 2 + t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t13, -t15, 0, 0, 0, 0, 0, 0, 0, 0, -t94, t95, t74, -t13 * pkin(3) + t69, 0, 0, 0, 0, 0, 0, t74, t94, -t95, t13 * t33 + t69, 0, 0, 0, 0, 0, 0, t10 * t86 + t2 * t60, -t10 * t89 - t3 * t60 (t2 * t59 - t3 * t62) * t63, t10 * t36 + t2 * t16 + t3 * t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, -t93, 0, 0, 0, 0, 0, 0, 0, 0, t77, -t78, t72, pkin(3) * t92 + t68, 0, 0, 0, 0, 0, 0, t72, -t77, t78, -t33 * t92 + t68, 0, 0, 0, 0, 0, 0, t18 * t60 + t27 * t86, t19 * t60 - t27 * t89 (t18 * t59 + t19 * t62) * t63, t18 * t16 - t19 * t17 + t27 * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t49, t38, 0, t51, 0, 0, pkin(3) * t97, pkin(3) * t98, t32, pkin(3) ^ 2 + t85, 0, 0, 0, t49, t38, t51, t32, t33 * t97, t33 * t98, t33 ^ 2 + t85, t48 * t51, 0.2e1 * t51 * t87, t59 * t80, t50 * t51, t62 * t80, t49, 0.2e1 * t16 * t60 + 0.2e1 * t36 * t86, -0.2e1 * t17 * t60 - 0.2e1 * t36 * t89 (t16 * t59 - t17 * t62) * t97, t16 ^ 2 + t17 ^ 2 + t36 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t8, -t10, 0, 0, 0, 0, 0, 0, 0, 0, 0, t8, t10, -t8 * pkin(4) + t83, 0, 0, 0, 0, 0, 0, t10 * t59, t10 * t62, -t1, t1 * t65 + t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t25, -t27, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, t27, -t25 * pkin(4) + t82, 0, 0, 0, 0, 0, 0, t27 * t59, t27 * t62, -t6, t6 * t65 + t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60, 0, t63, 0, -t43, -t45, 0, 0, 0, -t60, -t63, 0, 0, 0, t73, t43, t45, t73 * pkin(9), -t76 (t48 - t50) * t63, t41, t76, -t90, 0, t36 * t59 + t62 * t71, t36 * t62 - t59 * t71, -t5, t36 * qJ(5) + t5 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(4), t96, pkin(4) ^ 2 + t66, t50, -0.2e1 * t87, 0, t48, 0, 0, t59 * t96, t62 * t96, -0.2e1 * t30, t37 * t65 ^ 2 + t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t8, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, 0, 0, 0, 0, 0, 0, 0, 0, 0, t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60, 0, 0, t43, 0, 0, 0, 0, 0, 0, t41, -t90, 0, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(4), 0, 0, 0, 0, 0, 0, 0, 0, -t37, t30; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2, -t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18, t19, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t89, 0, -t86, t60, t16, -t17, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, 0, -t59, 0, t62 * t65, -t59 * t65, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, -t59, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t9;

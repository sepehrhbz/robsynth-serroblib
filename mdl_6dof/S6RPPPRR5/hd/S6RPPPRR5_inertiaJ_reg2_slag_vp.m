% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPPPRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:38
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPPPRR5_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR5_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPPRR5_inertiaJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 13:50:39
% EndTime: 2019-05-05 13:50:42
% DurationCPUTime: 0.94s
% Computational Cost: add. (454->103), mult. (641->163), div. (0->0), fcn. (664->6), ass. (0->69)
t36 = sin(qJ(5));
t71 = 0.2e1 * t36;
t37 = cos(qJ(6));
t70 = pkin(5) * t37;
t38 = cos(qJ(5));
t69 = t38 * pkin(5);
t35 = sin(qJ(6));
t26 = t35 ^ 2;
t68 = t26 * t36;
t30 = sin(pkin(9));
t31 = cos(pkin(9));
t32 = pkin(3) + qJ(2);
t33 = pkin(1) + qJ(3);
t15 = t30 * t32 - t31 * t33;
t13 = pkin(7) + t15;
t27 = t36 ^ 2;
t67 = t27 * t13;
t29 = t38 ^ 2;
t66 = t29 * t13;
t65 = t31 * t30;
t64 = t35 * t30;
t63 = t35 * t31;
t62 = t35 * t36;
t61 = t35 * t37;
t60 = t35 * t38;
t59 = t36 * t13;
t58 = t36 * t30;
t57 = t36 * t31;
t56 = t37 * t30;
t55 = t37 * t31;
t54 = t37 * t36;
t53 = t37 * t38;
t52 = t38 * t13;
t51 = t38 * t30;
t50 = t38 * t31;
t28 = t37 ^ 2;
t49 = t26 + t28;
t48 = t27 + t29;
t47 = t38 * t71;
t46 = t35 * t54;
t45 = t49 * pkin(8);
t14 = t30 * t33 + t31 * t32;
t12 = -pkin(4) - t14;
t3 = -t36 * pkin(8) + t12 - t69;
t1 = t37 * t3 - t35 * t52;
t2 = t35 * t3 + t37 * t52;
t44 = -t1 * t35 + t2 * t37;
t7 = -t35 * t51 - t55;
t9 = t37 * t51 - t63;
t43 = -t7 * t35 + t9 * t37;
t10 = t37 * t50 + t64;
t8 = -t35 * t50 + t56;
t42 = t10 * t37 - t8 * t35;
t40 = (qJ(2) ^ 2);
t39 = 2 * qJ(2);
t25 = t31 ^ 2;
t24 = t30 ^ 2;
t23 = t28 * t36;
t22 = t28 * t27;
t21 = t26 * t27;
t20 = t27 * t25;
t19 = t27 * t24;
t17 = t25 + t24;
t16 = t27 * t65;
t11 = t13 ^ 2;
t6 = t27 * t11;
t5 = t31 * t67;
t4 = t30 * t67;
t18 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -2 * pkin(1), t39, pkin(1) ^ 2 + t40, 0, 0, 0, 1, 0, 0, t39, 0, 0.2e1 * t33, t33 ^ 2 + t40, 0, 0, 0, 0, 0, 1, 0.2e1 * t14, -0.2e1 * t15, 0, t14 ^ 2 + t15 ^ 2, t27, t47, 0, t29, 0, 0, -0.2e1 * t12 * t38, t12 * t71, 0.2e1 * t48 * t13, t29 * t11 + t12 ^ 2 + t6, t22, -0.2e1 * t27 * t61, -0.2e1 * t36 * t53, t21, t35 * t47, t29, -0.2e1 * t1 * t38 + 0.2e1 * t35 * t67, 0.2e1 * t2 * t38 + 0.2e1 * t37 * t67 (-t1 * t37 - t2 * t35) * t71, t1 ^ 2 + t2 ^ 2 + t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(1), 0, 0, 0, 0, 0, 0, 0, 0, -1, -t33, 0, 0, 0, 0, 0, 0, -t30, -t31, 0, -t14 * t30 + t15 * t31, 0, 0, 0, 0, 0, 0, -t51, t58, t48 * t31, t12 * t30 + t31 * t66 + t5, 0, 0, 0, 0, 0, 0, t27 * t63 - t8 * t38, t10 * t38 + t27 * t55 (-t10 * t35 - t37 * t8) * t36, t1 * t8 + t2 * t10 + t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, 0, 0, 0, 0, 0, 0, 0, 0, 0, t29 * t25 + t20 + t24, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 ^ 2 + t8 ^ 2 + t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, qJ(2), 0, 0, 0, 0, 0, 0, t31, -t30, 0, t14 * t31 + t15 * t30, 0, 0, 0, 0, 0, 0, t50, -t57, t48 * t30, -t12 * t31 + t30 * t66 + t4, 0, 0, 0, 0, 0, 0, t27 * t64 - t7 * t38, t27 * t56 + t9 * t38 (-t35 * t9 - t37 * t7) * t36, t1 * t7 + t2 * t9 + t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t16 + (t29 - 0.1e1) * t65, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 * t9 + t8 * t7 + t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, 0, 0, 0, 0, 0, 0, 0, 0, 0, t29 * t24 + t19 + t25, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7 ^ 2 + t9 ^ 2 + t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t44 - t52) * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t42 - t50) * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t43 - t51) * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48, 0, 0, 0, 0, 0, 0, 0, 0, 0, t22 + t21 + t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t36, 0, t38, 0, -t59, -t52, 0, 0, t46, t23 - t68, -t60, -t46, -t53, 0, -t13 * t54 + (-pkin(5) * t36 + pkin(8) * t38) * t35, pkin(8) * t53 + (t13 * t35 - t70) * t36, t44, -pkin(5) * t59 + t44 * pkin(8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t57, -t50, 0, 0, 0, 0, 0, 0, 0, 0, -t31 * t54, t35 * t57, t42, -pkin(5) * t57 + t42 * pkin(8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t58, -t51, 0, 0, 0, 0, 0, 0, 0, 0, -t30 * t54, t35 * t58, t43, -pkin(5) * t58 + t43 * pkin(8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, -t36, 0, 0, 0, 0, 0, 0, 0, 0, t53, -t60, t23 + t68, t36 * t45 + t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t26, 0.2e1 * t61, 0, t28, 0, 0, 0.2e1 * t70, -0.2e1 * pkin(5) * t35, 0.2e1 * t45, t49 * pkin(8) ^ 2 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t54, 0, -t62, -t38, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t8, -t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, -t9, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t62, -t54, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t35, 0, t37, 0, -t35 * pkin(8), -t37 * pkin(8), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t18;

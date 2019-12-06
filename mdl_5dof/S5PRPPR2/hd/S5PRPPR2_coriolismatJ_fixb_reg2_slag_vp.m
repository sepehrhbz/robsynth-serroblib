% Calculate inertial parameters regressor of coriolis matrix for
% S5PRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta3,theta4]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:25
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PRPPR2_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPPR2_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPPR2_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPPR2_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:24:48
% EndTime: 2019-12-05 15:24:51
% DurationCPUTime: 0.90s
% Computational Cost: add. (1433->78), mult. (3150->130), div. (0->0), fcn. (3707->8), ass. (0->78)
t135 = cos(qJ(5));
t94 = cos(pkin(9));
t108 = t135 * t94;
t92 = sin(pkin(9));
t95 = sin(qJ(5));
t131 = t95 * t92;
t142 = t108 - t131;
t140 = t142 / 0.2e1;
t109 = t135 * t92;
t130 = t95 * t94;
t81 = t109 + t130;
t139 = t81 / 0.2e1;
t125 = cos(pkin(8));
t96 = sin(qJ(2));
t106 = t125 * t96;
t136 = cos(qJ(2));
t93 = sin(pkin(8));
t110 = t93 * t136;
t128 = t106 / 0.2e1 + t110 / 0.2e1;
t80 = t106 + t110;
t50 = t81 * t80;
t52 = t142 * t80;
t129 = t50 * t139 + t52 * t140;
t76 = t142 ^ 2;
t141 = t81 ^ 2;
t87 = t93 * pkin(2) + qJ(4);
t138 = pkin(6) + t87;
t77 = -t125 * t136 + t93 * t96;
t132 = t77 * t80;
t90 = t92 ^ 2;
t91 = t94 ^ 2;
t84 = t90 + t91;
t49 = t77 * t81;
t51 = t77 * t142;
t15 = -t51 * t139 + t49 * t140;
t124 = t15 * qJD(1);
t17 = (0.1e1 - t84) * t132;
t123 = t17 * qJD(1);
t98 = t130 / 0.2e1 + t109 / 0.2e1;
t24 = (-t81 / 0.2e1 + t98) * t77;
t120 = t24 * qJD(1);
t97 = t108 / 0.2e1 - t131 / 0.2e1;
t25 = (-t142 / 0.2e1 + t97) * t77;
t119 = t25 * qJD(1);
t48 = t76 - t141;
t118 = t48 * qJD(2);
t55 = t76 + t141;
t117 = t55 * qJD(2);
t116 = t142 * qJD(2);
t74 = t142 * qJD(5);
t115 = t80 * qJD(2);
t114 = t81 * qJD(2);
t75 = t81 * qJD(5);
t113 = t84 * qJD(2);
t112 = t142 * t114;
t111 = t142 * t75;
t107 = t84 * t77;
t103 = -t125 * pkin(2) - pkin(3);
t83 = -t94 * pkin(4) + t103;
t105 = qJD(2) * t83 + qJD(4);
t104 = (t91 / 0.2e1 + t90 / 0.2e1) * t80;
t13 = -t129 + t128;
t71 = t138 * t94;
t53 = t138 * t109 + t95 * t71;
t54 = -t138 * t131 + t135 * t71;
t16 = t142 * t54 + t53 * t81;
t102 = t13 * qJD(1) - t16 * qJD(2);
t47 = t104 - t128;
t62 = t84 * t87;
t101 = t47 * qJD(1) + t62 * qJD(2);
t10 = -t50 * t49 - t52 * t51 + t132;
t100 = t10 * qJD(1) + t15 * qJD(3);
t46 = t104 + t128;
t27 = (t139 + t98) * t77;
t26 = (t140 + t97) * t77;
t14 = t128 + t129;
t1 = t15 * qJD(2);
t2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t96 * qJD(2), -t136 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, -t115, t77 * qJD(2), 0, (-t125 * t80 - t77 * t93) * qJD(2) * pkin(2), 0, 0, 0, 0, 0, 0, -t94 * t115, t92 * t115, -qJD(2) * t107, t123 + (t80 * t103 - t87 * t107) * qJD(2) + t46 * qJD(4), 0, 0, 0, 0, 0, 0, t27 * qJD(5) - t115 * t142, t26 * qJD(5) + t80 * t114, (-t142 * t51 - t49 * t81) * qJD(2), (-t49 * t53 - t51 * t54 + t80 * t83) * qJD(2) + t14 * qJD(4) + t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t14 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t27 * qJD(2) - t52 * qJD(5), t26 * qJD(2) + t50 * qJD(5), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47 * qJD(4) - t123, 0, 0, 0, 0, 0, 0, -t24 * qJD(5), -t25 * qJD(5), 0, -t13 * qJD(4) - t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84 * qJD(4), t62 * qJD(4), t111, t48 * qJD(5), 0, -t111, 0, 0, t83 * t75, t83 * t74, t55 * qJD(4), t16 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t113, t101, 0, 0, 0, 0, 0, 0, 0, 0, t117, -t102; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, t118, t74, -t112, -t75, 0, -t54 * qJD(5) + t83 * t114 - t120, t53 * qJD(5) + t83 * t116 - t119, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t75, -t74, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t47 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t13 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t113, -t101, 0, 0, 0, 0, 0, 0, t75, t74, -t117, t102; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t114, t116, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24 * qJD(2), t25 * qJD(2), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t112, -t118, 0, t112, 0, 0, -t105 * t81 + t120, -t105 * t142 + t119, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t114, -t116, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t2;

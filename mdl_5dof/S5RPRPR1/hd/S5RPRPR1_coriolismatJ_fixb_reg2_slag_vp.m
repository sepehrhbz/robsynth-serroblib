% Calculate inertial parameters regressor of coriolis matrix for
% S5RPRPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta4]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:48
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRPR1_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR1_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR1_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPR1_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:47:50
% EndTime: 2019-12-05 17:47:58
% DurationCPUTime: 3.10s
% Computational Cost: add. (4901->163), mult. (8229->207), div. (0->0), fcn. (9532->6), ass. (0->139)
t291 = qJD(3) + qJD(5);
t176 = sin(qJ(3));
t178 = -pkin(1) - pkin(6);
t269 = -qJ(4) + t178;
t162 = t269 * t176;
t177 = cos(qJ(3));
t163 = t269 * t177;
t173 = sin(pkin(8));
t174 = cos(pkin(8));
t121 = t174 * t162 + t173 * t163;
t158 = t173 * t177 + t174 * t176;
t100 = -t158 * pkin(7) + t121;
t160 = -t173 * t176 + t174 * t177;
t188 = -t173 * t162 + t174 * t163;
t101 = -t160 * pkin(7) + t188;
t175 = sin(qJ(5));
t262 = cos(qJ(5));
t54 = t262 * t100 + t175 * t101;
t292 = t291 * t54;
t55 = -t175 * t100 + t262 * t101;
t288 = t291 * t55;
t146 = t262 * t160;
t250 = t175 * t158;
t267 = t146 - t250;
t255 = t267 ^ 2;
t145 = t262 * t158;
t249 = t175 * t160;
t268 = t145 + t249;
t256 = t268 ^ 2;
t284 = -t255 + t256;
t287 = t284 * qJD(1);
t210 = t174 * pkin(3) + pkin(4);
t261 = pkin(3) * t173;
t143 = t175 * t261 - t262 * t210;
t144 = t175 * t210 + t262 * t261;
t283 = (t143 * t268 + t144 * t267) * qJD(3);
t274 = t267 * qJD(1);
t278 = t268 * t274;
t222 = t267 * qJD(5);
t228 = t267 * qJD(3);
t276 = t222 + t228;
t224 = t268 * qJD(3);
t226 = t268 * qJD(5);
t56 = -t224 - t226;
t275 = qJD(4) * t268;
t273 = t268 * qJD(1);
t264 = -t267 / 0.2e1;
t258 = qJD(3) * pkin(3);
t270 = (t158 * t174 - t160 * t173) * t258;
t157 = t158 ^ 2;
t266 = t160 ^ 2;
t263 = -t268 / 0.2e1;
t196 = -t145 / 0.2e1;
t195 = t146 / 0.2e1;
t260 = t160 * pkin(4);
t259 = t177 * pkin(3);
t13 = -t263 * t267 + t264 * t268;
t254 = t13 * qJD(1);
t14 = -t267 * t55 - t268 * t54;
t253 = t14 * qJD(1);
t185 = t263 * t268 + t264 * t267;
t27 = -0.1e1 / 0.2e1 + t185;
t246 = t27 * qJD(1);
t30 = t255 + t256;
t245 = t30 * qJD(1);
t184 = t143 * t264 + t268 * t144 / 0.2e1;
t169 = t259 / 0.2e1;
t197 = t169 + t260 / 0.2e1;
t41 = t184 + t197;
t243 = t41 * qJD(1);
t168 = t176 * pkin(3) + qJ(2);
t130 = t158 * pkin(4) + t168;
t131 = t259 + t260;
t49 = t130 * t267 + t131 * t268;
t242 = t49 * qJD(1);
t50 = -t130 * t268 + t131 * t267;
t241 = t50 * qJD(1);
t57 = -t121 * t158 - t160 * t188;
t239 = t57 * qJD(1);
t194 = -t157 / 0.2e1 - t266 / 0.2e1;
t70 = -0.1e1 / 0.2e1 + t194;
t238 = t70 * qJD(1);
t85 = 0.2e1 * t195 - t250;
t236 = t85 * qJD(1);
t183 = -t173 * t158 / 0.2e1 - t174 * t160 / 0.2e1;
t103 = (-t177 / 0.2e1 + t183) * pkin(3);
t235 = t103 * qJD(1);
t104 = t157 - t266;
t234 = t104 * qJD(1);
t105 = t158 * t259 + t168 * t160;
t233 = t105 * qJD(1);
t106 = -t168 * t158 + t160 * t259;
t232 = t106 * qJD(1);
t111 = t195 - t146 / 0.2e1;
t231 = t111 * qJD(1);
t230 = t111 * qJD(5);
t123 = t157 + t266;
t221 = t123 * qJD(1);
t220 = t130 * qJD(1);
t219 = t158 * qJD(1);
t218 = t160 * qJD(1);
t152 = t160 * qJD(3);
t165 = t176 ^ 2 - t177 ^ 2;
t217 = t165 * qJD(1);
t216 = t168 * qJD(1);
t215 = t176 * qJD(1);
t214 = t176 * qJD(3);
t213 = t177 * qJD(1);
t212 = t177 * qJD(3);
t208 = qJ(2) * t215;
t207 = qJ(2) * t213;
t206 = t267 * t273;
t203 = t268 * t220;
t202 = t267 * t220;
t201 = t158 * t218;
t200 = t158 * t152;
t199 = t176 * t212;
t10 = t130 * t131;
t193 = t10 * qJD(1);
t192 = t13 * qJD(2);
t40 = t168 * t259;
t190 = t40 * qJD(1);
t187 = t143 * qJD(3);
t186 = t85 * qJD(5) + t228;
t110 = t196 + t145 / 0.2e1;
t181 = -t110 * qJD(2) + t144 * qJD(3);
t172 = qJ(2) * qJD(2);
t171 = qJD(1) * qJ(2);
t166 = t176 * t213;
t149 = t158 * qJD(3);
t133 = t144 * qJD(5);
t132 = t143 * qJD(5);
t102 = t183 * pkin(3) + t169;
t84 = 0.2e1 * t196 - t249;
t69 = 0.1e1 / 0.2e1 + t194;
t42 = -t184 + t197;
t26 = 0.1e1 / 0.2e1 + t185;
t1 = t13 * qJD(3);
t2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t172, -t199, t165 * qJD(3), 0, t199, 0, 0, qJ(2) * t212 + qJD(2) * t176, -qJ(2) * t214 + qJD(2) * t177, 0, t172, -t200, t104 * qJD(3), 0, t200, 0, 0, t158 * qJD(2) + t105 * qJD(3), t160 * qJD(2) + t106 * qJD(3), t123 * qJD(4), t168 * qJD(2) + t40 * qJD(3) + t57 * qJD(4), t56 * t267, t291 * t284, 0, t276 * t268, 0, 0, qJD(2) * t268 + t49 * qJD(3) + t130 * t222, qJD(2) * t267 + t50 * qJD(3) - t130 * t226, t30 * qJD(4), t130 * qJD(2) + t10 * qJD(3) + t14 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1), t171, 0, 0, 0, 0, 0, 0, t215, t213, 0, t171, 0, 0, 0, 0, 0, 0, t219, t218, 0, t69 * qJD(4) + t216, 0, 0, 0, 0, 0, 0, t273, t274, t1, t26 * qJD(4) + t220; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t166, t217, -t214, t166, -t212, 0, -t178 * t214 + t207, -t178 * t212 - t208, 0, 0, -t201, t234, -t149, t201, -t152, 0, -qJD(3) * t121 + t233, -qJD(3) * t188 + t232, t270, t102 * qJD(4) + (-t121 * t174 + t173 * t188) * t258 + t190, -t278, t287, t56, t206, -t186, 0, t242 - t292, t241 - t288, t192 - t283, (t143 * t54 + t55 * t144) * qJD(3) + t42 * qJD(4) + t193; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t221, t69 * qJD(2) + t102 * qJD(3) + t239, 0, 0, 0, 0, 0, 0, t230, 0, t245, t26 * qJD(2) + t42 * qJD(3) + t253; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t278, t287, t56, t278, -t85 * qJD(3) - t222, 0, t111 * qJD(4) + t202 - t292, -t203 - t288, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(1), -t171, 0, 0, 0, 0, 0, 0, -t215, -t213, 0, -t171, 0, 0, 0, 0, 0, 0, -t219, -t218, 0, t70 * qJD(4) - t216, 0, 0, 0, 0, 0, 0, -t273, -t274, t1, t27 * qJD(4) - t220; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t214, -t212, 0, 0, 0, 0, 0, 0, 0, 0, -t149, -t152, 0, -t270, 0, 0, 0, 0, 0, 0, t84 * qJD(5) - t224, -t276, t254, t283; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t238, 0, 0, 0, 0, 0, 0, 0, 0, 0, t246; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84 * qJD(3) - t226, -t276, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t166, -t217, 0, -t166, 0, 0, -t207, t208, 0, 0, t201, -t234, 0, -t201, 0, 0, -t160 * qJD(4) - t233, t158 * qJD(4) - t232, 0, t103 * qJD(4) - t190, t278, -t287, 0, -t206, -t230, 0, -qJD(4) * t267 - t242, -t241 + t275, -t192, -t41 * qJD(4) - t193; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t110 * qJD(5), 0, -t254, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t133, t132, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t218, t219, 0, t235, 0, 0, 0, 0, 0, 0, -t274, t273, 0, -t243; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t231, 0, -t133 - t181, t132 + t187, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t152, -t149, -t221, -t70 * qJD(2) - t103 * qJD(3) - t239, 0, 0, 0, 0, 0, 0, t186, t56, -t245, -t27 * qJD(2) + t41 * qJD(3) - t253; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t238, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t246; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t218, -t219, 0, -t235, 0, 0, 0, 0, 0, 0, t274, -t273, 0, t243; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t236, -t273, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t278, -t287, 0, -t278, t111 * qJD(3), 0, -t85 * qJD(4) - t202, t203 + t275, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t110 * qJD(3), 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t231, 0, t181, -t187, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t236, t273, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t2;

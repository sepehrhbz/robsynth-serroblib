% Calculate inertial parameters regressor of coriolis matrix for
% S5PRRRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:49
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PRRRP5_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP5_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP5_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP5_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:49:25
% EndTime: 2019-12-05 16:49:30
% DurationCPUTime: 2.98s
% Computational Cost: add. (2867->205), mult. (6782->283), div. (0->0), fcn. (7121->6), ass. (0->176)
t200 = sin(qJ(3));
t288 = t200 * pkin(3);
t293 = cos(qJ(4));
t234 = t293 * t200;
t199 = sin(qJ(4));
t202 = cos(qJ(3));
t270 = t199 * t202;
t176 = t234 + t270;
t289 = t176 * pkin(4);
t147 = t288 + t289;
t203 = cos(qJ(2));
t322 = -t203 * t147 / 0.2e1;
t241 = qJD(3) + qJD(4);
t305 = -pkin(7) - pkin(6);
t184 = t305 * t202;
t179 = t293 * t184;
t271 = t199 * t200;
t220 = t305 * t271;
t134 = -t179 + t220;
t233 = t293 * t202;
t212 = t233 - t271;
t274 = t212 * qJ(5);
t88 = t134 + t274;
t207 = -t233 / 0.2e1 + t271 / 0.2e1;
t299 = t212 / 0.2e1;
t102 = (t299 + t207) * t203;
t254 = t102 * qJD(1);
t311 = -t184 * t199 - t234 * t305;
t316 = qJ(5) * t176 + t311;
t318 = t241 * t316 - t254;
t312 = t241 * t176;
t317 = t212 * t312;
t314 = t241 * t311;
t153 = t203 * t176;
t313 = -t153 / 0.2e1;
t194 = -pkin(3) * t202 - pkin(2);
t250 = t212 * qJD(2);
t310 = -t194 * t250 + t254;
t100 = t176 * t288 + t194 * t212;
t309 = -qJD(2) * t100 + t254;
t248 = t176 * qJD(2);
t208 = -t270 / 0.2e1 - t234 / 0.2e1;
t297 = t176 / 0.2e1;
t101 = (t297 + t208) * t203;
t255 = t101 * qJD(1);
t308 = -t194 * t248 + t255;
t99 = t176 * t194 - t212 * t288;
t307 = -qJD(2) * t99 + t255;
t306 = t176 ^ 2;
t304 = t88 * pkin(4);
t298 = -t212 / 0.2e1;
t296 = t179 / 0.2e1;
t239 = t293 * pkin(3);
t193 = t239 + pkin(4);
t295 = -t193 / 0.2e1;
t201 = sin(qJ(2));
t294 = t201 / 0.2e1;
t292 = pkin(3) * t199;
t154 = t212 * t201;
t291 = t154 * pkin(4);
t290 = t212 * pkin(4);
t284 = qJD(3) * pkin(3);
t282 = -qJD(5) * t212 + t254;
t166 = t176 * qJD(5);
t281 = t255 - t166;
t146 = t194 - t290;
t109 = t146 * t176;
t268 = t203 * t200;
t152 = t176 * t201;
t155 = t212 * t203;
t191 = t201 * t203;
t35 = t152 * t153 + t154 * t155 - t191;
t267 = t35 * qJD(1);
t47 = -t147 * t212 + t109;
t266 = t47 * qJD(2);
t108 = t146 * t212;
t48 = t147 * t176 + t108;
t265 = t48 * qJD(2);
t51 = t212 * t289 - t109;
t264 = t51 * qJD(2);
t52 = -pkin(4) * t306 - t108;
t263 = t52 * qJD(2);
t227 = t199 * t299;
t60 = (t295 - pkin(4) / 0.2e1) * t176 + (t227 - t200 / 0.2e1) * pkin(3);
t262 = t60 * qJD(2);
t214 = t239 / 0.2e1 + t295;
t211 = pkin(4) / 0.2e1 + t214;
t66 = t211 * t212;
t261 = t66 * qJD(2);
t260 = t88 * qJD(4);
t173 = t212 ^ 2;
t89 = t173 - t306;
t259 = t89 * qJD(2);
t257 = qJD(2) * t202;
t124 = t173 + t306;
t253 = t124 * qJD(2);
t128 = t296 - t179 / 0.2e1;
t252 = t128 * qJD(2);
t197 = t200 ^ 2;
t198 = t202 ^ 2;
t223 = (t197 + t198) * t203;
t135 = t201 * t223 - t191;
t251 = t135 * qJD(1);
t249 = t212 * qJD(4);
t247 = t176 * qJD(4);
t189 = t198 - t197;
t246 = t189 * qJD(2);
t245 = t200 * qJD(3);
t244 = t201 * qJD(2);
t243 = t202 * qJD(3);
t242 = t203 * qJD(2);
t240 = t293 / 0.2e1;
t238 = pkin(2) * t200 * qJD(2);
t237 = pkin(2) * t257;
t236 = qJD(4) * t292;
t235 = pkin(4) * t248;
t232 = t212 * t248;
t229 = t200 * t243;
t228 = t155 * t199 / 0.2e1;
t225 = t293 * qJD(3);
t224 = t293 * qJD(4);
t221 = pkin(3) * t224;
t14 = t146 * t147;
t210 = pkin(3) * t228 + t193 * t313;
t2 = t210 - t322;
t218 = -qJD(1) * t2 + qJD(2) * t14;
t15 = pkin(4) * t109;
t5 = (t313 + t153 / 0.2e1) * pkin(4);
t217 = qJD(1) * t5 + qJD(2) * t15;
t27 = t194 * t288;
t209 = -t153 * t240 + t228;
t8 = (t268 / 0.2e1 + t209) * pkin(3);
t216 = -t8 * qJD(1) + t27 * qJD(2);
t28 = t176 * t316 + t212 * t88;
t213 = -t152 * t297 + t154 * t298;
t45 = t294 + t213;
t215 = -qJD(1) * t45 + qJD(2) * t28;
t204 = (pkin(3) * t240 + t295) * t88;
t11 = t304 / 0.2e1 + t204;
t156 = (t239 - t193) * t292;
t44 = t211 * t154;
t205 = -qJD(1) * t44 - qJD(2) * t11 - qJD(3) * t156;
t91 = 0.2e1 * t296 - t220;
t190 = t200 * t257;
t159 = t176 * t292;
t141 = t152 * t292;
t123 = t128 * qJD(3);
t122 = t128 * qJD(4);
t118 = t241 * t212;
t107 = t199 * t284 - t252;
t106 = pkin(3) * t225;
t104 = t203 * t208 + t313;
t103 = (t207 + t298) * t203;
t94 = t102 * qJD(2);
t92 = t101 * qJD(2);
t83 = -t241 * t292 + t252;
t82 = (-t225 - t224) * pkin(3);
t65 = -t290 / 0.2e1 + t214 * t212;
t64 = t91 - t274;
t59 = pkin(3) * t227 + t176 * t295 + t288 / 0.2e1 + t289 / 0.2e1;
t46 = t294 - t213;
t43 = -t291 / 0.2e1 + t214 * t154;
t39 = t241 * t101;
t38 = t241 * t102;
t37 = t104 * qJD(2) - t154 * t241;
t36 = t103 * qJD(2) + t152 * t241;
t32 = t241 * t89;
t31 = t103 * t241 + t176 * t244;
t30 = t104 * t241 - t212 * t244;
t10 = -t304 / 0.2e1 + t204;
t9 = (-t268 / 0.2e1 + t209) * pkin(3);
t7 = t35 * qJD(2);
t4 = 0.2e1 * t313 * pkin(4);
t3 = t210 + t322;
t1 = (t153 * t176 + t155 * t212) * qJD(2);
t6 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t244, -t242, 0, 0, 0, 0, 0, 0, 0, 0, -t202 * t244 - t203 * t245, t200 * t244 - t203 * t243, qJD(2) * t223, t251 + (-t201 * pkin(2) + pkin(6) * t223) * qJD(2), 0, 0, 0, 0, 0, 0, t30, t31, t1, t267 + (t134 * t155 + t153 * t311 + t194 * t201) * qJD(2) + t9 * qJD(3), 0, 0, 0, 0, 0, 0, t30, t31, t1, t267 + (t146 * t201 + t153 * t316 + t155 * t88) * qJD(2) + t3 * qJD(3) + t4 * qJD(4) + t46 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t200 * t242 - t201 * t243, t201 * t245 - t202 * t242, 0, 0, 0, 0, 0, 0, 0, 0, t37, t36, 0, t9 * qJD(2) + (-t154 * t239 - t141) * qJD(3), 0, 0, 0, 0, 0, 0, t37, t36, 0, t3 * qJD(2) + (-t154 * t193 - t141) * qJD(3) + t43 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, t36, 0, 0, 0, 0, 0, 0, 0, 0, t37, t36, 0, qJD(2) * t4 + qJD(3) * t43 - qJD(4) * t291; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t251, 0, 0, 0, 0, 0, 0, -t39, -t38, 0, -qJD(3) * t8 - t267, 0, 0, 0, 0, 0, 0, -t39, -t38, 0, -qJD(3) * t2 + qJD(4) * t5 - qJD(5) * t45 - t267; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t229, t189 * qJD(3), 0, -t229, 0, 0, -pkin(2) * t245, -pkin(2) * t243, 0, 0, t317, t32, 0, -t317, 0, 0, qJD(3) * t99 + t194 * t247, qJD(3) * t100 + t194 * t249, 0, t27 * qJD(3), t317, t32, 0, -t317, 0, 0, qJD(3) * t47 - qJD(4) * t51, qJD(3) * t48 - qJD(4) * t52, t124 * qJD(5), qJD(3) * t14 + qJD(4) * t15 + qJD(5) * t28; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t190, t246, t243, -t190, -t245, 0, -pkin(6) * t243 - t238, pkin(6) * t245 - t237, 0, 0, t232, t259, t118, -t232, -t312, 0, -qJD(3) * t134 + qJD(4) * t91 - t307, -t309 + t314, (-t212 * t239 - t159) * qJD(3), (-t134 * t293 - t199 * t311) * t284 + t216, t232, t259, t118, -t232, -t312, 0, -qJD(3) * t88 + qJD(4) * t64 - t255 + t266, t265 + t318, (-t193 * t212 - t159) * qJD(3) + t65 * qJD(4), (-t88 * t193 - t292 * t316) * qJD(3) + t10 * qJD(4) + t59 * qJD(5) + t218; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t232, t259, t118, -t232, -t312, 0, qJD(3) * t91 - qJD(4) * t134 - t308, -t310 + t314, 0, 0, t232, t259, t118, -t232, -t312, 0, qJD(3) * t64 - t255 - t260 - t264, -t263 + t318, -pkin(4) * t249 + qJD(3) * t65, -pkin(4) * t260 + qJD(3) * t10 + t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t253, qJD(3) * t59 + t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, t94, 0, t8 * qJD(2), 0, 0, 0, 0, 0, 0, t92, t94, 0, qJD(2) * t2 + qJD(4) * t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t190, -t246, 0, t190, 0, 0, t238, t237, 0, 0, -t232, -t259, 0, t232, 0, 0, t122 + t307, t309, 0, -t216, -t232, -t259, 0, t232, 0, 0, t122 - t266 + t281, -t265 + t282, t66 * qJD(4), qJD(4) * t11 + qJD(5) * t60 - t218; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t236, -t221, 0, 0, 0, 0, 0, 0, 0, 0, -t236, -t221, 0, t156 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t83, t82, 0, 0, 0, 0, 0, 0, 0, 0, t83, t82, t261, -pkin(4) * t236 - t205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t248, -t250, 0, t262; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, t94, 0, 0, 0, 0, 0, 0, 0, 0, t92, t94, 0, -qJD(2) * t5 - qJD(3) * t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t232, -t259, 0, t232, 0, 0, -t123 + t308, t310, 0, 0, -t232, -t259, 0, t232, 0, 0, -t123 + t264 + t281, t263 + t282, -t66 * qJD(3), -pkin(4) * t166 - qJD(3) * t11 - t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t107, t106, 0, 0, 0, 0, 0, 0, 0, 0, t107, t106, -t261, t205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t248, -t250, 0, -t235; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t312, t118, -t253, pkin(4) * t247 - qJD(3) * t60 - t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t248, t250, 0, -t262; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t248, t250, 0, t235; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t6;

% Calculate minimal parameter regressor of coriolis matrix for
% S5RPRRP12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x24]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2021-01-15 19:26
% Revision: 24b2e7d74a0c1a3b64fa2f8f5ad758691ad61af3 (2021-01-15)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRRP12_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP12_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP12_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPRRP12_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2021-01-15 19:25:59
% EndTime: 2021-01-15 19:26:09
% DurationCPUTime: 2.93s
% Computational Cost: add. (2140->309), mult. (4169->443), div. (0->0), fcn. (3388->4), ass. (0->249)
t183 = cos(qJ(4));
t182 = sin(qJ(3));
t184 = cos(qJ(3));
t207 = t182 * pkin(3) - t184 * pkin(7);
t200 = qJ(2) + t207;
t116 = t183 * t200;
t181 = sin(qJ(4));
t185 = -pkin(1) - pkin(6);
t281 = t181 * t185;
t212 = pkin(4) - t281;
t275 = t183 * t184;
t236 = qJ(5) * t275;
t57 = t212 * t182 + t116 - t236;
t278 = t182 * t185;
t72 = t181 * t278 - t116;
t60 = t72 + t236;
t324 = t60 + t57;
t177 = t181 ^ 2;
t179 = t183 ^ 2;
t318 = -t179 / 0.2e1;
t213 = t177 / 0.2e1 + t318;
t111 = t213 * t184;
t153 = t179 + t177;
t154 = t179 - t177;
t238 = t181 * t275;
t210 = 0.2e1 * t238;
t188 = qJD(1) * t210 - t154 * qJD(3);
t311 = t184 * pkin(3);
t313 = t182 * pkin(7);
t137 = t311 + t313;
t130 = t183 * t137;
t277 = t183 * qJ(5);
t58 = t182 * t277 + t212 * t184 + t130;
t323 = t58 / 0.2e1;
t180 = t184 ^ 2;
t170 = t180 * t183;
t321 = -t170 / 0.2e1;
t178 = t182 ^ 2;
t319 = t178 / 0.2e1;
t317 = -t181 / 0.2e1;
t316 = t182 / 0.2e1;
t315 = -t183 / 0.2e1;
t314 = t183 / 0.2e1;
t312 = t183 * pkin(4);
t309 = pkin(7) + qJ(5);
t239 = t60 / 0.2e1 + t57 / 0.2e1;
t242 = pkin(4) * t316;
t5 = (t242 + t239) * t183;
t308 = t5 * qJD(1);
t307 = t57 * t183;
t306 = t60 * t182;
t282 = t181 * t184;
t274 = t183 * t185;
t237 = t182 * t274;
t73 = t181 * t200 + t237;
t61 = -qJ(5) * t282 + t73;
t305 = t61 * t181;
t304 = t61 * t184;
t233 = t305 / 0.2e1;
t279 = t182 * t183;
t36 = t57 * t279;
t284 = t181 * t182;
t48 = t61 * t284;
t240 = -t36 / 0.2e1 - t48 / 0.2e1;
t243 = -t180 / 0.2e1 - 0.1e1 / 0.2e1;
t8 = t182 * t233 + (-t306 / 0.2e1 + t243 * pkin(4)) * t183 + t240;
t303 = t8 * qJD(1);
t211 = t181 * pkin(4) - t185;
t118 = t211 * t182;
t119 = t211 * t184;
t129 = t181 * t137;
t273 = t184 * t185;
t142 = t183 * t273;
t280 = t182 * qJ(5);
t64 = t181 * t280 + t129 + t142;
t9 = -t119 * t118 + t57 * t58 + t61 * t64;
t302 = t9 * qJD(1);
t10 = -t36 - t48 + (t181 * t64 + t183 * t58) * t184;
t301 = t10 * qJD(1);
t35 = t57 * t282;
t11 = -t60 * t282 - t35;
t300 = t11 * qJD(1);
t299 = t118 * t184;
t298 = t119 * t181;
t297 = t119 * t183;
t12 = t119 * pkin(4) * t275 - t324 * t61;
t296 = t12 * qJD(1);
t134 = t309 * t181;
t295 = t134 * t182;
t294 = t134 * t184;
t135 = t309 * t183;
t293 = t135 * t182;
t292 = t135 * t184;
t15 = t58 * t182 + t57 * t184 + (-t119 * t182 - t299) * t181;
t291 = t15 * qJD(1);
t16 = t304 + t118 * t275 + (t64 + t297) * t182;
t290 = t16 * qJD(1);
t171 = -pkin(3) - t312;
t289 = t171 * t181;
t288 = t171 * t183;
t287 = t171 * t184;
t286 = t180 * t181;
t285 = t181 * t135;
t283 = t181 * t183;
t276 = t183 * t178;
t22 = t305 + t307;
t21 = t22 * t184;
t272 = t21 * qJD(1);
t271 = t22 * qJD(1);
t23 = -t61 * t182 + (pkin(4) * t286 + t119 * t184) * t183;
t270 = t23 * qJD(1);
t235 = t181 * t273;
t24 = -t72 * t184 + (t130 + t235) * t182;
t269 = t24 * qJD(1);
t25 = t73 * t184 + (-t142 + t129) * t182;
t268 = t25 * qJD(1);
t26 = -t179 * t180 * pkin(4) + t119 * t282 - t306;
t267 = t26 * qJD(1);
t49 = -t180 * t281 - t72 * t182;
t266 = t49 * qJD(1);
t50 = -t180 * t274 - t73 * t182;
t265 = t50 * qJD(1);
t264 = t61 * qJD(4);
t90 = (-t178 / 0.2e1 + t243) * t181;
t75 = t90 * qJD(1);
t92 = t170 / 0.2e1 + (0.1e1 / 0.2e1 + t319) * t183;
t77 = t92 * qJD(1);
t152 = t178 - t180;
t263 = qJD(1) * qJ(2);
t262 = qJD(2) * t182;
t261 = qJD(4) * t181;
t173 = qJD(4) * t183;
t124 = t153 * t180;
t260 = t124 * qJD(1);
t126 = t153 * t184;
t259 = t126 * qJD(1);
t127 = t152 * t181;
t258 = t127 * qJD(1);
t128 = -t170 + t276;
t257 = t128 * qJD(1);
t256 = t135 * qJD(4);
t255 = t152 * qJD(1);
t254 = t153 * qJD(3);
t253 = t181 * qJD(3);
t252 = t181 * qJD(5);
t251 = t182 * qJD(1);
t250 = t182 * qJD(3);
t249 = t183 * qJD(3);
t248 = t183 * qJD(5);
t247 = t184 * qJD(1);
t246 = t184 * qJD(3);
t245 = t184 * qJD(4);
t114 = -t129 / 0.2e1;
t244 = t114 - t142 / 0.2e1;
t241 = t312 / 0.2e1;
t234 = t60 * t315;
t232 = qJ(2) * t251;
t231 = qJ(2) * t247;
t230 = t182 * t261;
t229 = t181 * t245;
t228 = t182 * t173;
t227 = t183 * t245;
t226 = t181 * t246;
t225 = t181 * t173;
t224 = t181 * t249;
t223 = t183 * t246;
t222 = t184 * t248;
t221 = t182 * t246;
t220 = t182 * t247;
t219 = -t298 / 0.2e1;
t218 = -t287 / 0.2e1;
t217 = t287 / 0.2e1;
t216 = -t281 / 0.2e1;
t215 = -t280 / 0.2e1;
t214 = t277 / 0.2e1;
t209 = qJD(4) + t251;
t208 = -t292 / 0.2e1 - t57 / 0.2e1;
t205 = qJD(3) * t210;
t186 = (t64 * t314 + t58 * t317 + t119 / 0.2e1) * t182 - t35 / 0.2e1;
t4 = t299 / 0.2e1 - t285 / 0.2e1 + (t304 / 0.2e1 + t134 / 0.2e1) * t183 + t186;
t71 = (-0.1e1 + t153) * t184 * t182;
t204 = t4 * qJD(1) + t71 * qJD(2);
t192 = t183 * t218 + t219;
t1 = t239 * t135 + (t323 + t192) * pkin(4);
t27 = pkin(4) * t289;
t203 = -t1 * qJD(1) + t27 * qJD(3);
t70 = t134 * t181 + t135 * t183;
t102 = pkin(4) * t283 - t289;
t115 = t130 / 0.2e1;
t17 = t115 + t219 + (t214 + t135 / 0.2e1) * t182 + (t216 - t288 / 0.2e1 + (0.1e1 - t213) * pkin(4)) * t184;
t202 = -t17 * qJD(1) - t102 * qJD(3);
t112 = t177 * pkin(4) + t288;
t191 = -pkin(4) * t238 - t297 / 0.2e1 - t295 / 0.2e1;
t19 = (t215 + t217) * t181 + t191 + t244;
t201 = -t19 * qJD(1) + t112 * qJD(3);
t199 = t313 / 0.2e1 + t311 / 0.2e1;
t194 = t199 * t183;
t63 = -t130 / 0.2e1 - t194;
t198 = pkin(3) * t253 - t63 * qJD(1);
t193 = t199 * t181;
t62 = t129 / 0.2e1 + t193;
t197 = pkin(3) * t249 - t62 * qJD(1);
t196 = (t61 / 0.2e1 + t294 / 0.2e1) * t183;
t83 = t209 * t282;
t195 = -t111 * qJD(1) + t224;
t123 = t183 * t247 + t253;
t122 = t181 * t247 - t249;
t190 = t180 * qJD(1) * t283 + t111 * qJD(3);
t125 = t154 * t180;
t189 = t125 * qJD(1) + t205;
t14 = -t278 / 0.2e1 + t196 + (t242 + t208) * t181;
t91 = (0.1e1 / 0.2e1 + t318 - t177 / 0.2e1) * t182;
t187 = t14 * qJD(1) - t91 * qJD(2) + t70 * qJD(3);
t169 = t246 / 0.2e1;
t165 = t183 * t251;
t164 = t183 * t262;
t163 = t181 * t251;
t117 = (t251 + qJD(4) / 0.2e1) * t184;
t106 = t123 * pkin(4);
t105 = t181 * t250 - t227;
t104 = -t182 * t249 - t229;
t103 = t111 * qJD(4);
t95 = -t276 / 0.2e1 + t321 + t314;
t94 = (0.1e1 + t153) * t316;
t93 = t181 * t319 + t286 / 0.2e1 + t317;
t85 = t209 * t275;
t84 = t123 * t182;
t82 = t122 * t182;
t79 = t95 * qJD(2);
t78 = t93 * qJD(2);
t76 = t92 * qJD(2);
t74 = t90 * qJD(2);
t68 = -t92 * qJD(4) - t165;
t67 = t95 * qJD(4) + t165;
t66 = t93 * qJD(4) - t163;
t65 = -t90 * qJD(4) + t163;
t52 = -t226 - t228 - t77;
t51 = -t223 + t230 - t75;
t41 = t115 - t194 - t235;
t40 = -t142 + t114 + t193;
t37 = pkin(4) * t282;
t20 = -t191 + t244 + (t215 + t218) * t181;
t18 = -t293 / 0.2e1 + t115 + t182 * t214 + (pkin(4) + t216) * t184 - t192 + pkin(4) * t111;
t13 = t278 / 0.2e1 - pkin(4) * t284 / 0.2e1 + t196 + t208 * t181;
t7 = pkin(4) * t321 + t241 + (t234 + t233) * t182 + t240;
t6 = t234 - t307 / 0.2e1 + t182 * t241;
t3 = t285 / 0.2e1 + t134 * t315 + (t61 * t314 + t118 / 0.2e1) * t184 + t186;
t2 = t217 * t312 - t324 * t135 / 0.2e1 + (t298 / 0.2e1 + t323) * pkin(4);
t28 = [0, 0, 0, 0, qJD(2), qJ(2) * qJD(2), -t221, t152 * qJD(3), 0, 0, 0, qJ(2) * t246 + t262, -qJ(2) * t250 + qJD(2) * t184, -t179 * t221 - t180 * t225, -t125 * qJD(4) + t182 * t205, -t128 * qJD(3) - t182 * t229, t127 * qJD(3) - t182 * t227, t221, t24 * qJD(3) + t50 * qJD(4) + t164, -t25 * qJD(3) - t49 * qJD(4) - t181 * t262, t15 * qJD(3) + t23 * qJD(4) - t182 * t222 + t164, -t16 * qJD(3) - t26 * qJD(4) + (qJD(5) * t184 - qJD(2)) * t284, -t126 * qJD(2) - t10 * qJD(3) - t11 * qJD(4) + t124 * qJD(5), t22 * qJD(2) + t9 * qJD(3) + t12 * qJD(4) - t21 * qJD(5); 0, 0, 0, 0, qJD(1), t263, 0, 0, 0, 0, 0, t251, t247, 0, 0, 0, 0, 0, t67, t66, t67, t66, -t259, t3 * qJD(3) + t7 * qJD(4) + t271; 0, 0, 0, 0, 0, 0, -t220, t255, -t250, -t246, 0, -t185 * t250 + t231, -t185 * t246 - t232, -t103 + (-t179 * t247 - t224) * t182, t188 * t182 - 0.2e1 * t184 * t225, t226 - t257, t223 + t258, t117, t269 + (t181 * t207 - t237) * qJD(3) + t41 * qJD(4), -t268 + (-pkin(7) * t275 + (pkin(3) * t183 + t281) * t182) * qJD(3) + t40 * qJD(4), t291 + (t118 * t183 - t171 * t284 - t294) * qJD(3) + t18 * qJD(4) - t182 * t252, -t290 + (-t118 * t181 - t171 * t279 - t292) * qJD(3) + t20 * qJD(4) - t182 * t248, -t301 + ((t64 - t295) * t183 + (-t58 + t293) * t181) * qJD(3) + t6 * qJD(4), t302 + t3 * qJD(2) + (-t118 * t171 - t58 * t134 + t64 * t135) * qJD(3) + t2 * qJD(4) + t13 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t190, -t189, -t83, -t85, t169, t41 * qJD(3) - t73 * qJD(4) + t265 + t79, t40 * qJD(3) + t72 * qJD(4) - t266 + t78, t18 * qJD(3) - t264 + t270 + t79, t20 * qJD(3) + t60 * qJD(4) - t267 + t78, pkin(4) * t229 + t6 * qJD(3) - t300, -pkin(4) * t264 + t7 * qJD(2) + t2 * qJD(3) + t296; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t84, t82, t260, t13 * qJD(3) - t272; 0, 0, 0, 0, -qJD(1), -t263, 0, 0, 0, 0, 0, -t251, -t247, 0, 0, 0, 0, 0, t68, t65, t68, t65, t259, t4 * qJD(3) + t8 * qJD(4) - t271; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t250, -t246, 0, 0, 0, 0, 0, t104, t105, t104, t105, t126 * qJD(3), (t171 * t182 + t184 * t70) * qJD(3) - t37 * qJD(4) + t94 * qJD(5) + t204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, t51, t52, t51, 0, -pkin(4) * t228 - t37 * qJD(3) + t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94 * qJD(3); 0, 0, 0, 0, 0, 0, t220, -t255, 0, 0, 0, -t231, t232, t179 * t220 - t103, -0.2e1 * t183 * t83, t228 + t257, -t230 - t258, -t117, t63 * qJD(4) - t269, t62 * qJD(4) + t268, -t17 * qJD(4) - t291, -t19 * qJD(4) + t290, -t5 * qJD(4) + t301, -t4 * qJD(2) - t1 * qJD(4) + t14 * qJD(5) - t302; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t91 * qJD(5) - t204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t225, t154 * qJD(4), 0, 0, 0, -pkin(3) * t261, -pkin(3) * t173, -t102 * qJD(4), t112 * qJD(4), t153 * qJD(5), t27 * qJD(4) + t70 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t195, -t188, t165 + t173, -t163 - t261, -t247 / 0.2e1, -pkin(7) * t173 - t198, pkin(7) * t261 - t197, t202 - t256, t134 * qJD(4) + t201, -pkin(4) * t173 - t308, -pkin(4) * t256 + t203; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t254, t187; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t190, t189, t82, t84, t169, -t63 * qJD(3) - t265 + t76, -t62 * qJD(3) + t266 + t74, t17 * qJD(3) - t222 - t270 + t76, t19 * qJD(3) + t184 * t252 + t267 + t74, t5 * qJD(3) + t300, -pkin(4) * t222 - t8 * qJD(2) + t1 * qJD(3) - t296; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77, t75, t77, t75, 0, -t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t195, t188, -t165, t163, t247 / 0.2e1, t198, t197, -t202 - t252, -t201 - t248, t308, -pkin(4) * t252 - t203; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t123, t122, 0, -t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85, -t83, -t260, pkin(4) * t227 - t14 * qJD(3) + t272; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t261, t173, -t254, pkin(4) * t261 - t187; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t123, -t122, 0, t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t28;

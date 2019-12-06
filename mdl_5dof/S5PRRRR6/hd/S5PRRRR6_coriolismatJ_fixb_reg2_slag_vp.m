% Calculate inertial parameters regressor of coriolis matrix for
% S5PRRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,d5,theta1]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:10
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PRRRR6_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR6_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR6_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRR6_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:10:19
% EndTime: 2019-12-05 17:10:27
% DurationCPUTime: 3.90s
% Computational Cost: add. (5468->276), mult. (12061->374), div. (0->0), fcn. (12855->8), ass. (0->220)
t351 = qJD(4) + qJD(5);
t288 = cos(qJ(4));
t419 = -pkin(8) - pkin(7);
t268 = t419 * t288;
t284 = sin(qJ(5));
t285 = sin(qJ(4));
t369 = t284 * t285;
t406 = cos(qJ(5));
t193 = -t406 * t268 + t419 * t369;
t439 = -t193 / 0.2e1;
t343 = t406 * t285;
t323 = -t284 * t268 - t419 * t343;
t438 = t323 / 0.2e1;
t286 = sin(qJ(3));
t402 = t286 * pkin(2);
t276 = pkin(7) + t402;
t400 = pkin(8) + t276;
t248 = t400 * t288;
t330 = t400 * t285;
t324 = t284 * t248 + t406 * t330;
t437 = t324 / 0.2e1;
t287 = sin(qJ(2));
t289 = cos(qJ(3));
t407 = cos(qJ(2));
t255 = t286 * t287 - t289 * t407;
t342 = t406 * t288;
t297 = t342 / 0.2e1 - t369 / 0.2e1;
t303 = t342 - t369;
t86 = (-t303 / 0.2e1 + t297) * t255;
t363 = t86 * qJD(1);
t436 = t351 * t323 - t363;
t435 = t351 * t324 - t363;
t174 = t406 * t248 - t284 * t330;
t434 = t351 * t174;
t433 = t351 * t193;
t368 = t284 * t288;
t256 = t343 + t368;
t146 = -t256 ^ 2 + t303 ^ 2;
t352 = qJD(2) + qJD(3);
t432 = t352 * t146;
t257 = t286 * t407 + t289 * t287;
t431 = t352 * t257;
t282 = t285 ^ 2;
t283 = t288 ^ 2;
t272 = t283 - t282;
t430 = t352 * t272;
t379 = t303 * t256;
t429 = t352 * t379;
t362 = t282 + t283;
t278 = -t288 * pkin(4) - pkin(3);
t359 = qJD(3) * t278;
t298 = t368 / 0.2e1 + t343 / 0.2e1;
t85 = (-t256 / 0.2e1 + t298) * t255;
t364 = t85 * qJD(1);
t401 = t289 * pkin(2);
t295 = t298 * t401;
t266 = t278 - t401;
t410 = t266 / 0.2e1;
t332 = t278 / 0.2e1 + t410;
t97 = -t332 * t256 - t295;
t428 = t97 * qJD(2) - t256 * t359 + t364;
t404 = pkin(4) * t285;
t241 = t303 * t404;
t370 = t278 * t256;
t159 = -t241 + t370;
t63 = t241 + t97;
t427 = t63 * qJD(2) - t159 * qJD(3) + t364;
t361 = qJD(2) * t266;
t426 = -t256 * t361 + t364;
t372 = t266 * t256;
t138 = -t241 + t372;
t425 = -t138 * qJD(2) + t364;
t345 = -t401 / 0.2e1;
t277 = -pkin(3) - t401;
t409 = t277 / 0.2e1;
t424 = t345 + t409 - pkin(3) / 0.2e1;
t420 = pkin(3) / 0.2e1;
t152 = t303 * t257;
t417 = t152 / 0.2e1;
t416 = -t324 / 0.2e1;
t411 = -t255 / 0.2e1;
t408 = t284 / 0.2e1;
t405 = pkin(4) * t284;
t403 = t257 * pkin(3);
t333 = t439 + t193 / 0.2e1;
t334 = t438 - t323 / 0.2e1;
t336 = t437 + t416;
t14 = t333 * t256 - (t334 + t336) * t303;
t399 = t14 * qJD(4);
t396 = pkin(2) * qJD(3);
t395 = pkin(3) * qJD(3);
t394 = qJD(2) * pkin(2);
t393 = qJD(4) * pkin(4);
t149 = t255 * t256;
t389 = t149 * t324;
t388 = t149 * t323;
t151 = t303 * t255;
t385 = t151 * t174;
t384 = t151 * t193;
t378 = t255 * t257;
t177 = t255 * t285;
t377 = t255 * t286;
t376 = t257 * t266;
t375 = t257 * t277;
t374 = t257 * t278;
t373 = t266 * t303;
t371 = t278 * t303;
t150 = t256 * t257;
t36 = -t150 * t149 - t152 * t151 + t378;
t367 = t36 * qJD(1);
t61 = (0.1e1 - t362) * t378;
t366 = t61 * qJD(1);
t215 = t256 * t401;
t216 = t303 * t401;
t84 = t215 * t256 + t216 * t303;
t365 = t84 * qJD(2);
t360 = qJD(2) * t277;
t358 = qJD(5) * t303;
t242 = t256 * t404;
t139 = t242 + t373;
t356 = t139 * qJD(2);
t325 = t362 * t289;
t247 = pkin(2) * t325;
t355 = t247 * qJD(2);
t354 = t256 * qJD(5);
t353 = t285 * qJD(4);
t281 = t288 * qJD(4);
t350 = t406 / 0.2e1;
t349 = t286 * t396;
t348 = t286 * t394;
t347 = t404 / 0.2e1;
t344 = (-t256 * t284 - t303 * t406) * t393;
t341 = t303 * t361;
t339 = t285 * t360;
t338 = t288 * t360;
t337 = t377 / 0.2e1;
t331 = t283 / 0.2e1 + t282 / 0.2e1;
t329 = t406 * qJD(4);
t328 = t406 * qJD(5);
t327 = pkin(2) * t352;
t326 = t362 * t255;
t183 = t352 * t255;
t321 = t352 * t285;
t184 = t351 * t256;
t320 = t303 * t348;
t319 = t256 * t348;
t318 = t285 * t348;
t317 = t286 * t327;
t316 = t331 * t276;
t315 = t331 * t289;
t293 = pkin(2) * t337 + t150 * t215 / 0.2e1 + t216 * t417;
t3 = (t410 - t278 / 0.2e1) * t257 - (t174 / 0.2e1 + t439) * t151 + (t416 + t438) * t149 + t293;
t50 = t174 * t216 + t215 * t324 + t266 * t402;
t314 = t3 * qJD(1) + t50 * qJD(2);
t39 = t266 * t404;
t300 = t149 * t350 - t151 * t408;
t291 = (-t177 / 0.2e1 + t300) * pkin(4);
t7 = t152 * t336 + t291;
t313 = -t7 * qJD(1) + t39 * qJD(2);
t312 = t14 * qJD(3);
t311 = t14 * qJD(2);
t168 = (t276 * t325 + t277 * t286) * pkin(2);
t38 = (pkin(2) * t315 + t409 + t420) * t257 + (t402 / 0.2e1 - t316 + t331 * pkin(7)) * t255;
t309 = -t38 * qJD(1) - t168 * qJD(2);
t160 = t242 + t371;
t294 = t297 * t401;
t98 = -t303 * t332 - t294;
t64 = -t242 + t98;
t307 = t64 * qJD(2) - t160 * qJD(3);
t306 = t345 + t420 - t277 / 0.2e1;
t201 = t306 * t285;
t305 = t201 * qJD(2) + t285 * t395;
t202 = t306 * t288;
t304 = t202 * qJD(2) + t288 * t395;
t302 = t98 * qJD(2) - t303 * t359;
t299 = -t215 * t350 + t216 * t408;
t15 = (-t285 * t332 + t299) * pkin(4);
t51 = t278 * t404;
t9 = -t150 * t333 + t152 * t334 + t291;
t296 = -t9 * qJD(1) - t15 * qJD(2) + t51 * qJD(3);
t292 = pkin(4) * t300 + t255 * t347;
t99 = t371 / 0.2e1 + t373 / 0.2e1 - t294;
t100 = t370 / 0.2e1 + t372 / 0.2e1 - t295;
t273 = t285 * t281;
t271 = t285 * t349;
t267 = t272 * qJD(4);
t246 = t288 * t321;
t243 = t247 * qJD(3);
t235 = t256 * t349;
t234 = t303 * t349;
t204 = t424 * t288;
t203 = t424 * t285;
t182 = t351 * t303;
t178 = t255 * t288;
t115 = t303 * t184;
t113 = t351 * t379;
t88 = (t256 / 0.2e1 + t298) * t255;
t87 = t297 * t255 - t303 * t411;
t79 = t84 * qJD(3);
t78 = t362 * t183;
t77 = t177 * qJD(4) - t288 * t431;
t76 = t178 * qJD(4) + t257 * t321;
t66 = t242 + t99;
t65 = -t241 + t100;
t58 = t351 * t146;
t49 = t351 * t85;
t48 = t351 * t86;
t47 = t352 * t86;
t46 = t352 * t85;
t37 = t375 / 0.2e1 - t403 / 0.2e1 - t255 * t316 + (t257 * t315 + t337) * pkin(2) + t362 * pkin(7) * t411;
t33 = t256 * t431 + t351 * t87;
t32 = -t303 * t431 + t351 * t88;
t24 = -t152 * t351 + t352 * t88;
t23 = t150 * t351 + t352 * t87;
t16 = pkin(4) * t299 + (t266 + t278) * t347;
t10 = t152 * t438 - t323 * t417 + t292;
t8 = t152 * t437 - t324 * t417 + t292;
t2 = -t385 / 0.2e1 - t389 / 0.2e1 + t376 / 0.2e1 - t384 / 0.2e1 - t388 / 0.2e1 + t374 / 0.2e1 + t293;
t1 = t352 * (-t149 * t256 - t151 * t303);
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t352 * t61, 0, 0, 0, 0, 0, 0, 0, 0, 0, t352 * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t287 * qJD(2), -t407 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, -t431, t183, 0, (-t257 * t289 - t377) * t394, 0, 0, 0, 0, 0, 0, t77, t76, -t78, t366 + (-t276 * t326 + t375) * qJD(2) + t37 * qJD(3), 0, 0, 0, 0, 0, 0, t32, t33, t1, t367 + (t376 - t385 - t389) * qJD(2) + t2 * qJD(3) + t8 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t431, t183, 0, 0, 0, 0, 0, 0, 0, 0, t77, t76, -t78, t366 + t37 * qJD(2) + (-pkin(7) * t326 - t403) * qJD(3), 0, 0, 0, 0, 0, 0, t32, t33, t1, t367 + t2 * qJD(2) + (t374 - t384 - t388) * qJD(3) + t10 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t177 * t352 - t257 * t281, t178 * t352 + t257 * t353, 0, 0, 0, 0, 0, 0, 0, 0, t24, t23, 0, t8 * qJD(2) + t10 * qJD(3) + (-t150 * t284 - t152 * t406) * t393; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, t23, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38 * qJD(3) - t366, 0, 0, 0, 0, 0, 0, -t49, -t48, 0, t3 * qJD(3) - t7 * qJD(4) - t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t349, -t289 * t396, 0, 0, t273, t267, 0, -t273, 0, 0, t277 * t353 - t288 * t349, t277 * t281 + t271, t243, t168 * qJD(3), t115, t58, 0, -t113, 0, 0, t138 * qJD(4) + t266 * t354 - t234, t139 * qJD(4) + t266 * t358 + t235, t79, t50 * qJD(3) + t39 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t317, -t289 * t327, 0, 0, t273, t267, 0, -t273, 0, 0, t203 * qJD(4) - t288 * t317, t204 * qJD(4) + t271 + t318, t243 + t355, (-pkin(3) * t286 + pkin(7) * t325) * t396 - t309, t115, t58, 0, -t113, 0, 0, t65 * qJD(4) + t100 * qJD(5) - t234 - t320, t66 * qJD(4) + t99 * qJD(5) + t235 + t319, t79 + t365 + t399, (t216 * t193 + t215 * t323 + t278 * t402) * qJD(3) + t16 * qJD(4) + t314; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t246, t430, t281, -t246, -t353, 0, t203 * qJD(3) - t276 * t281 + t339, t204 * qJD(3) + t276 * t353 + t338, 0, 0, t429, t432, t182, -t429, -t184, 0, t65 * qJD(3) - t425 - t434, t66 * qJD(3) + t356 + t435, t312 + t344, t16 * qJD(3) + (-t174 * t406 - t284 * t324) * t393 + t313; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t429, t432, t182, -t429, -t184, 0, t100 * qJD(3) - t426 - t434, t99 * qJD(3) + t341 + t435, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t38 * qJD(2) - t366, 0, 0, 0, 0, 0, 0, -t49, -t48, 0, -t3 * qJD(2) - t9 * qJD(4) - t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t348, t289 * t394, 0, 0, t273, t267, 0, -t273, 0, 0, -t201 * qJD(4) + t288 * t348, -t202 * qJD(4) - t318, -t355, t309, t115, t58, 0, -t113, 0, 0, -t63 * qJD(4) - t97 * qJD(5) + t320, -t64 * qJD(4) - t98 * qJD(5) - t319, -t365 + t399, -t15 * qJD(4) - t314; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t273, t267, 0, -t273, 0, 0, -pkin(3) * t353, -pkin(3) * t281, 0, 0, t115, t58, 0, -t113, 0, 0, t159 * qJD(4) + t278 * t354, t160 * qJD(4) + t278 * t358, 0, t51 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t246, t430, t281, -t246, -t353, 0, -pkin(7) * t281 - t305, pkin(7) * t353 - t304, 0, 0, t429, t432, t182, -t429, -t184, 0, -t427 - t433, -t307 + t436, t311 + t344, (-t193 * t406 - t284 * t323) * t393 + t296; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t429, t432, t182, -t429, -t184, 0, -t428 - t433, -t302 + t436, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, t47, 0, t7 * qJD(2) + t9 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t246, -t430, 0, t246, 0, 0, t201 * qJD(3) - t339, t202 * qJD(3) - t338, 0, 0, -t429, -t432, 0, t429, 0, 0, t63 * qJD(3) + t425, t64 * qJD(3) - t356 + t363, -t312, t15 * qJD(3) - t313; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t246, -t430, 0, t246, 0, 0, t305, t304, 0, 0, -t429, -t432, 0, t429, 0, 0, t427, t307 + t363, -t311, -t296; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t405, -pkin(4) * t328, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t351 * t405, (-t329 - t328) * pkin(4), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, t47, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t429, -t432, 0, t429, 0, 0, t97 * qJD(3) + t426, t98 * qJD(3) - t341 + t363, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t429, -t432, 0, t429, 0, 0, t428, t302 + t363, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t284 * t393, pkin(4) * t329, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t4;

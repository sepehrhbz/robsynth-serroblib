% Calculate minimal parameter regressor of coriolis matrix for
% S5RRRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x28]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2021-01-15 23:53
% Revision: 24b2e7d74a0c1a3b64fa2f8f5ad758691ad61af3 (2021-01-15)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRRRP1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2021-01-15 23:52:48
% EndTime: 2021-01-15 23:53:06
% DurationCPUTime: 6.78s
% Computational Cost: add. (7471->310), mult. (14356->374), div. (0->0), fcn. (15865->6), ass. (0->261)
t260 = sin(qJ(3));
t261 = sin(qJ(2));
t262 = cos(qJ(3));
t263 = cos(qJ(2));
t235 = t260 * t261 - t262 * t263;
t237 = -t260 * t263 - t262 * t261;
t259 = sin(qJ(4));
t429 = cos(qJ(4));
t183 = -t429 * t235 + t259 * t237;
t441 = pkin(6) + pkin(7);
t243 = t441 * t263;
t239 = t262 * t243;
t242 = t441 * t261;
t391 = t260 * t242;
t447 = -t239 + t391;
t149 = t235 * pkin(8) + t447;
t153 = t262 * t242 + t260 * t243;
t451 = t237 * pkin(8) - t153;
t507 = t429 * t149 - t259 * t451;
t509 = -t183 * qJ(5) + t507;
t376 = t509 * qJD(4);
t504 = qJD(2) * t509;
t512 = qJD(3) * t509 + t376 + t504;
t499 = qJD(3) + qJD(4);
t508 = (qJD(2) + t499) * t507;
t335 = qJD(2) + qJD(3);
t457 = t429 * t451;
t469 = -t457 / 0.2e1;
t475 = t259 * t149;
t476 = t469 - t475 / 0.2e1;
t497 = 0.2e1 * t476;
t440 = t509 * pkin(4);
t334 = t440 / 0.2e1;
t203 = t259 * pkin(3);
t226 = t429 * t237;
t394 = t259 * t235;
t448 = -t226 - t394;
t456 = t448 * qJ(5);
t481 = -t457 - t475;
t490 = -t481 - t456;
t506 = t490 * t203;
t438 = t456 / 0.2e1;
t493 = 0.2e1 * t438 + t497;
t503 = qJD(4) * t493;
t437 = t183 / 0.2e1;
t495 = (-t183 / 0.2e1 + t437) * qJ(5);
t500 = t495 * qJD(1);
t295 = -t226 / 0.2e1;
t121 = -t394 + 0.2e1 * t295;
t498 = -qJD(4) * t495 - t121 * qJD(5);
t488 = qJD(2) * t497;
t296 = t457 / 0.2e1;
t40 = t469 + t296;
t485 = t40 - t456 / 0.2e1 + t438;
t487 = t485 * qJD(1);
t111 = t183 * qJD(5);
t486 = qJD(4) * t485 - t111;
t483 = t40 * qJD(1);
t482 = t40 * qJD(4);
t179 = t183 ^ 2;
t443 = t448 ^ 2;
t467 = t179 - t443;
t470 = t467 * qJD(1);
t347 = t183 * qJD(4);
t466 = t335 * t183 + t347;
t462 = t183 * pkin(4);
t252 = -t263 * pkin(2) - pkin(1);
t207 = t235 * pkin(3) + t252;
t103 = t207 - t462;
t414 = t103 * t183;
t461 = t103 * t448;
t346 = t448 * qJD(1);
t459 = t183 * t346;
t455 = t183 * qJD(1);
t178 = t226 / 0.2e1 + t295;
t453 = t335 * t178;
t322 = t262 * pkin(2) + pkin(3);
t244 = t429 * t322;
t393 = t259 * t260;
t221 = pkin(2) * t393 - t244;
t215 = pkin(4) - t221;
t449 = t215 + t221;
t332 = t429 * pkin(3);
t297 = -t332 / 0.2e1;
t281 = -t244 / 0.2e1 + t297;
t318 = t429 * t262;
t294 = -t318 / 0.2e1;
t204 = pkin(2) * t294 - t281;
t361 = t204 * qJD(2) + qJD(3) * t332;
t256 = t203 * qJD(3);
t363 = t203 * qJD(2) + t256;
t445 = t335 * t153;
t329 = t203 * qJD(4);
t345 = t448 * qJD(4);
t444 = t121 * t335 + t345;
t436 = t215 / 0.2e1;
t293 = t259 * t322;
t319 = t429 * t260;
t222 = pkin(2) * t319 + t293;
t434 = t222 / 0.2e1;
t392 = t259 * t262;
t228 = (t319 + t392) * pkin(2);
t433 = -t228 / 0.2e1;
t229 = (t318 - t393) * pkin(2);
t432 = t229 / 0.2e1;
t307 = -t239 / 0.2e1;
t251 = t332 + pkin(4);
t431 = -t251 / 0.2e1;
t430 = t251 / 0.2e1;
t428 = t448 * pkin(4);
t425 = t228 * pkin(4);
t423 = t237 * pkin(3);
t258 = t261 * pkin(2);
t421 = pkin(2) * qJD(3);
t420 = qJD(2) * pkin(2);
t123 = -t423 + t428;
t104 = t123 + t258;
t10 = t103 * t104;
t416 = t10 * qJD(1);
t11 = t103 * t123;
t412 = t11 * qJD(1);
t12 = pkin(4) * t461;
t411 = t12 * qJD(1);
t13 = -t183 * t509 - t448 * t490;
t410 = t13 * qJD(1);
t278 = -t183 * t432 + t433 * t448;
t326 = -t203 / 0.2e1;
t14 = (t431 + t436) * t183 + (t326 + t434) * t448 + t278;
t409 = t14 * qJD(1);
t401 = t215 * t183;
t400 = t222 * t448;
t399 = t251 * t183;
t306 = t221 / 0.2e1 + t436;
t291 = t306 * t183;
t327 = t462 / 0.2e1;
t27 = t327 - t291;
t390 = t27 * qJD(1);
t48 = -t104 * t183 + t461;
t385 = t48 * qJD(1);
t49 = t104 * t448 + t414;
t384 = t49 * qJD(1);
t50 = -t123 * t183 + t461;
t383 = t50 * qJD(1);
t51 = t123 * t448 + t414;
t382 = t51 * qJD(1);
t279 = -t183 * t434 + t436 * t448;
t365 = t428 / 0.2e1 - t423 / 0.2e1;
t304 = t258 / 0.2e1 + t365;
t52 = t279 + t304;
t381 = t52 * qJD(1);
t54 = t448 * t462 - t461;
t380 = t54 * qJD(1);
t55 = -t443 * pkin(4) - t414;
t379 = t55 * qJD(1);
t308 = t259 * t437;
t309 = t448 * t431;
t70 = t309 - t428 / 0.2e1 + (t308 + t237 / 0.2e1) * pkin(3);
t377 = t70 * qJD(1);
t273 = (t297 + t430) * t183;
t88 = t327 - t273;
t375 = t88 * qJD(1);
t105 = t207 * t448;
t208 = t258 - t423;
t91 = -t183 * t208 + t105;
t374 = t91 * qJD(1);
t106 = t207 * t183;
t92 = t208 * t448 + t106;
t373 = t92 * qJD(1);
t93 = -t183 * t423 - t105;
t372 = t93 * qJD(1);
t94 = t423 * t448 - t106;
t371 = t94 * qJD(1);
t339 = t222 * qJD(2);
t364 = t339 + t256;
t340 = t221 * qJD(2);
t362 = t204 * qJD(3) - t340;
t360 = qJD(1) * t252;
t359 = qJD(1) * t263;
t358 = qJD(3) * t252;
t100 = t179 + t443;
t357 = t100 * qJD(1);
t356 = t121 * qJD(1);
t148 = t235 ^ 2 - t237 ^ 2;
t354 = t148 * qJD(1);
t158 = t235 * t258 - t252 * t237;
t351 = t158 * qJD(1);
t159 = -t252 * t235 - t237 * t258;
t350 = t159 * qJD(1);
t349 = t178 * qJD(1);
t344 = t448 * qJD(5);
t194 = t307 + t239 / 0.2e1;
t343 = t194 * qJD(1);
t213 = t222 * qJD(4);
t247 = -t261 ^ 2 + t263 ^ 2;
t338 = t247 * qJD(1);
t337 = t261 * qJD(2);
t336 = t263 * qJD(2);
t333 = t429 / 0.2e1;
t331 = pkin(1) * t261 * qJD(1);
t330 = pkin(1) * t359;
t328 = pkin(4) * t346;
t190 = t326 - t293 / 0.2e1 + (-t319 - t392 / 0.2e1) * pkin(2);
t324 = t190 * qJD(3) - t213 - t339;
t191 = (t294 + t393) * pkin(2) + t281;
t209 = t221 * qJD(4);
t323 = t191 * qJD(3) + t209 + t340;
t316 = t207 * t455;
t315 = t207 * t346;
t314 = t235 * t360;
t313 = t237 * t360;
t312 = t261 * t359;
t305 = pkin(2) * t335;
t189 = t335 * t237;
t298 = qJD(4) * t332;
t3 = -t306 * t509 + t334;
t99 = t449 * t222;
t287 = t3 * qJD(1) + t99 * qJD(2);
t268 = (t433 + t434) * t490 + (-t432 + t436) * t509;
t274 = t509 * t430 + t506 / 0.2e1;
t1 = -t268 + t274;
t102 = -t215 * t228 + t222 * t229;
t286 = -t1 * qJD(1) + t102 * qJD(2);
t284 = t228 * qJD(2);
t44 = t296 + t475 / 0.2e1 + t476;
t283 = -t44 * qJD(1) + t229 * qJD(2);
t282 = -t329 - t363;
t275 = -t298 - t361;
t216 = (t332 - t251) * t203;
t266 = (pkin(3) * t333 + t431) * t509;
t6 = -t440 / 0.2e1 - t266;
t265 = (t222 * t333 - t306 * t259) * pkin(3) + t222 * t431;
t90 = t425 / 0.2e1 + t265;
t270 = -t6 * qJD(1) - t90 * qJD(2) - t216 * qJD(3);
t224 = t229 * qJD(3);
t223 = t228 * qJD(3);
t192 = t237 * t235 * qJD(1);
t188 = t335 * t235;
t175 = -t462 / 0.2e1;
t169 = -t224 + t209;
t168 = -t223 - t213;
t166 = t178 * qJD(4);
t165 = t178 * qJD(5);
t154 = 0.2e1 * t307 + t391;
t89 = -t425 / 0.2e1 + t265;
t87 = t175 - t273;
t78 = -t121 * qJD(4) - t335 * t448;
t71 = pkin(3) * t308 + t309 + t365;
t53 = -t279 + t304;
t35 = t44 * qJD(2);
t34 = t44 * qJD(3);
t31 = t497 + t456;
t29 = -t204 * qJD(4) + t283;
t28 = t284 - t329;
t26 = t175 - t291;
t25 = t191 * qJD(4) - t224 - t283;
t24 = t190 * qJD(4) - t223 - t284;
t15 = -t400 / 0.2e1 - t401 / 0.2e1 + t448 * t326 - t399 / 0.2e1 - t278;
t5 = t334 - t266;
t4 = t334 + t449 * t509 / 0.2e1;
t2 = t268 + t274;
t7 = [0, 0, 0, t261 * t336, t247 * qJD(2), 0, 0, 0, -pkin(1) * t337, -pkin(1) * t336, t235 * t189, t335 * t148, 0, 0, 0, t158 * qJD(2) - t237 * t358, t159 * qJD(2) - t235 * t358, t466 * t448, (qJD(4) + t335) * t467, 0, 0, 0, t91 * qJD(2) - t93 * qJD(3) + t207 * t345, t92 * qJD(2) - t94 * qJD(3) + t207 * t347, t48 * qJD(2) + t50 * qJD(3) - t54 * qJD(4), t49 * qJD(2) + t51 * qJD(3) - t55 * qJD(4), t100 * qJD(5), t10 * qJD(2) + t11 * qJD(3) + t12 * qJD(4) + t13 * qJD(5); 0, 0, 0, t312, t338, t336, -t337, 0, -pkin(6) * t336 - t331, pkin(6) * t337 - t330, t192, t354, -t188, t189, 0, qJD(2) * t447 + t154 * qJD(3) + t351, t350 + t445, t459, t470, t466, t78, 0, t374 + t508, qJD(2) * t481 + t497 * t499 + t373, t499 * t509 - t165 + t385 + t504, -qJD(2) * t490 + t31 * qJD(3) + t384 + t503, (-t400 - t401) * qJD(2) + t15 * qJD(3) + t26 * qJD(4), t416 + (t215 * t509 + t222 * t490) * qJD(2) + t2 * qJD(3) + t4 * qJD(4) + t53 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t192, t354, -t188, t189, 0, t154 * qJD(2) + qJD(3) * t447 - t313, -t314 + t445, t459, t470, t466, t78, 0, -t372 + t508, qJD(3) * t481 + qJD(4) * t497 - t371 + t488, -t165 + t383 + t512, t31 * qJD(2) - qJD(3) * t490 + t382 + t503, t15 * qJD(2) + (-t203 * t448 - t399) * qJD(3) + t87 * qJD(4), t412 + t2 * qJD(2) + (t251 * t509 + t506) * qJD(3) + t5 * qJD(4) + t71 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t459, t470, t466, -t444, 0, t315 + t508, qJD(3) * t497 + qJD(4) * t481 + t316 + t488, -t380 + t512, -qJD(4) * t490 + t335 * t493 - t379, -pkin(4) * t347 + t26 * qJD(2) + t87 * qJD(3), pkin(4) * t376 + t4 * qJD(2) + t5 * qJD(3) + t411; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t453, 0, t357, t53 * qJD(2) + t71 * qJD(3) + t410; 0, 0, 0, -t312, -t338, 0, 0, 0, t331, t330, -t192, -t354, 0, 0, 0, t194 * qJD(3) - t351, -t350, -t459, -t470, 0, -t166, 0, -t374, t34 - t373 + t482, -t385 + t498, t34 - t384 + t486, -t14 * qJD(3) + t27 * qJD(4), -t1 * qJD(3) - t3 * qJD(4) - t52 * qJD(5) - t416; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t260 * t421, -t262 * t421, 0, 0, 0, 0, 0, t168, t169, t168, t169, 0, t102 * qJD(3) - t99 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t260 * t305 + t343, -t262 * t305, 0, 0, 0, 0, 0, t24, t25, t24, t25, -t409, (t203 * t229 - t228 * t251) * qJD(3) + t89 * qJD(4) + t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t349, 0, t324, t323 + t483, t324 - t500, t323 + t487, t390, -pkin(4) * t213 + t89 * qJD(3) - t287; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t356, -t455, 0, -t381; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t192, -t354, 0, 0, 0, -t194 * qJD(2) + t313, t314, -t459, -t470, 0, -t166, 0, t372, -t35 + t371 + t482, -t383 + t498, -t35 - t382 + t486, t14 * qJD(2) + t88 * qJD(4), t1 * qJD(2) + t6 * qJD(4) + t70 * qJD(5) - t412; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t260 * t420 - t343, t262 * t420, 0, 0, 0, 0, 0, t28, t29, t28, t29, t409, t90 * qJD(4) - t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t329, -t298, -t329, -t298, 0, t216 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t349, 0, t282, t275 + t483, t282 - t500, t275 + t487, t375, -pkin(4) * t329 - t270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t356, -t455, 0, t377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t459, -t470, 0, t453, 0, -t315, -t335 * t40 - t316, t335 * t495 - t344 + t380, -t335 * t485 - t111 + t379, -t27 * qJD(2) - t88 * qJD(3), -pkin(4) * t344 + t3 * qJD(2) - t6 * qJD(3) - t411; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t349, 0, t364, t362 - t483, t364 + t500, t362 - t487, -t390, -t90 * qJD(3) + t287; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t349, 0, t363, t361 - t483, t363 + t500, t361 - t487, -t375, t270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t346, -t455, 0, -t328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t444, t466, -t357, pkin(4) * t345 + t52 * qJD(2) - t70 * qJD(3) - t410; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t356, t455, 0, t381; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t356, t455, 0, -t377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t346, t455, 0, t328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t7;

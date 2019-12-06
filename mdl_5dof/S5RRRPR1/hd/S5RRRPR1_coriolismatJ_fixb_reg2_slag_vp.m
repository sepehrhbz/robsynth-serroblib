% Calculate inertial parameters regressor of coriolis matrix for
% S5RRRPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d5,theta4]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:39
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRRPR1_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR1_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR1_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR1_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:38:56
% EndTime: 2019-12-05 18:39:12
% DurationCPUTime: 10.07s
% Computational Cost: add. (15172->344), mult. (28949->440), div. (0->0), fcn. (33796->8), ass. (0->283)
t409 = qJD(2) + qJD(3);
t319 = sin(qJ(5));
t320 = sin(qJ(3));
t321 = sin(qJ(2));
t322 = cos(qJ(2));
t502 = cos(qJ(3));
t299 = t320 * t321 - t502 * t322;
t301 = t320 * t322 + t502 * t321;
t318 = sin(pkin(9));
t489 = cos(pkin(9));
t252 = -t318 * t299 + t489 * t301;
t515 = -pkin(7) - pkin(6);
t308 = t515 * t322;
t303 = t502 * t308;
t307 = t515 * t321;
t454 = t320 * t307;
t265 = -t303 + t454;
t338 = -t299 * qJ(4) + t265;
t378 = -t502 * t307 - t320 * t308;
t518 = -t301 * qJ(4) - t378;
t81 = t318 * t338 - t489 * t518;
t542 = -t252 * pkin(8) - t81;
t552 = t319 * t542;
t521 = t318 * t518;
t534 = t489 * t338;
t163 = t534 + t521;
t253 = -t489 * t299 - t318 * t301;
t121 = pkin(8) * t253 + t163;
t501 = cos(qJ(5));
t559 = t501 * t121;
t565 = t559 / 0.2e1;
t323 = t552 / 0.2e1 + t565;
t373 = -t559 / 0.2e1;
t567 = -t552 / 0.2e1 + t373;
t569 = t323 + t567;
t572 = qJD(1) * t569;
t568 = t567 - t323;
t571 = qJD(5) * t568;
t541 = t501 * t252 + t319 * t253;
t165 = t541 * qJD(4);
t570 = -qJD(5) * t569 - t165;
t551 = t501 * t542;
t514 = -t551 / 0.2e1;
t560 = t319 * t121;
t546 = t514 + t560 / 0.2e1;
t566 = 0.2e1 * t546;
t564 = t551 - t560;
t71 = t559 + t552;
t372 = t551 / 0.2e1;
t556 = t514 + t372;
t563 = qJD(1) * t556;
t562 = qJD(5) + t409;
t539 = -t319 * t252 + t501 * t253;
t168 = t539 * qJD(4);
t561 = qJD(5) * t556 - t168;
t558 = qJD(2) * t566;
t557 = t409 * t81;
t380 = t489 * t320;
t292 = (t318 * t502 + t380) * pkin(2);
t279 = t501 * t292;
t500 = pkin(2) * t320;
t313 = t318 * t500;
t407 = t502 * pkin(2);
t360 = t489 * t407;
t293 = t360 - t313;
t455 = t319 * t293;
t237 = t279 + t455;
t555 = -t237 / 0.2e1;
t39 = t562 * t539;
t550 = t562 * t541;
t549 = t539 * qJD(1);
t478 = t539 ^ 2;
t480 = t541 ^ 2;
t540 = t478 - t480;
t548 = t540 * qJD(1);
t547 = t541 * qJD(1);
t545 = -t489 / 0.2e1;
t512 = -t534 / 0.2e1;
t390 = t539 * t547;
t375 = t407 + pkin(3);
t282 = t489 * t375 - t313;
t532 = t282 / 0.2e1;
t520 = t409 * t252;
t528 = t253 * t520;
t523 = t409 * t378;
t522 = t252 ^ 2;
t333 = pkin(4) + t282;
t270 = t501 * t333;
t284 = pkin(2) * t380 + t318 * t375;
t212 = t319 * t284 - t270;
t511 = -t212 / 0.2e1;
t397 = t501 * t284;
t213 = t319 * t333 + t397;
t510 = t213 / 0.2e1;
t396 = t501 * t293;
t456 = t319 * t292;
t238 = t396 - t456;
t509 = t238 / 0.2e1;
t368 = t489 * pkin(3) + pkin(4);
t306 = t501 * t368;
t496 = t318 * pkin(3);
t283 = t319 * t496 - t306;
t508 = t283 / 0.2e1;
t507 = -t284 / 0.2e1;
t395 = t501 * t318;
t285 = pkin(3) * t395 + t319 * t368;
t506 = -t285 / 0.2e1;
t505 = -t292 / 0.2e1;
t504 = t293 / 0.2e1;
t374 = t303 / 0.2e1;
t503 = t318 / 0.2e1;
t498 = t252 * pkin(4);
t497 = t301 * pkin(3);
t317 = t321 * pkin(2);
t495 = pkin(3) * qJD(3);
t494 = qJD(2) * pkin(2);
t315 = -t322 * pkin(2) - pkin(1);
t271 = t299 * pkin(3) + t315;
t187 = -pkin(4) * t253 + t271;
t197 = t497 + t498;
t188 = t197 + t317;
t8 = t187 * t188;
t491 = t8 * qJD(1);
t9 = t187 * t197;
t490 = t9 * qJD(1);
t13 = t539 * t71 - t541 * t564;
t488 = qJD(1) * t13;
t479 = t541 * t187;
t62 = -t188 * t539 + t479;
t487 = qJD(1) * t62;
t477 = t539 * t187;
t63 = t188 * t541 + t477;
t486 = qJD(1) * t63;
t64 = -t197 * t539 + t479;
t485 = qJD(1) * t64;
t65 = t197 * t541 + t477;
t484 = qJD(1) * t65;
t74 = t163 * t253 + t252 * t81;
t483 = qJD(1) * t74;
t348 = -t539 * t509 + t541 * t555;
t14 = (t508 + t511) * t539 + (t506 + t510) * t541 + t348;
t481 = t14 * qJD(1);
t476 = t212 * t539;
t475 = t213 * t541;
t474 = t252 * t318;
t473 = t282 * t253;
t472 = t283 * t539;
t471 = t284 * t252;
t470 = t285 * t541;
t468 = t299 * t301;
t278 = t317 + t497;
t34 = t271 * t278;
t453 = t34 * qJD(1);
t35 = t271 * t497;
t452 = t35 * qJD(1);
t48 = t478 + t480;
t451 = t48 * qJD(1);
t350 = t541 * t511 - t539 * t213 / 0.2e1;
t243 = t498 / 0.2e1;
t291 = t497 / 0.2e1;
t408 = t291 + t317 / 0.2e1;
t379 = t243 + t408;
t52 = t350 + t379;
t449 = t52 * qJD(1);
t326 = -t253 * t504 + t471 / 0.2e1 + t252 * t505 + t473 / 0.2e1;
t382 = t489 * t253;
t336 = (-t474 / 0.2e1 - t382 / 0.2e1) * pkin(3);
t54 = t336 + t326;
t448 = t54 * qJD(1);
t290 = -t497 / 0.2e1;
t349 = t541 * t508 + t539 * t285 / 0.2e1;
t75 = t290 - t498 / 0.2e1 + t349;
t447 = t75 * qJD(1);
t189 = t271 * t252;
t133 = -t253 * t278 + t189;
t436 = qJD(1) * t133;
t190 = t271 * t253;
t134 = t252 * t278 + t190;
t435 = qJD(1) * t134;
t140 = t253 * t497 - t189;
t434 = qJD(1) * t140;
t141 = -t252 * t497 - t190;
t433 = qJD(1) * t141;
t432 = qJD(1) * t187;
t239 = t299 * t317 + t301 * t315;
t431 = qJD(1) * t239;
t240 = -t299 * t315 + t301 * t317;
t430 = qJD(1) * t240;
t261 = t374 - t303 / 0.2e1;
t429 = qJD(1) * t261;
t428 = qJD(1) * t315;
t427 = qJD(1) * t322;
t426 = qJD(3) * t315;
t423 = qJD(5) * t187;
t346 = t253 ^ 2;
t100 = t346 + t522;
t422 = t100 * qJD(1);
t101 = t346 - t522;
t421 = t101 * qJD(1);
t347 = t252 * t532 + t253 * t507;
t115 = t347 + t408;
t420 = t115 * qJD(1);
t130 = t315 * t317;
t419 = t130 * qJD(1);
t335 = (t252 * t545 + t253 * t503) * pkin(3);
t156 = t290 + t335;
t418 = t156 * qJD(1);
t219 = t299 ^ 2 - t301 ^ 2;
t415 = t219 * qJD(1);
t414 = t252 * qJD(1);
t413 = t253 * qJD(1);
t311 = -t321 ^ 2 + t322 ^ 2;
t412 = t311 * qJD(1);
t411 = t321 * qJD(2);
t410 = t322 * qJD(2);
t406 = pkin(1) * t321 * qJD(1);
t405 = pkin(1) * t427;
t394 = t539 * t432;
t393 = t541 * t432;
t392 = t299 * t428;
t391 = t301 * t428;
t389 = qJD(1) * t468;
t388 = t321 * t410;
t387 = -t270 / 0.2e1 - t306 / 0.2e1;
t386 = t502 * qJD(2);
t385 = t502 * qJD(3);
t257 = t409 * t301;
t371 = -t397 / 0.2e1;
t370 = -t395 / 0.2e1;
t369 = t496 / 0.2e1 + t284 / 0.2e1;
t330 = (t509 - t511) * t71 + (t510 + t555) * t564;
t352 = t506 * t564 - t508 * t71;
t2 = t330 + t352;
t83 = t212 * t237 + t213 * t238;
t362 = t2 * qJD(1) + t83 * qJD(2);
t329 = -(t507 + t292 / 0.2e1) * t81 + (-t293 / 0.2e1 + t532) * t163;
t337 = (t163 * t545 - t503 * t81) * pkin(3);
t16 = t337 + t329;
t180 = -t282 * t292 + t284 * t293;
t359 = t16 * qJD(1) - t180 * qJD(2);
t18 = t373 + t565;
t358 = -qJD(1) * t18 + qJD(2) * t237;
t357 = qJD(2) * t213 + t572;
t356 = -qJD(2) * t212 - t563;
t26 = t372 - t560 / 0.2e1 + t546;
t355 = -qJD(1) * t26 + qJD(2) * t238;
t78 = t512 + t534 / 0.2e1;
t354 = -qJD(1) * t78 + qJD(2) * t292;
t353 = qJD(2) * t293;
t142 = t396 / 0.2e1 + (t505 + t369) * t319 + t387;
t341 = -qJD(2) * t142 - qJD(3) * t283 - t563;
t144 = pkin(3) * t370 + t371 + t279 / 0.2e1 + (t313 / 0.2e1 - t360 / 0.2e1 + t504 - t368) * t319;
t340 = -qJD(2) * t144 + qJD(3) * t285 + t572;
t312 = t321 * t427;
t287 = t293 * qJD(3);
t286 = t292 * qJD(3);
t277 = t285 * qJD(5);
t276 = t283 * qJD(5);
t256 = t409 * t299;
t249 = t253 * qJD(4);
t246 = t252 * qJD(4);
t223 = 0.2e1 * t374 - t454;
t221 = t238 * qJD(3);
t220 = t237 * qJD(3);
t207 = t213 * qJD(5);
t206 = t212 * qJD(5);
t179 = t252 * t413;
t178 = t253 * t414;
t177 = t409 * t253;
t157 = t291 + t335;
t145 = t371 - t455 - t279 / 0.2e1 - t319 * pkin(4) + (-t319 * t489 + t370) * pkin(3);
t143 = -t396 / 0.2e1 + t456 / 0.2e1 + t369 * t319 + t387;
t116 = -t347 + t408;
t97 = t541 * t549;
t79 = -t521 + 0.2e1 * t512;
t76 = t291 + t243 + t349;
t55 = t336 - t326;
t53 = -t350 + t379;
t19 = 0.2e1 * t567;
t17 = t337 - t329;
t15 = -t475 / 0.2e1 + t476 / 0.2e1 - t470 / 0.2e1 + t472 / 0.2e1 - t348;
t1 = t330 - t352;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t388, t311 * qJD(2), 0, -t388, 0, 0, -pkin(1) * t411, -pkin(1) * t410, 0, 0, -t299 * t257, t409 * t219, 0, t409 * t468, 0, 0, qJD(2) * t239 + t301 * t426, qJD(2) * t240 - t299 * t426, 0, qJD(2) * t130, t528, t409 * t101, 0, -t528, 0, 0, qJD(2) * t133 - qJD(3) * t140, qJD(2) * t134 - qJD(3) * t141, qJD(4) * t100, qJD(2) * t34 + qJD(3) * t35 + qJD(4) * t74, t39 * t541, t562 * t540, 0, -t550 * t539, 0, 0, qJD(2) * t62 + qJD(3) * t64 + t423 * t541, qJD(2) * t63 + qJD(3) * t65 + t423 * t539, qJD(4) * t48, qJD(2) * t8 + qJD(3) * t9 + qJD(4) * t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t312, t412, t410, -t312, -t411, 0, -pkin(6) * t410 - t406, pkin(6) * t411 - t405, 0, 0, -t389, t415, -t256, t389, -t257, 0, -qJD(2) * t265 + qJD(3) * t223 + t431, t430 + t523, (t502 * t299 - t301 * t320) * t494, t419 + (-t265 * t502 - t320 * t378) * t494, t179, t421, t177, -t178, -t520, 0, -qJD(2) * t163 + qJD(3) * t79 + t436, t435 + t557, (-t471 - t473) * qJD(2) + t55 * qJD(3), t453 + (-t163 * t282 - t284 * t81) * qJD(2) + t17 * qJD(3) + t116 * qJD(4), t97, t548, t39, -t390, -t550, 0, -qJD(2) * t71 + qJD(3) * t19 + t487 + t571, -qJD(2) * t564 + t486 + (qJD(3) + qJD(5)) * t566, (-t475 + t476) * qJD(2) + t15 * qJD(3), t491 + (t212 * t71 + t213 * t564) * qJD(2) + t1 * qJD(3) + t53 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t389, t415, -t256, t389, -t257, 0, qJD(2) * t223 - qJD(3) * t265 + t391, -t392 + t523, 0, 0, t179, t421, t177, -t178, -t520, 0, qJD(2) * t79 - qJD(3) * t163 - t434, -t433 + t557, t55 * qJD(2) + (-t382 - t474) * t495, t452 + t17 * qJD(2) + (-t163 * t489 - t318 * t81) * t495 + t157 * qJD(4), t97, t548, t39, -t390, -t550, 0, qJD(2) * t19 - qJD(3) * t71 + t485 + t571, -qJD(3) * t564 + qJD(5) * t566 + t484 + t558, t15 * qJD(2) + (-t470 + t472) * qJD(3), t490 + t1 * qJD(2) + (t283 * t71 + t285 * t564) * qJD(3) + t76 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t422, qJD(2) * t116 + qJD(3) * t157 + t483, 0, 0, 0, 0, 0, 0, 0, 0, t451, qJD(2) * t53 + qJD(3) * t76 + t488; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t390, t548, t39, -t390, -t550, 0, -qJD(5) * t71 + t409 * t568 + t393, qJD(3) * t566 - qJD(5) * t564 + t394 + t558, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t312, -t412, 0, t312, 0, 0, t406, t405, 0, 0, t389, -t415, 0, -t389, 0, 0, qJD(3) * t261 - t431, -t430, 0, -t419, -t179, -t421, 0, t178, 0, 0, qJD(3) * t78 - t246 - t436, -t249 - t435, -qJD(3) * t54, -qJD(3) * t16 - qJD(4) * t115 - t453, -t97, -t548, 0, t390, 0, 0, qJD(3) * t18 - t487 + t570, qJD(3) * t26 - t486 + t561, -qJD(3) * t14, qJD(3) * t2 - qJD(4) * t52 - t491; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t500, -pkin(2) * t385, 0, 0, 0, 0, 0, 0, 0, 0, -t286, -t287, 0, t180 * qJD(3), 0, 0, 0, 0, 0, 0, -t220 - t207, -t221 + t206, 0, qJD(3) * t83; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t409 * t500 + t429, (-t386 - t385) * pkin(2), 0, 0, 0, 0, 0, 0, 0, 0, -t286 - t354, -t287 - t353, -t448, (-t489 * t292 + t293 * t318) * t495 - t359, 0, 0, 0, 0, 0, 0, qJD(5) * t145 - t220 - t358, qJD(5) * t143 - t221 - t355, -t481, (t237 * t283 + t238 * t285) * qJD(3) + t362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t414, -t413, 0, -t420, 0, 0, 0, 0, 0, 0, -t547, -t549, 0, -t449; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t145 - t207 - t357, qJD(3) * t143 + t206 - t356, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t389, -t415, 0, -t389, 0, 0, -qJD(2) * t261 - t391, t392, 0, 0, -t179, -t421, 0, t178, 0, 0, -qJD(2) * t78 - t246 + t434, -t249 + t433, qJD(2) * t54, qJD(2) * t16 + qJD(4) * t156 - t452, -t97, -t548, 0, t390, 0, 0, -qJD(2) * t18 - t485 + t570, -qJD(2) * t26 - t484 + t561, qJD(2) * t14, -qJD(2) * t2 + qJD(4) * t75 - t490; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t320 * t494 - t429, pkin(2) * t386, 0, 0, 0, 0, 0, 0, 0, 0, t354, t353, t448, t359, 0, 0, 0, 0, 0, 0, qJD(5) * t144 + t358, qJD(5) * t142 + t355, t481, -t362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t277, t276, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t414, -t413, 0, t418, 0, 0, 0, 0, 0, 0, -t547, -t549, 0, t447; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t277 - t340, t276 - t341, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t520, t177, -t422, qJD(2) * t115 - qJD(3) * t156 - t483, 0, 0, 0, 0, 0, 0, t550, t39, -t451, qJD(2) * t52 - qJD(3) * t75 - t488; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t414, t413, 0, t420, 0, 0, 0, 0, 0, 0, t547, t549, 0, t449; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t414, t413, 0, -t418, 0, 0, 0, 0, 0, 0, t547, t549, 0, -t447; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t547, t549, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t390, -t548, 0, t390, 0, 0, t409 * t569 - t165 - t393, -t409 * t556 - t168 - t394, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t144 + t357, -qJD(3) * t142 + t356, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t340, t341, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t547, -t549, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t3;

% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RRRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:59
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RRRRR5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR5_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR5_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRR5_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR5_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:58:36
% EndTime: 2019-12-05 18:58:51
% DurationCPUTime: 13.02s
% Computational Cost: add. (57439->511), mult. (61110->769), div. (0->0), fcn. (38139->10), ass. (0->350)
t553 = qJD(1) + qJD(2);
t548 = qJD(3) + t553;
t546 = t548 ^ 2;
t563 = cos(qJ(3));
t585 = qJDD(1) + qJDD(2);
t547 = qJDD(3) + t585;
t558 = sin(qJ(3));
t601 = t558 * t547;
t513 = t563 * t546 + t601;
t592 = t563 * t547;
t516 = t558 * t546 - t592;
t559 = sin(qJ(2));
t564 = cos(qJ(2));
t456 = t564 * t513 - t559 * t516;
t494 = pkin(7) * t513 - t563 * g(1);
t628 = pkin(7) * t516 - t558 * g(1);
t397 = pkin(6) * t456 + t564 * t494 - t559 * t628;
t560 = sin(qJ(1));
t565 = cos(qJ(1));
t461 = t559 * t513 + t564 * t516;
t637 = pkin(6) * t461 + t559 * t494 + t564 * t628;
t638 = t560 * t456 + t565 * t461;
t648 = pkin(5) * t638 + t560 * t397 + t565 * t637;
t408 = t565 * t456 - t560 * t461;
t647 = pkin(5) * t408 + t565 * t397 - t560 * t637;
t540 = t565 * g(2) + t560 * g(3);
t571 = qJDD(1) * pkin(1) + t540;
t539 = t560 * g(2) - t565 * g(3);
t619 = qJD(1) ^ 2;
t572 = -t619 * pkin(1) + t539;
t475 = t559 * t571 + t564 * t572;
t550 = t553 ^ 2;
t466 = -t550 * pkin(2) + t475;
t569 = -t559 * t572 + t564 * t571;
t568 = t585 * pkin(2) + t569;
t420 = t558 * t466 - t563 * t568;
t421 = t563 * t466 + t558 * t568;
t579 = t558 * t420 + t563 * t421;
t354 = t563 * t420 - t558 * t421;
t591 = t564 * t354;
t302 = -t559 * t579 + t591;
t600 = t559 * t354;
t634 = t564 * t579 + t600;
t267 = t560 * t302 + t565 * t634;
t266 = t565 * t302 - t560 * t634;
t523 = t564 * t550 + t559 * t585;
t504 = pkin(6) * t523 - t564 * g(1);
t525 = -t559 * t550 + t564 * t585;
t631 = t560 * t523 - t565 * t525;
t632 = -pkin(6) * t525 - t559 * g(1);
t645 = pkin(5) * t631 + t560 * t504 + t565 * t632;
t467 = t565 * t523 + t560 * t525;
t643 = pkin(5) * t467 + t565 * t504 - t560 * t632;
t578 = t564 * t475 - t559 * t569;
t425 = -t559 * t475 - t564 * t569;
t589 = t565 * t425;
t360 = -t560 * t578 + t589;
t598 = t560 * t425;
t633 = -t565 * t578 - t598;
t556 = sin(qJ(5));
t561 = cos(qJ(5));
t562 = cos(qJ(4));
t557 = sin(qJ(4));
t613 = t548 * t557;
t497 = -t561 * t562 * t548 + t556 * t613;
t499 = (t556 * t562 + t557 * t561) * t548;
t454 = t499 * t497;
t584 = qJDD(4) + qJDD(5);
t621 = -t454 + t584;
t630 = t556 * t621;
t629 = t561 * t621;
t552 = qJD(4) + qJD(5);
t488 = t552 * t497;
t587 = qJD(4) * t548;
t580 = t562 * t587;
t602 = t557 * t547;
t509 = t580 + t602;
t542 = t562 * t547;
t581 = t557 * t587;
t510 = t542 - t581;
t570 = t497 * qJD(5) - t561 * t509 - t556 * t510;
t620 = -t488 - t570;
t577 = t556 * t509 - t561 * t510;
t400 = (qJD(5) - t552) * t499 + t577;
t495 = t497 ^ 2;
t496 = t499 ^ 2;
t549 = t552 ^ 2;
t614 = t546 * t557;
t612 = t552 * t556;
t611 = t552 * t561;
t554 = t557 ^ 2;
t610 = t554 * t546;
t555 = t562 ^ 2;
t543 = t555 * t546;
t405 = -t547 * pkin(3) - t546 * pkin(8) + t420;
t529 = qJD(4) * pkin(4) - pkin(9) * t613;
t365 = -t510 * pkin(4) - pkin(9) * t543 + t529 * t613 + t405;
t609 = t556 * t365;
t446 = t454 + t584;
t608 = t556 * t446;
t406 = -t546 * pkin(3) + t547 * pkin(8) + t421;
t605 = t557 * t406;
t359 = qJDD(4) * pkin(4) - t509 * pkin(9) - t605 + (pkin(4) * t614 + pkin(9) * t587 - g(1)) * t562;
t389 = -t557 * g(1) + t562 * t406;
t362 = -pkin(4) * t543 + t510 * pkin(9) - qJD(4) * t529 + t389;
t312 = -t561 * t359 + t556 * t362;
t313 = t556 * t359 + t561 * t362;
t276 = -t561 * t312 + t556 * t313;
t607 = t557 * t276;
t606 = t557 * t405;
t535 = t562 * t614;
t527 = qJDD(4) + t535;
t604 = t557 * t527;
t528 = qJDD(4) - t535;
t603 = t557 * t528;
t597 = t561 * t365;
t596 = t561 * t446;
t595 = t562 * t276;
t594 = t562 * t405;
t593 = t562 * t528;
t588 = t554 + t555;
t583 = t558 * t454;
t582 = t563 * t454;
t277 = t556 * t312 + t561 * t313;
t388 = t562 * g(1) + t605;
t340 = t557 * t388 + t562 * t389;
t575 = t558 * t535;
t574 = t563 * t535;
t536 = t560 * qJDD(1) + t565 * t619;
t573 = pkin(5) * t536 - t565 * g(1);
t339 = t562 * t388 - t557 * t389;
t490 = t565 * t539 - t560 * t540;
t489 = -t560 * t539 - t565 * t540;
t567 = qJD(4) ^ 2;
t566 = pkin(1) * g(1);
t537 = -t565 * qJDD(1) + t560 * t619;
t533 = -t543 - t567;
t532 = t543 - t567;
t531 = -t567 - t610;
t530 = t567 - t610;
t520 = t562 * t527;
t519 = -pkin(5) * t537 + t560 * g(1);
t518 = t543 - t610;
t517 = t543 + t610;
t512 = t588 * t547;
t511 = t542 - 0.2e1 * t581;
t508 = 0.2e1 * t580 + t602;
t507 = t588 * t587;
t486 = -t496 + t549;
t485 = t495 - t549;
t484 = t558 * qJDD(4) + t563 * t507;
t483 = -t563 * qJDD(4) + t558 * t507;
t482 = -t496 - t549;
t481 = -t557 * t531 - t593;
t480 = -t557 * t530 + t520;
t479 = t562 * t533 - t604;
t478 = t562 * t532 - t603;
t477 = t562 * t531 - t603;
t476 = t557 * t533 + t520;
t473 = t562 * t509 - t554 * t587;
t472 = -t557 * t510 - t555 * t587;
t459 = t563 * t512 - t558 * t517;
t455 = t558 * t512 + t563 * t517;
t453 = -t557 * t508 + t562 * t511;
t452 = -t496 + t495;
t451 = t563 * t480 + t557 * t601;
t450 = t563 * t478 + t558 * t542;
t449 = t558 * t480 - t557 * t592;
t448 = t558 * t478 - t562 * t592;
t444 = t563 * t473 - t575;
t443 = t563 * t472 + t575;
t442 = t558 * t473 + t574;
t441 = t558 * t472 - t574;
t440 = -t549 - t495;
t439 = t563 * t481 + t558 * t508;
t438 = t563 * t479 - t558 * t511;
t437 = t558 * t481 - t563 * t508;
t436 = t558 * t479 + t563 * t511;
t435 = (-t497 * t561 + t499 * t556) * t552;
t434 = (-t497 * t556 - t499 * t561) * t552;
t433 = -t559 * t483 + t564 * t484;
t432 = t564 * t483 + t559 * t484;
t431 = -t495 - t496;
t430 = t563 * t453 - t558 * t518;
t429 = t558 * t453 + t563 * t518;
t427 = -t499 * qJD(5) - t577;
t422 = pkin(6) * t578 + t566;
t418 = t561 * t485 - t608;
t417 = -t556 * t486 + t629;
t416 = t556 * t485 + t596;
t415 = t561 * t486 + t630;
t414 = -t556 * t482 - t596;
t413 = t561 * t482 - t608;
t410 = -t559 * t455 + t564 * t459;
t407 = t564 * t455 + t559 * t459;
t404 = -t488 + t570;
t399 = (qJD(5) + t552) * t499 + t577;
t393 = -t559 * t449 + t564 * t451;
t392 = -t559 * t448 + t564 * t450;
t391 = t564 * t449 + t559 * t451;
t390 = t564 * t448 + t559 * t450;
t387 = -t499 * t612 - t561 * t570;
t386 = t499 * t611 - t556 * t570;
t385 = -t556 * t427 + t497 * t611;
t384 = t561 * t427 + t497 * t612;
t382 = t561 * t440 - t630;
t381 = t556 * t440 + t629;
t380 = -t559 * t442 + t564 * t444;
t379 = -t559 * t441 + t564 * t443;
t378 = t564 * t442 + t559 * t444;
t377 = t564 * t441 + t559 * t443;
t376 = -t559 * t437 + t564 * t439;
t375 = -t559 * t436 + t564 * t438;
t374 = t564 * t437 + t559 * t439;
t373 = t564 * t436 + t559 * t438;
t372 = -t557 * t434 + t562 * t435;
t371 = -pkin(8) * t477 + t594;
t370 = -pkin(8) * t476 + t606;
t369 = -pkin(3) * t477 + t389;
t368 = -pkin(3) * t476 + t388;
t367 = t563 * t372 + t558 * t584;
t366 = t558 * t372 - t563 * t584;
t364 = -t559 * t429 + t564 * t430;
t363 = t564 * t429 + t559 * t430;
t351 = pkin(2) * g(1) + pkin(7) * t579;
t350 = -t557 * t416 + t562 * t418;
t349 = -t557 * t415 + t562 * t417;
t348 = -t557 * t413 + t562 * t414;
t347 = t562 * t413 + t557 * t414;
t346 = -t560 * t407 + t565 * t410;
t345 = -t565 * t407 - t560 * t410;
t344 = -t400 * t561 - t556 * t404;
t343 = -t561 * t399 - t556 * t620;
t342 = -t400 * t556 + t561 * t404;
t341 = -t556 * t399 + t561 * t620;
t337 = -t557 * t386 + t562 * t387;
t336 = -t557 * t384 + t562 * t385;
t335 = -t557 * t381 + t562 * t382;
t334 = t562 * t381 + t557 * t382;
t333 = -pkin(9) * t413 + t597;
t332 = -t560 * t374 + t565 * t376;
t331 = -t560 * t373 + t565 * t375;
t330 = -t565 * t374 - t560 * t376;
t329 = -t565 * t373 - t560 * t375;
t328 = -pkin(9) * t381 + t609;
t327 = -pkin(7) * t455 + t563 * t339;
t326 = pkin(7) * t459 + t558 * t339;
t325 = t563 * t337 + t583;
t324 = t563 * t336 - t583;
t323 = t558 * t337 - t582;
t322 = t558 * t336 + t582;
t321 = t563 * t350 - t558 * t400;
t320 = t563 * t349 - t558 * t404;
t319 = t558 * t350 + t563 * t400;
t318 = t558 * t349 + t563 * t404;
t317 = -t559 * t366 + t564 * t367;
t316 = t564 * t366 + t559 * t367;
t315 = t563 * t348 + t558 * t620;
t314 = t558 * t348 - t563 * t620;
t310 = t563 * t340 + t558 * t405;
t309 = t558 * t340 - t563 * t405;
t308 = t563 * t335 + t558 * t399;
t307 = t558 * t335 - t563 * t399;
t306 = -pkin(7) * t437 - t558 * t369 + t563 * t371;
t305 = -pkin(7) * t436 - t558 * t368 + t563 * t370;
t304 = -pkin(4) * t620 + pkin(9) * t414 + t609;
t299 = -pkin(4) * t399 + pkin(9) * t382 - t597;
t298 = -pkin(2) * t477 + pkin(7) * t439 + t563 * t369 + t558 * t371;
t297 = -pkin(2) * t476 + pkin(7) * t438 + t563 * t368 + t558 * t370;
t296 = -t557 * t342 + t562 * t344;
t295 = -t557 * t341 + t562 * t343;
t294 = t562 * t342 + t557 * t344;
t293 = t563 * t295 - t558 * t452;
t292 = t558 * t295 + t563 * t452;
t291 = t563 * t296 + t558 * t431;
t290 = t558 * t296 - t563 * t431;
t289 = -t559 * t323 + t564 * t325;
t288 = -t559 * t322 + t564 * t324;
t287 = t564 * t323 + t559 * t325;
t286 = t564 * t322 + t559 * t324;
t285 = -t559 * t319 + t564 * t321;
t284 = -t559 * t318 + t564 * t320;
t283 = t564 * t319 + t559 * t321;
t282 = t564 * t318 + t559 * t320;
t281 = -pkin(3) * t347 - pkin(4) * t413 + t313;
t280 = -t559 * t314 + t564 * t315;
t279 = t564 * t314 + t559 * t315;
t278 = -pkin(3) * t294 - pkin(4) * t342;
t275 = -pkin(6) * t407 - t559 * t326 + t564 * t327;
t274 = pkin(6) * t410 + t564 * t326 + t559 * t327;
t273 = -pkin(3) * t334 - pkin(4) * t381 + t312;
t272 = -t559 * t309 + t564 * t310;
t271 = t564 * t309 + t559 * t310;
t270 = -t559 * t307 + t564 * t308;
t269 = t564 * t307 + t559 * t308;
t268 = pkin(6) * t302 + pkin(7) * t591 - t559 * t351;
t265 = pkin(6) * t634 + pkin(7) * t600 + t564 * t351 + t566;
t264 = -pkin(7) * t309 - (pkin(3) * t558 - pkin(8) * t563) * t339;
t263 = -pkin(4) * t365 + pkin(9) * t277;
t262 = -pkin(8) * t347 - t557 * t304 + t562 * t333;
t261 = -pkin(9) * t342 - t276;
t260 = -pkin(6) * t374 - t559 * t298 + t564 * t306;
t259 = -pkin(6) * t373 - t559 * t297 + t564 * t305;
t258 = -pkin(8) * t334 - t557 * t299 + t562 * t328;
t257 = -pkin(1) * t477 + pkin(6) * t376 + t564 * t298 + t559 * t306;
t256 = -pkin(1) * t476 + pkin(6) * t375 + t564 * t297 + t559 * t305;
t255 = -pkin(4) * t431 + pkin(9) * t344 + t277;
t254 = -t559 * t292 + t564 * t293;
t253 = t564 * t292 + t559 * t293;
t252 = pkin(7) * t310 - (-pkin(3) * t563 - pkin(8) * t558 - pkin(2)) * t339;
t251 = -t559 * t290 + t564 * t291;
t250 = t564 * t290 + t559 * t291;
t249 = -t560 * t279 + t565 * t280;
t248 = -t565 * t279 - t560 * t280;
t247 = t562 * t277 - t607;
t246 = t557 * t277 + t595;
t245 = -t560 * t271 + t565 * t272;
t244 = -t565 * t271 - t560 * t272;
t243 = -t560 * t269 + t565 * t270;
t242 = -t565 * t269 - t560 * t270;
t241 = t563 * t247 + t558 * t365;
t240 = t558 * t247 - t563 * t365;
t239 = -pkin(7) * t314 + t563 * t262 - t558 * t281;
t238 = -pkin(7) * t307 + t563 * t258 - t558 * t273;
t237 = -pkin(2) * t347 + pkin(7) * t315 + t558 * t262 + t563 * t281;
t236 = -pkin(3) * t246 - pkin(4) * t276;
t235 = -t560 * t250 + t565 * t251;
t234 = -t565 * t250 - t560 * t251;
t233 = -pkin(2) * t334 + pkin(7) * t308 + t558 * t258 + t563 * t273;
t232 = -pkin(8) * t294 - t557 * t255 + t562 * t261;
t231 = -pkin(6) * t271 - t559 * t252 + t564 * t264;
t230 = pkin(1) * t339 + pkin(6) * t272 + t564 * t252 + t559 * t264;
t229 = -pkin(8) * t246 - pkin(9) * t595 - t557 * t263;
t228 = -t559 * t240 + t564 * t241;
t227 = t564 * t240 + t559 * t241;
t226 = -pkin(7) * t290 + t563 * t232 - t558 * t278;
t225 = -pkin(2) * t294 + pkin(7) * t291 + t558 * t232 + t563 * t278;
t224 = -pkin(6) * t279 - t559 * t237 + t564 * t239;
t223 = -pkin(1) * t347 + pkin(6) * t280 + t564 * t237 + t559 * t239;
t222 = -pkin(6) * t269 - t559 * t233 + t564 * t238;
t221 = -pkin(1) * t334 + pkin(6) * t270 + t564 * t233 + t559 * t238;
t220 = -t560 * t227 + t565 * t228;
t219 = -t565 * t227 - t560 * t228;
t218 = -pkin(7) * t240 + t563 * t229 - t558 * t236;
t217 = -pkin(2) * t246 + pkin(7) * t241 + t558 * t229 + t563 * t236;
t216 = -pkin(6) * t250 - t559 * t225 + t564 * t226;
t215 = -pkin(1) * t294 + pkin(6) * t251 + t564 * t225 + t559 * t226;
t214 = -pkin(6) * t227 - t559 * t217 + t564 * t218;
t213 = -pkin(1) * t246 + pkin(6) * t228 + t564 * t217 + t559 * t218;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t476, t477, 0, -t339, 0, 0, 0, 0, 0, 0, t334, t347, t294, t246; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t537, t536, 0, t489, 0, 0, 0, 0, 0, 0, t631, t467, 0, t360, 0, 0, 0, 0, 0, 0, t638, t408, 0, t266, 0, 0, 0, 0, 0, 0, t329, t330, t345, t244, 0, 0, 0, 0, 0, 0, t242, t248, t234, t219; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t536, t537, 0, t490, 0, 0, 0, 0, 0, 0, -t467, t631, 0, -t633, 0, 0, 0, 0, 0, 0, -t408, t638, 0, t267, 0, 0, 0, 0, 0, 0, t331, t332, t346, t245, 0, 0, 0, 0, 0, 0, t243, t249, t235, t220; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t540, -t539, 0, 0, 0, 0, 0, 0, 0, t585, pkin(1) * t525 + t569, -pkin(1) * t523 - t475, 0, -pkin(1) * t425, 0, 0, 0, 0, 0, t547, -pkin(1) * t461 - pkin(2) * t516 - t420, -pkin(1) * t456 - pkin(2) * t513 - t421, 0, -pkin(1) * t302 - pkin(2) * t354, (t509 + t580) * t557, t562 * t508 + t557 * t511, t562 * t530 + t604, (t510 - t581) * t562, t557 * t532 + t593, 0, pkin(1) * t373 + pkin(2) * t436 + pkin(3) * t511 + pkin(8) * t479 - t594, pkin(1) * t374 + pkin(2) * t437 - pkin(3) * t508 + pkin(8) * t481 + t606, pkin(1) * t407 + pkin(2) * t455 + pkin(3) * t517 + pkin(8) * t512 + t340, pkin(1) * t271 + pkin(2) * t309 - pkin(3) * t405 + pkin(8) * t340, t562 * t386 + t557 * t387, t562 * t341 + t557 * t343, t562 * t415 + t557 * t417, t562 * t384 + t557 * t385, t562 * t416 + t557 * t418, t562 * t434 + t557 * t435, pkin(1) * t269 + pkin(2) * t307 - pkin(3) * t399 + pkin(8) * t335 + t562 * t299 + t557 * t328, pkin(1) * t279 + pkin(2) * t314 - pkin(3) * t620 + pkin(8) * t348 + t562 * t304 + t557 * t333, pkin(1) * t250 + pkin(2) * t290 - pkin(3) * t431 + pkin(8) * t296 + t562 * t255 + t557 * t261, pkin(1) * t227 + pkin(2) * t240 - pkin(3) * t365 + pkin(8) * t247 - pkin(9) * t607 + t562 * t263; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t536, 0, t537, 0, t573, t519, -t490, -pkin(5) * t490, 0, 0, -t467, 0, t631, 0, t643, -t645, t633, pkin(5) * t633 - pkin(6) * t598 - t565 * t422, 0, 0, -t408, 0, t638, 0, t647, -t648, -t267, -pkin(5) * t267 - t565 * t265 - t560 * t268, -t565 * t378 - t560 * t380, -t565 * t363 - t560 * t364, -t565 * t391 - t560 * t393, -t565 * t377 - t560 * t379, -t565 * t390 - t560 * t392, -t565 * t432 - t560 * t433, -pkin(5) * t331 - t565 * t256 - t560 * t259, -pkin(5) * t332 - t565 * t257 - t560 * t260, -pkin(5) * t346 - t565 * t274 - t560 * t275, -pkin(5) * t245 - t565 * t230 - t560 * t231, -t565 * t287 - t560 * t289, -t565 * t253 - t560 * t254, -t565 * t282 - t560 * t284, -t565 * t286 - t560 * t288, -t565 * t283 - t560 * t285, -t565 * t316 - t560 * t317, -pkin(5) * t243 - t565 * t221 - t560 * t222, -pkin(5) * t249 - t565 * t223 - t560 * t224, -pkin(5) * t235 - t565 * t215 - t560 * t216, -pkin(5) * t220 - t565 * t213 - t560 * t214; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t537, 0, -t536, 0, -t519, t573, t489, pkin(5) * t489, 0, 0, -t631, 0, -t467, 0, t645, t643, t360, pkin(5) * t360 + pkin(6) * t589 - t560 * t422, 0, 0, -t638, 0, -t408, 0, t648, t647, t266, pkin(5) * t266 - t560 * t265 + t565 * t268, -t560 * t378 + t565 * t380, -t560 * t363 + t565 * t364, -t560 * t391 + t565 * t393, -t560 * t377 + t565 * t379, -t560 * t390 + t565 * t392, -t560 * t432 + t565 * t433, pkin(5) * t329 - t560 * t256 + t565 * t259, pkin(5) * t330 - t560 * t257 + t565 * t260, pkin(5) * t345 - t560 * t274 + t565 * t275, pkin(5) * t244 - t560 * t230 + t565 * t231, -t560 * t287 + t565 * t289, -t560 * t253 + t565 * t254, -t560 * t282 + t565 * t284, -t560 * t286 + t565 * t288, -t560 * t283 + t565 * t285, -t560 * t316 + t565 * t317, pkin(5) * t242 - t560 * t221 + t565 * t222, pkin(5) * t248 - t560 * t223 + t565 * t224, pkin(5) * t234 - t560 * t215 + t565 * t216, pkin(5) * t219 - t560 * t213 + t565 * t214;];
tauB_reg = t1;

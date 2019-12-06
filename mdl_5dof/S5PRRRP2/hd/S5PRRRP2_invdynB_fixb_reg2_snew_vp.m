% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5PRRRP2
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:42
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5PRRRP2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP2_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP2_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRP2_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP2_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:42:02
% EndTime: 2019-12-05 16:42:14
% DurationCPUTime: 6.90s
% Computational Cost: add. (14410->382), mult. (22041->511), div. (0->0), fcn. (14242->8), ass. (0->277)
t426 = qJD(4) ^ 2;
t413 = qJD(2) + qJD(3);
t411 = t413 ^ 2;
t420 = sin(qJ(4));
t415 = t420 ^ 2;
t487 = t415 * t411;
t395 = t426 + t487;
t423 = cos(qJ(4));
t400 = t420 * t411 * t423;
t390 = qJDD(4) - t400;
t466 = t423 * t390;
t343 = -t420 * t395 + t466;
t455 = qJD(4) * t413;
t450 = t423 * t455;
t412 = qJDD(2) + qJDD(3);
t473 = t420 * t412;
t371 = 0.2e1 * t450 + t473;
t421 = sin(qJ(3));
t424 = cos(qJ(3));
t296 = t421 * t343 + t424 * t371;
t299 = t424 * t343 - t421 * t371;
t422 = sin(qJ(2));
t425 = cos(qJ(2));
t245 = t425 * t296 + t422 * t299;
t249 = t422 * t296 - t425 * t299;
t418 = sin(pkin(8));
t419 = cos(pkin(8));
t195 = t419 * t245 - t418 * t249;
t544 = qJ(1) * t195;
t199 = t418 * t245 + t419 * t249;
t543 = qJ(1) * t199;
t542 = pkin(5) * t245;
t541 = pkin(1) * t245 + pkin(2) * t296 + pkin(7) * t343;
t476 = t420 * t390;
t335 = t423 * t395 + t476;
t540 = -pkin(1) * t335 - pkin(5) * t249;
t451 = t420 * t455;
t465 = t423 * t412;
t372 = -0.2e1 * t451 + t465;
t326 = t423 * t372;
t327 = t420 * t371;
t312 = -t326 + t327;
t416 = t423 ^ 2;
t383 = (t415 - t416) * t411;
t284 = t421 * t312 + t424 * t383;
t288 = t424 * t312 - t421 * t383;
t231 = t425 * t284 + t422 * t288;
t232 = t422 * t284 - t425 * t288;
t539 = t419 * t231 - t418 * t232;
t538 = t418 * t231 + t419 * t232;
t486 = t416 * t411;
t397 = -t426 + t486;
t341 = -t423 * t397 + t476;
t462 = t424 * t412;
t306 = t421 * t341 + t423 * t462;
t309 = t424 * t341 - t421 * t465;
t259 = t425 * t306 + t422 * t309;
t261 = t422 * t306 - t425 * t309;
t537 = t419 * t259 - t418 * t261;
t536 = t418 * t259 + t419 * t261;
t470 = t421 * t412;
t378 = t424 * t411 + t470;
t381 = t421 * t411 - t462;
t316 = t425 * t378 - t422 * t381;
t417 = g(3) - qJDD(1);
t356 = pkin(6) * t378 - t424 * t417;
t513 = pkin(6) * t381 - t421 * t417;
t257 = pkin(5) * t316 + t425 * t356 - t422 * t513;
t321 = t422 * t378 + t425 * t381;
t271 = t418 * t316 + t419 * t321;
t525 = pkin(5) * t321 + t422 * t356 + t425 * t513;
t535 = qJ(1) * t271 + t418 * t257 + t419 * t525;
t512 = t419 * t316 - t418 * t321;
t534 = qJ(1) * t512 + t419 * t257 - t418 * t525;
t533 = pkin(6) * t296;
t529 = -pkin(2) * t335 + pkin(6) * t299;
t393 = t418 * g(1) - t419 * g(2);
t394 = t419 * g(1) + t418 * g(2);
t458 = -t422 * t393 + t425 * t394;
t498 = qJD(2) ^ 2;
t330 = -t498 * pkin(2) - t458;
t433 = t425 * t393 + t422 * t394;
t429 = qJDD(2) * pkin(2) + t433;
t281 = t421 * t330 - t424 * t429;
t282 = t424 * t330 + t421 * t429;
t447 = t421 * t281 + t424 * t282;
t223 = t424 * t281 - t421 * t282;
t460 = t425 * t223;
t186 = -t422 * t447 + t460;
t468 = t422 * t223;
t521 = t425 * t447 + t468;
t165 = t418 * t186 + t419 * t521;
t528 = t419 * t186 - t418 * t521;
t446 = -t422 * t433 - t425 * t458;
t289 = t422 * t458 - t425 * t433;
t481 = t419 * t289;
t520 = -t418 * t446 + t481;
t485 = t418 * t289;
t229 = t419 * t446 + t485;
t391 = t422 * qJDD(2) + t425 * t498;
t392 = t425 * qJDD(2) - t422 * t498;
t332 = -t418 * t391 + t419 * t392;
t362 = pkin(5) * t391 - t425 * t417;
t436 = -pkin(5) * t392 - t422 * t417;
t519 = -qJ(1) * t332 + t418 * t362 + t419 * t436;
t518 = 2 * qJD(5);
t515 = pkin(3) * t335;
t514 = pkin(7) * t335;
t502 = t419 * t391 + t418 * t392;
t510 = qJ(1) * t502 + t419 * t362 - t418 * t436;
t496 = pkin(4) * t423;
t438 = -qJ(5) * t420 - t496;
t370 = t438 * t413;
t278 = -t411 * pkin(3) + t412 * pkin(7) + t282;
t457 = -t423 * t278 + t420 * t417;
t435 = t423 * t413 * t370 + qJDD(4) * qJ(5) + (qJD(4) * t518) - t457;
t501 = t420 * t397 + t466;
t488 = t413 * t420;
t500 = t370 * t488 + qJDD(5);
t497 = pkin(1) * t417;
t398 = -t426 - t486;
t389 = qJDD(4) + t400;
t477 = t420 * t389;
t340 = t423 * t398 - t477;
t295 = t421 * t340 + t424 * t372;
t298 = t424 * t340 - t421 * t372;
t244 = t425 * t295 + t422 * t298;
t495 = pkin(5) * t244;
t456 = t415 + t416;
t374 = t456 * t412;
t382 = t456 * t411;
t315 = t421 * t374 + t424 * t382;
t319 = t424 * t374 - t421 * t382;
t275 = t425 * t315 + t422 * t319;
t494 = pkin(5) * t275;
t493 = pkin(6) * t295;
t492 = pkin(6) * t315;
t375 = t423 * t389;
t333 = t420 * t398 + t375;
t491 = pkin(7) * t333;
t247 = -t422 * t295 + t425 * t298;
t194 = t419 * t244 + t418 * t247;
t490 = qJ(1) * t194;
t276 = -t422 * t315 + t425 * t319;
t216 = t419 * t275 + t418 * t276;
t489 = qJ(1) * t216;
t482 = t418 * t417;
t480 = t419 * t417;
t277 = -t412 * pkin(3) - t411 * pkin(7) + t281;
t479 = t420 * t277;
t478 = t420 * t372;
t467 = t423 * t277;
t265 = t420 * t278 + t423 * t417;
t459 = t382 - t426;
t449 = -pkin(1) * t333 + pkin(5) * t247;
t448 = -pkin(2) * t333 + pkin(6) * t298;
t212 = t420 * t265 - t423 * t457;
t348 = -t418 * t393 - t419 * t394;
t443 = t421 * t400;
t442 = t424 * t400;
t441 = pkin(1) * t244 + pkin(2) * t295 + pkin(3) * t372 + pkin(7) * t340;
t440 = pkin(1) * t275 + pkin(2) * t315 + pkin(3) * t382 + pkin(7) * t374;
t238 = -pkin(3) * t333 + t265;
t437 = pkin(4) * t420 - qJ(5) * t423;
t211 = t423 * t265 + t420 * t457;
t434 = t423 * t371 + t478;
t347 = t419 * t393 - t418 * t394;
t432 = t450 + t473;
t431 = -t451 + t465;
t430 = -qJDD(4) * pkin(4) + t265 + t500;
t428 = -t431 * pkin(4) + t277 + (-t432 - t450) * qJ(5);
t427 = t488 * t518 - t428;
t396 = t426 - t487;
t368 = t437 * t412;
t367 = t456 * t455;
t352 = t421 * qJDD(4) + t424 * t367;
t351 = -t424 * qJDD(4) + t421 * t367;
t346 = -t415 * t455 + t423 * t432;
t345 = -t416 * t455 - t420 * t431;
t342 = -t420 * t396 + t375;
t334 = t423 * t396 + t477;
t313 = pkin(6) * t319;
t310 = t424 * t342 + t420 * t470;
t307 = t421 * t342 - t420 * t462;
t304 = t424 * t346 - t443;
t303 = t424 * t345 + t443;
t302 = t421 * t346 + t442;
t301 = t421 * t345 - t442;
t292 = -t422 * t351 + t425 * t352;
t291 = t425 * t351 + t422 * t352;
t280 = pkin(5) * t446 + t497;
t267 = pkin(5) * t276;
t263 = -t422 * t307 + t425 * t310;
t260 = t425 * t307 + t422 * t310;
t253 = -t422 * t302 + t425 * t304;
t252 = -t422 * t301 + t425 * t303;
t251 = t425 * t302 + t422 * t304;
t250 = t425 * t301 + t422 * t303;
t243 = t467 + t514;
t242 = t479 - t491;
t239 = -t457 + t515;
t237 = t426 * qJ(5) - t430;
t236 = -t426 * pkin(4) + t435;
t235 = -t418 * t291 + t419 * t292;
t234 = t419 * t291 + t418 * t292;
t227 = qJ(5) * t459 + t430;
t226 = pkin(4) * t459 + t435;
t225 = (pkin(4) * qJD(4) - (2 * qJD(5))) * t488 + t428;
t220 = pkin(2) * t417 + pkin(6) * t447;
t219 = (t372 - t451) * pkin(4) + t427;
t218 = -pkin(4) * t451 + qJ(5) * t371 + t427;
t217 = -t418 * t275 + t419 * t276;
t215 = qJ(1) * t217;
t214 = (-t398 - t426) * qJ(5) + (-qJDD(4) - t389) * pkin(4) + t238 + t500;
t213 = -t515 - qJ(5) * t390 + (-t395 + t426) * pkin(4) - t435;
t209 = -t418 * t260 + t419 * t263;
t208 = t419 * t260 + t418 * t263;
t207 = -t418 * t251 + t419 * t253;
t206 = -t418 * t250 + t419 * t252;
t205 = t419 * t251 + t418 * t253;
t204 = t419 * t250 + t418 * t252;
t203 = -pkin(4) * t327 + t423 * t218 - t514;
t202 = qJ(5) * t326 - t420 * t219 - t491;
t201 = t424 * t211 - t492;
t200 = t421 * t211 + t313;
t197 = -t418 * t244 + t419 * t247;
t193 = qJ(1) * t197;
t192 = t423 * t236 - t420 * t237;
t191 = t420 * t236 + t423 * t237;
t190 = t424 * t212 + t421 * t277;
t189 = t421 * t212 - t424 * t277;
t188 = -t420 * t226 + t423 * t227;
t183 = -t421 * t239 + t424 * t243 + t533;
t182 = -t421 * t238 + t424 * t242 - t493;
t181 = t424 * t239 + t421 * t243 - t529;
t180 = t424 * t238 + t421 * t242 + t448;
t179 = t424 * t188 - t421 * t368 - t492;
t178 = t421 * t188 + t424 * t368 + t313;
t177 = t424 * t192 + t421 * t225;
t176 = t421 * t192 - t424 * t225;
t175 = t424 * t202 - t421 * t214 - t493;
t174 = t424 * t203 - t421 * t213 - t533;
t173 = t421 * t202 + t424 * t214 + t448;
t172 = t421 * t203 + t424 * t213 + t529;
t171 = -pkin(3) * t191 - pkin(4) * t237 - qJ(5) * t236;
t170 = -pkin(7) * t191 + t225 * t437;
t169 = -t422 * t200 + t425 * t201 - t494;
t168 = t425 * t200 + t422 * t201 + t267;
t167 = -t422 * t189 + t425 * t190;
t166 = t425 * t189 + t422 * t190;
t163 = pkin(5) * t186 + pkin(6) * t460 - t422 * t220;
t162 = pkin(5) * t521 + pkin(6) * t468 + t425 * t220 + t497;
t161 = -pkin(6) * t189 - (pkin(3) * t421 - pkin(7) * t424) * t211;
t160 = -t422 * t181 + t425 * t183 + t542;
t159 = -t422 * t180 + t425 * t182 - t495;
t158 = t425 * t181 + t422 * t183 - t540;
t157 = t425 * t180 + t422 * t182 + t449;
t156 = -t422 * t178 + t425 * t179 - t494;
t155 = t425 * t178 + t422 * t179 + t267;
t154 = -t422 * t176 + t425 * t177;
t153 = t425 * t176 + t422 * t177;
t152 = pkin(6) * t190 - (-pkin(3) * t424 - pkin(7) * t421 - pkin(2)) * t211;
t151 = -t422 * t173 + t425 * t175 - t495;
t150 = -t422 * t172 + t425 * t174 - t542;
t149 = t425 * t173 + t422 * t175 + t449;
t148 = t425 * t172 + t422 * t174 + t540;
t147 = -t418 * t166 + t419 * t167;
t146 = t419 * t166 + t418 * t167;
t145 = -pkin(6) * t176 + t424 * t170 - t421 * t171;
t144 = -t418 * t153 + t419 * t154;
t143 = t419 * t153 + t418 * t154;
t142 = -pkin(2) * t191 + pkin(6) * t177 + t421 * t170 + t424 * t171;
t141 = -pkin(5) * t166 - t422 * t152 + t425 * t161;
t140 = pkin(1) * t211 + pkin(5) * t167 + t425 * t152 + t422 * t161;
t139 = -pkin(5) * t153 - t422 * t142 + t425 * t145;
t138 = -pkin(1) * t191 + pkin(5) * t154 + t425 * t142 + t422 * t145;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t348, 0, 0, 0, 0, 0, 0, -t502, -t332, 0, t229, 0, 0, 0, 0, 0, 0, -t512, t271, 0, t165, 0, 0, 0, 0, 0, 0, t197, t199, t217, t147, 0, 0, 0, 0, 0, 0, t197, t217, -t199, t144; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t347, 0, 0, 0, 0, 0, 0, t332, -t502, 0, -t520, 0, 0, 0, 0, 0, 0, -t271, -t512, 0, -t528, 0, 0, 0, 0, 0, 0, t194, -t195, t216, t146, 0, 0, 0, 0, 0, 0, t194, t216, t195, t143; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t417, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t417, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t417, 0, 0, 0, 0, 0, 0, t333, -t335, 0, -t211, 0, 0, 0, 0, 0, 0, t333, 0, t335, t191; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t482, -t480, -t347, -qJ(1) * t347, 0, 0, t332, 0, -t502, 0, t519, t510, t520, pkin(5) * t481 + qJ(1) * t520 - t418 * t280, 0, 0, -t271, 0, -t512, 0, t535, t534, t528, qJ(1) * t528 - t418 * t162 + t419 * t163, t207, t538, t209, t206, t536, t235, -t418 * t157 + t419 * t159 - t490, -t418 * t158 + t419 * t160 + t544, -t418 * t168 + t419 * t169 - t489, -qJ(1) * t146 - t418 * t140 + t419 * t141, t207, t209, -t538, t235, -t536, t206, -t418 * t149 + t419 * t151 - t490, -t418 * t155 + t419 * t156 - t489, -t418 * t148 + t419 * t150 - t544, -qJ(1) * t143 - t418 * t138 + t419 * t139; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t480, -t482, t348, qJ(1) * t348, 0, 0, t502, 0, t332, 0, -t510, t519, t229, pkin(5) * t485 + qJ(1) * t229 + t419 * t280, 0, 0, t512, 0, -t271, 0, -t534, t535, t165, qJ(1) * t165 + t419 * t162 + t418 * t163, t205, -t539, t208, t204, -t537, t234, t419 * t157 + t418 * t159 + t193, t419 * t158 + t418 * t160 + t543, t419 * t168 + t418 * t169 + t215, qJ(1) * t147 + t419 * t140 + t418 * t141, t205, t208, t539, t234, t537, t204, t419 * t149 + t418 * t151 + t193, t419 * t155 + t418 * t156 + t215, t419 * t148 + t418 * t150 - t543, qJ(1) * t144 + t419 * t138 + t418 * t139; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t393, t394, 0, 0, 0, 0, 0, 0, 0, qJDD(2), pkin(1) * t392 + t433, -pkin(1) * t391 + t458, 0, -pkin(1) * t289, 0, 0, 0, 0, 0, t412, -pkin(1) * t321 - pkin(2) * t381 - t281, -pkin(1) * t316 - pkin(2) * t378 - t282, 0, -pkin(1) * t186 - pkin(2) * t223, t327, t434, t334, t326, t501, 0, t441 - t467, -pkin(3) * t371 + t479 - t541, t212 + t440, pkin(1) * t166 + pkin(2) * t189 - pkin(3) * t277 + pkin(7) * t212, t327, t334, -t434, 0, -t501, t326, qJ(5) * t478 + t423 * t219 + t441, t423 * t226 + t420 * t227 + t440, t420 * t218 + (pkin(3) + t496) * t371 + t541, pkin(1) * t153 + pkin(2) * t176 + pkin(7) * t192 + (-pkin(3) + t438) * t225;];
tauB_reg = t1;

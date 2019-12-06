% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RRRPR3
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
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% tauc [5x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:43
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RRRPR3_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR3_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR3_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR3_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPR3_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPR3_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRPR3_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:42:18
% EndTime: 2019-12-05 18:42:52
% DurationCPUTime: 26.82s
% Computational Cost: add. (22112->726), mult. (16495->905), div. (0->0), fcn. (12844->10), ass. (0->446)
t388 = qJ(3) + pkin(9);
t377 = sin(t388);
t378 = cos(t388);
t291 = Icges(5,5) * t378 - Icges(5,6) * t377;
t391 = sin(qJ(3));
t393 = cos(qJ(3));
t347 = Icges(4,5) * t393 - Icges(4,6) * t391;
t778 = t291 + t347;
t784 = Icges(4,3) + Icges(5,3);
t389 = qJ(1) + qJ(2);
t380 = sin(t389);
t782 = t778 * t380;
t381 = cos(t389);
t781 = t784 * t381 - t782;
t605 = t378 * t381;
t607 = t377 * t381;
t210 = Icges(5,4) * t605 - Icges(5,2) * t607 + Icges(5,6) * t380;
t334 = Icges(5,4) * t607;
t212 = Icges(5,1) * t605 + Icges(5,5) * t380 - t334;
t599 = t381 * t393;
t600 = t381 * t391;
t230 = Icges(4,4) * t599 - Icges(4,2) * t600 + Icges(4,6) * t380;
t361 = Icges(4,4) * t600;
t232 = Icges(4,1) * t599 + Icges(4,5) * t380 - t361;
t780 = t210 * t377 - t212 * t378 + t230 * t391 - t232 * t393;
t760 = -Icges(4,5) * t599 - Icges(5,5) * t605 + Icges(4,6) * t600 + Icges(5,6) * t607 - t380 * t784;
t290 = Icges(5,5) * t377 + Icges(5,6) * t378;
t346 = Icges(4,5) * t391 + Icges(4,6) * t393;
t779 = t290 + t346;
t649 = Icges(5,4) * t377;
t292 = Icges(5,2) * t378 + t649;
t650 = Icges(4,4) * t391;
t348 = Icges(4,2) * t393 + t650;
t382 = Icges(4,4) * t393;
t719 = Icges(4,1) * t391 + t382;
t366 = Icges(5,4) * t378;
t720 = Icges(5,1) * t377 + t366;
t777 = t292 * t377 + t348 * t391 - t378 * t720 - t393 * t719;
t608 = t377 * t380;
t333 = Icges(5,4) * t608;
t606 = t378 * t380;
t211 = -Icges(5,1) * t606 + Icges(5,5) * t381 + t333;
t603 = t380 * t391;
t360 = Icges(4,4) * t603;
t602 = t380 * t393;
t231 = -Icges(4,1) * t602 + Icges(4,5) * t381 + t360;
t735 = -t211 * t605 - t231 * t599 - t380 * t781;
t481 = -Icges(5,2) * t377 + t366;
t450 = t481 * t380;
t209 = Icges(5,6) * t381 - t450;
t482 = -Icges(4,2) * t391 + t382;
t451 = t482 * t380;
t229 = Icges(4,6) * t381 - t451;
t734 = t209 * t608 + t229 * t603 + t381 * t781;
t776 = -t211 * t378 - t231 * t393;
t732 = t209 * t377 + t229 * t391;
t775 = t780 * t381;
t774 = -t211 * t606 - t231 * t602 + t734;
t743 = t210 * t608 - t212 * t606 + t230 * t603 - t232 * t602 - t760 * t381;
t773 = -t209 * t607 - t229 * t600 - t735;
t763 = -t760 * t380 - t775;
t740 = -t209 * t378 - t211 * t377 - t229 * t393 - t231 * t391;
t739 = t210 * t378 + t212 * t377 + t230 * t393 + t232 * t391;
t615 = t346 * t381;
t618 = t290 * t381;
t772 = t777 * t380 + t615 + t618;
t241 = t290 * t380;
t256 = t346 * t380;
t771 = -t777 * t381 + t241 + t256;
t769 = t732 + t776;
t387 = qJD(1) + qJD(2);
t768 = t779 * qJD(3) - t387 * t784;
t767 = qJD(3) * t778 + t777 * t387;
t379 = qJ(5) + t388;
t372 = sin(t379);
t373 = cos(t379);
t278 = rSges(6,1) * t372 + rSges(6,2) * t373;
t267 = t481 * qJD(3);
t295 = Icges(5,1) * t378 - t649;
t268 = t295 * qJD(3);
t306 = t482 * qJD(3);
t351 = Icges(4,1) * t393 - t650;
t307 = t351 * qJD(3);
t766 = t267 * t377 - t268 * t378 + t306 * t391 - t307 * t393 - t779 * t387 + (t292 * t378 + t348 * t393 + t377 * t720 + t391 * t719) * qJD(3);
t660 = rSges(5,2) * t378;
t762 = t772 * t387;
t384 = t393 * pkin(3);
t666 = t384 + pkin(2);
t671 = pkin(4) * t378;
t323 = t666 + t671;
t264 = t381 * t323;
t337 = t381 * t666;
t390 = -qJ(4) - pkin(7);
t385 = -pkin(8) + t390;
t564 = t390 - t385;
t167 = -t380 * t564 - t264 + t337;
t611 = t372 * t381;
t320 = rSges(6,2) * t611;
t609 = t373 * t381;
t462 = -rSges(6,1) * t609 - rSges(6,3) * t380;
t200 = -t320 - t462;
t761 = t167 - t200;
t601 = t381 * t387;
t759 = t768 * t380 + t769 * t387 - t601 * t778;
t758 = (t780 - t782) * t387 - t768 * t381;
t757 = (t763 * t380 + t773 * t381) * qJD(3);
t756 = (t743 * t380 + t774 * t381) * qJD(3);
t755 = t771 * t387;
t703 = -Icges(5,6) * t387 + qJD(3) * t292;
t140 = -t381 * t703 - t387 * t450;
t454 = t387 * t295;
t698 = -Icges(5,5) * t387 + qJD(3) * t720;
t142 = -t380 * t454 - t381 * t698;
t701 = -Icges(4,6) * t387 + qJD(3) * t348;
t156 = -t381 * t701 - t387 * t451;
t452 = t351 * t387;
t697 = -Icges(4,5) * t387 + qJD(3) * t719;
t158 = -t380 * t452 - t381 * t697;
t754 = t739 * qJD(3) + t140 * t377 - t142 * t378 + t156 * t391 - t158 * t393 + t760 * t387;
t141 = t380 * t703 - t481 * t601;
t143 = t380 * t698 - t381 * t454;
t157 = t380 * t701 - t482 * t601;
t159 = t380 * t697 - t381 * t452;
t753 = t740 * qJD(3) - t141 * t377 + t143 * t378 - t157 * t391 + t159 * t393 + t387 * t781;
t612 = t372 * t380;
t314 = Icges(6,4) * t612;
t610 = t373 * t380;
t197 = -Icges(6,1) * t610 + Icges(6,5) * t381 + t314;
t315 = Icges(6,4) * t611;
t198 = Icges(6,1) * t609 + Icges(6,5) * t380 - t315;
t386 = qJD(3) + qJD(5);
t299 = t380 * t386;
t300 = t381 * t386;
t365 = Icges(6,4) * t373;
t480 = -Icges(6,2) * t372 + t365;
t721 = Icges(6,1) * t372 + t365;
t731 = t721 + t480;
t411 = t299 * (-Icges(6,2) * t609 + t198 - t315) + t300 * (Icges(6,2) * t610 + t197 + t314) + t387 * t731;
t195 = Icges(6,6) * t381 - t380 * t480;
t196 = Icges(6,4) * t609 - Icges(6,2) * t611 + Icges(6,6) * t380;
t648 = Icges(6,4) * t372;
t274 = Icges(6,2) * t373 + t648;
t277 = Icges(6,1) * t373 - t648;
t687 = t299 * (t381 * t721 + t196) + t300 * (-t380 * t721 + t195) + t387 * (t274 - t277);
t752 = t411 * t372 + t373 * t687;
t422 = t380 * (-Icges(5,2) * t605 + t212 - t334) + t381 * (Icges(5,2) * t606 + t211 + t333);
t694 = t209 * t381 + t210 * t380;
t751 = -t422 * t377 - t378 * t694;
t750 = 0.2e1 * qJD(3);
t749 = t756 + t762;
t748 = t755 + t757;
t747 = -t769 * qJD(3) + t141 * t378 + t143 * t377 + t157 * t393 + t159 * t391;
t746 = -qJD(3) * t780 + t140 * t378 + t142 * t377 + t156 * t393 + t158 * t391;
t745 = t380 * t767 - t766 * t381;
t744 = t766 * t380 + t767 * t381;
t566 = t719 + t482;
t567 = t348 - t351;
t742 = (t391 * t566 + t393 * t567) * t387;
t571 = t720 + t481;
t572 = t292 - t295;
t741 = (t377 * t571 + t378 * t572) * t387;
t194 = Icges(6,5) * t609 - Icges(6,6) * t611 + Icges(6,3) * t380;
t738 = t381 * t194 - t198 * t610;
t489 = rSges(3,1) * t380 + rSges(3,2) * t381;
t253 = t489 * t387;
t392 = sin(qJ(1));
t656 = pkin(1) * qJD(1);
t552 = t392 * t656;
t235 = t253 + t552;
t561 = qJD(3) * t391;
t525 = t380 * t561;
t342 = pkin(3) * t525;
t368 = qJD(4) * t381;
t568 = t342 + t368;
t737 = t760 + t776;
t736 = t278 * t386;
t659 = rSges(6,2) * t372;
t662 = rSges(6,1) * t373;
t279 = -t659 + t662;
t240 = t279 * t386;
t733 = t240 * t380 - t299 * t279;
t664 = rSges(5,1) * t378;
t298 = -rSges(5,2) * t377 + t664;
t271 = t298 * qJD(3);
t667 = pkin(7) + t390;
t728 = t381 * t667;
t672 = pkin(4) * t377;
t673 = pkin(3) * t391;
t496 = t672 + t673;
t296 = t496 * qJD(3);
t598 = t385 * t387;
t321 = t380 * t598;
t597 = t387 * t390;
t328 = t380 * t597;
t557 = -t323 + t666;
t107 = t380 * t296 + t557 * t601 + t321 - t328 - t342;
t540 = t387 * t320 + t380 * t736;
t125 = t387 * t462 + t540;
t725 = t107 + t125;
t724 = t761 * t387;
t674 = pkin(2) * t381;
t199 = t380 * t667 - t337 + t674;
t182 = t387 * t199;
t670 = pkin(7) * t380;
t304 = t670 + t674;
t270 = t387 * t304;
t723 = t182 - t270;
t722 = rSges(5,2) * t608 + t381 * rSges(5,3);
t565 = rSges(4,2) * t603 + t381 * rSges(4,3);
t420 = t380 * t557 + t381 * t564;
t458 = t380 * t384 + t728;
t718 = (-t420 + t458) * t380;
t563 = qJD(3) * t380;
t529 = t377 * t563;
t319 = pkin(4) * t529;
t466 = t278 * t299 + t319 + t568;
t717 = t466 + t723 + t724 - t321 - t368 - t540;
t273 = Icges(6,5) * t373 - Icges(6,6) * t372;
t193 = Icges(6,3) * t381 - t273 * t380;
t595 = -t380 * t193 - t197 * t609;
t716 = t595 - t738;
t661 = rSges(4,2) * t391;
t665 = rSges(4,1) * t393;
t488 = -t661 + t665;
t324 = t488 * qJD(3);
t354 = rSges(4,1) * t391 + rSges(4,2) * t393;
t604 = t380 * t387;
t715 = -t324 * t381 + t354 * t604;
t620 = t274 * t386;
t714 = -Icges(6,6) * t387 + t620;
t363 = rSges(4,2) * t600;
t555 = rSges(4,1) * t599;
t464 = -rSges(4,3) * t380 - t555;
t233 = -t363 - t464;
t216 = t387 * t233;
t560 = qJD(3) * t393;
t533 = rSges(4,1) * t525 + (t380 * t560 + t387 * t600) * rSges(4,2);
t713 = -t216 - t270 - t533;
t376 = t381 ^ 2;
t712 = (-t380 ^ 2 - t376) * t673;
t272 = Icges(6,5) * t372 + Icges(6,6) * t373;
t711 = -Icges(6,3) * t387 + t272 * t386;
t655 = t381 * rSges(6,3);
t710 = t279 * t380 - t655;
t709 = -Icges(6,5) * t387 + t386 * t721;
t336 = rSges(5,2) * t607;
t548 = rSges(5,1) * t605;
t463 = -t380 * rSges(5,3) - t548;
t214 = -t336 - t463;
t189 = t387 * t214;
t532 = t328 + t568;
t537 = rSges(5,1) * t529 + t387 * t336 + t563 * t660;
t696 = -t189 - t532 - t537 + t723;
t578 = -Icges(4,2) * t599 + t232 - t361;
t580 = t381 * t719 + t230;
t692 = t391 * t578 + t393 * t580;
t579 = Icges(4,2) * t602 + t231 + t360;
t581 = -t380 * t719 + t229;
t691 = -t391 * t579 - t393 * t581;
t504 = -t277 * t386 + t620;
t505 = t731 * t386;
t690 = -t272 * t387 + t372 * t505 + t373 * t504;
t453 = t387 * t277;
t509 = t195 * t386 - t380 * t709 + t381 * t453;
t449 = t480 * t387;
t511 = t197 * t386 + t380 * t714 - t381 * t449;
t689 = -t193 * t387 + t372 * t511 + t373 * t509;
t510 = t196 * t386 + t380 * t453 + t381 * t709;
t512 = t198 * t386 - t380 * t449 - t381 * t714;
t688 = -t194 * t387 + t372 * t512 + t373 * t510;
t249 = t386 * t604;
t686 = -t249 / 0.2e1;
t250 = t387 * t300;
t685 = t250 / 0.2e1;
t684 = -t299 / 0.2e1;
t683 = t299 / 0.2e1;
t682 = -t300 / 0.2e1;
t681 = t300 / 0.2e1;
t680 = t380 / 0.2e1;
t679 = t381 / 0.2e1;
t678 = -t387 / 0.2e1;
t677 = t387 / 0.2e1;
t676 = -rSges(4,3) - pkin(7);
t394 = cos(qJ(1));
t675 = pkin(1) * t394;
t669 = t381 * pkin(7);
t668 = t392 * pkin(1);
t657 = rSges(6,3) * t387;
t654 = rSges(6,3) - t385;
t219 = t272 * t380;
t474 = t274 * t372 - t373 * t721;
t115 = -t381 * t474 + t219;
t635 = t115 * t387;
t280 = t354 * t563;
t550 = t394 * t656;
t497 = t280 - t550;
t135 = (-t233 - t304) * t387 + t497;
t633 = t135 * t380;
t630 = t194 * t380;
t623 = t272 * t381;
t621 = t273 * t387;
t225 = t278 * t380;
t619 = t278 * t381;
t617 = t291 * t387;
t297 = rSges(5,1) * t377 + t660;
t247 = t297 * t380;
t614 = t347 * t387;
t262 = t354 * t380;
t613 = t354 * t381;
t596 = t381 * t193 + t195 * t612;
t586 = t199 - t304;
t577 = -t323 * t604 - t381 * t598;
t576 = -t264 + t320;
t573 = t381 * t597 + t666 * t604;
t562 = qJD(3) * t381;
t367 = qJD(4) * t380;
t396 = qJD(1) ^ 2;
t559 = t396 * t675;
t395 = qJD(3) ^ 2;
t558 = t395 * t384;
t364 = pkin(3) * t603;
t556 = rSges(4,1) * t602;
t551 = pkin(3) * t561;
t549 = rSges(5,1) * t606;
t547 = t195 * t611;
t545 = t297 * t604;
t181 = t387 * t458;
t269 = t387 * (-t380 * pkin(2) + t669);
t542 = t181 - t269 - t367;
t541 = t297 * t563 + t568;
t539 = -t381 * t736 - t604 * t662;
t528 = t377 * t562;
t538 = -rSges(5,1) * t528 - t387 * t549 - t562 * t660;
t374 = t396 * t668;
t523 = t381 * t561;
t503 = pkin(3) * t523;
t536 = t380 * t558 + t387 * t503 + t374;
t534 = -t381 * rSges(4,2) * t560 - rSges(4,1) * t523 - t387 * t556;
t531 = t367 - t573;
t530 = t354 * t562;
t526 = t387 * t563;
t522 = -t604 / 0.2e1;
t521 = t601 / 0.2e1;
t520 = -pkin(2) - t665;
t519 = -t563 / 0.2e1;
t517 = -t562 / 0.2e1;
t516 = t562 / 0.2e1;
t515 = t297 + t673;
t514 = t278 + t672;
t303 = rSges(3,1) * t381 - t380 * rSges(3,2);
t513 = t384 + t664;
t507 = t387 * t225 - t279 * t300;
t353 = pkin(2) * t604;
t502 = t353 - t534;
t499 = -t387 ^ 2 * t304 - t559;
t498 = t565 + t669;
t254 = -rSges(3,1) * t601 + rSges(3,2) * t604;
t494 = -t381 * t390 + t722;
t148 = t353 + (-pkin(7) * t387 - t551) * t381 + t531;
t255 = pkin(7) * t601 - t353;
t493 = -t148 - t255 - t367;
t492 = t514 * t387;
t175 = t199 * t562;
t45 = qJD(3) * t718 - t167 * t562 + t300 * t200 + t299 * t710 - t175;
t487 = t45 * (-t225 * t299 - t300 * t619);
t117 = t196 * t373 + t198 * t372;
t479 = t196 * t372 - t198 * t373;
t469 = t556 - t565;
t468 = t336 - t337 - t548;
t215 = t387 * t469;
t465 = t215 - t269 + t530;
t460 = -t367 - t539 - t577;
t236 = -t303 * t387 - t550;
t457 = t541 - t550;
t445 = t363 - t555 - t674;
t188 = t387 * (-t549 + t722);
t149 = (-t381 * t384 + t670) * t387 + t532;
t442 = t499 + (t149 + t568) * t387;
t437 = t219 * t300 - t299 * t623 + t621;
t433 = t381 * t188;
t432 = -t380 * t621 - t381 * t711 + t387 * t479;
t431 = -t381 * t621 + t711 * t380 + (t195 * t372 - t197 * t373) * t387;
t426 = t273 * t386 + t387 * t474;
t421 = t381 * t181;
t116 = t195 * t373 + t197 * t372;
t16 = t431 * t380 - t381 * t689;
t17 = t432 * t380 - t381 * t688;
t18 = t380 * t689 + t431 * t381;
t19 = t380 * t688 + t432 * t381;
t114 = t380 * t474 + t623;
t110 = t114 * t387;
t88 = -t197 * t610 + t596;
t169 = t196 * t612;
t89 = t169 + t738;
t36 = t299 * t89 + t300 * t88 + t110;
t90 = -t547 - t595;
t91 = -t381 * t479 + t630;
t37 = t299 * t91 + t300 * t90 + t635;
t54 = t426 * t380 - t381 * t690;
t55 = t380 * t690 + t426 * t381;
t56 = -t372 * t509 + t373 * t511;
t57 = -t372 * t510 + t373 * t512;
t417 = (t16 * t300 + t17 * t299 - t249 * t90 + t250 * t91 + t387 * t54) * t680 + ((t117 * t387 + t56) * t381 + (-t116 * t387 + t57) * t380) * t677 + (t437 * t380 - t381 * t752) * t684 + (t380 * t752 + t437 * t381) * t682 + (t18 * t300 + t19 * t299 - t249 * t88 + t250 * t89 + t387 * t55) * t679 + (-t372 * t687 + t373 * t411) * t678 + ((t387 * t91 + t16) * t381 + (-t387 * t90 + t17) * t380) * t683 + t36 * t522 + t37 * t521 + ((t387 * t89 + t18) * t381 + (-t387 * t88 + t19) * t380) * t681 + (t380 * t89 + t381 * t88) * t686 + (t380 * t91 + t381 * t90) * t685;
t416 = t503 - t531 - t538;
t165 = t387 * t420;
t414 = t515 * t562 - t188 + t542;
t183 = t387 * t710;
t413 = t381 * t165;
t147 = (t381 * t233 + t380 * t469) * qJD(3);
t406 = t196 * t611 - t630 + (-t197 * t380 - t198 * t381) * t373 + t596;
t405 = t278 * t300 + t496 * t562 - t165 + t183 + t542;
t404 = t381 * t214 + (t380 * t513 - t722 + t728) * t380;
t402 = t381 * t148 + t421 + (-t149 + t182) * t380;
t401 = qJD(3) * t421 + t148 * t562 - t149 * t563 + t199 * t526;
t134 = t465 + t552;
t160 = t387 * t565 + t534;
t85 = t324 * t563 + t374 + (-t160 - t255 + t530) * t387;
t161 = t387 * t464 + t533;
t86 = qJD(3) * t715 + t161 * t387 + t499;
t400 = (t520 * t86 + t676 * t85) * t380 + ((-t134 * t676 - t135 * t661) * t380 + (-t134 * t520 + t135 * t676) * t381) * t387;
t145 = t387 * t722 + t538;
t58 = t271 * t563 + (t297 * t562 - t145 + t493) * t387 + t536;
t146 = t387 * t463 + t537;
t59 = -t381 * t558 + t146 * t387 + (-t271 * t381 + t545) * qJD(3) + t442;
t83 = t414 + t552;
t84 = (-t214 + t586) * t387 + t457;
t399 = (t58 * (-rSges(5,3) + t390) + t59 * (-pkin(2) - t513)) * t380 + (-t84 * t722 - t83 * (-t337 + t463)) * t387;
t398 = (t110 + (t91 + t406) * t300 + (t169 - t90 - t547 - t716) * t299) * t684 + (t114 + t116) * t686 + (t115 + t117) * t685 + (-t635 + (t89 + (t195 * t381 - t196 * t380) * t372 + t716) * t300 + (-t88 + t406) * t299 + t37) * t682 + (t56 + t55) * t681 + (((t734 + t763 + t775) * t381 + ((-t732 + t737) * t381 - t735 + t743 - t773) * t380) * qJD(3) + t762) * t519 + (t57 + t54 + t36) * t683 + ((((t732 + t760) * t381 + t735 + t743) * t381 + (t380 * t737 + t734 - t774) * t380) * qJD(3) + t748 - t755) * t517 + (t744 + t747) * t516 + (t745 + t746 + t749) * t563 / 0.2e1 + (t267 * t378 + t268 * t377 + t306 * t393 + t307 * t391 - t372 * t504 + t373 * t505 - t777 * qJD(3) + (-t740 + t772) * t519 + (t739 + t771) * t516) * t387;
t106 = (-t296 + t551) * t381 + t573 + t577;
t124 = (rSges(6,2) * t612 + t655) * t387 + t539;
t25 = pkin(4) * t395 * t606 + t240 * t299 + t250 * t278 + (pkin(4) * t528 - t106 - t124 + t493) * t387 + t536;
t26 = -t240 * t300 + t249 * t278 + (-t384 - t671) * t395 * t381 + (t319 + t725) * t387 + t442;
t69 = t405 + t552;
t70 = -t550 + (t586 + t761) * t387 + t466;
t397 = (-t25 * t654 - t70 * t387 * t659 + t26 * (-t279 - t323) - t69 * (t296 - t657)) * t380 + (-t25 * t662 + t70 * t296 + t26 * t654 + (-t70 * rSges(6,3) - t69 * (-t323 - t662)) * t387) * t381;
t248 = t297 * t381;
t218 = (-t496 + t673) * t381;
t217 = t380 * t496 - t364;
t203 = t254 * t387 - t559;
t202 = t253 * t387 + t374;
t180 = t381 * t200;
t179 = t381 * t199;
t113 = t381 * t124;
t80 = qJD(3) * t404 - t175;
t7 = -qJD(3) * t413 + t106 * t562 - t107 * t563 + t300 * t124 - t299 * t125 + t167 * t526 - t249 * t200 + t250 * t710 + t401;
t1 = [m(3) * (t202 * (-t303 - t675) + t203 * (-t489 - t668) + (t236 - t254 + t550) * t235) + t398 + (t25 * (t576 - t675) + t70 * (t460 + t552) - t26 * t668 + t397 + (-t70 + t717) * t69) * m(6) + (t58 * (t468 - t675) + t84 * (t416 + t552) + t59 * (t494 - t668) + t399 + (t457 - t84 + t550 + t696) * t83) * m(5) + (t85 * (t445 - t675) + t135 * (t502 + t552) + t86 * (t498 - t668) + t400 + (-t135 + t497 + t550 + t713) * t134) * m(4); t398 + (t25 * t576 + t397 + (-t405 + t460) * t70 + t717 * t69) * m(6) + (t58 * t468 + t59 * t494 + t399 + (-t414 + t416) * t84 + (t541 + t696) * t83) * m(5) + (t85 * t445 + t86 * t498 + t400 + (-t465 + t502) * t135 + (t280 + t713) * t134) * m(4) + (-(t235 * t303 + t236 * t489) * t387 - t202 * t303 - t203 * t489 - t235 * t254 + t236 * t253) * m(3); t417 + ((-t377 * t572 + t378 * t571 - t391 * t567 + t393 * t566) * t387 + ((t380 * t578 + t381 * t579) * t393 + (-t380 * t580 - t381 * t581) * t391 - t377 * t694 + t378 * t422) * qJD(3)) * t678 + ((t387 * t739 + t747) * t381 + (t387 * t740 + t746) * t380) * t677 + ((-t563 * t615 + t614) * t380 + (-t742 + (t691 * t381 + (t256 - t692) * t380) * qJD(3)) * t381 + (-t563 * t618 + t617) * t380 + (-t741 + (t241 * t380 + t751) * qJD(3)) * t381) * t519 + ((t256 * t562 + t614) * t381 + (t742 + (t692 * t380 + (-t615 - t691) * t381) * qJD(3)) * t380 + (t241 * t562 + t617) * t381 + (t741 + (-t381 * t618 - t751) * qJD(3)) * t380) * t517 + (t7 * (-t179 + t180 + t718) + t25 * t364 + (-t7 * t167 + t26 * (-t278 - t496) + t69 * t240) * t381 + (t25 * t514 - t69 * t492 + t7 * t710) * t380 - t487 + t69 * (t217 * t387 + t507) + (t492 * t381 - (-t218 + t619) * t387 + t733) * t70 + (t113 + t402 - t413 + (t106 + t183) * t381 + (t724 - t725) * t380 - (-t217 * t380 + t218 * t381 + t712) * qJD(3)) * t45) * m(6) + (t83 * t247 * t387 - (t80 * (-t247 * t380 + t712) + (-t80 * t248 - t83 * (-t298 - t384)) * t381) * qJD(3) + (-qJD(3) * t433 + t145 * t562 - t146 * t563 - t214 * t526 + t401) * (-t179 + t404) + t80 * (t381 * t145 + t402 - t433 + (-t146 - t189) * t380) + t58 * (t364 + t247) - t59 * t515 * t381 - t83 * (t545 + (-pkin(3) * t560 - t271) * t381) + (-t248 * t387 + t297 * t601) * t84) * m(5) + (-(-t134 * t262 + t135 * t613) * t387 - (t147 * (-t262 * t380 - t381 * t613) + (t134 * t381 + t633) * t488) * qJD(3) + t135 * t354 * t601 + 0.2e1 * t147 * ((-t161 - t216) * t380 + (t160 + t215) * t381) + t262 * t85 + t324 * t633 - t613 * t86 - t715 * t134) * m(4) + (t745 * t387 + ((t381 * t753 + t763 * t387) * t381 + (t758 * t380 - t773 * t387 + (-t754 + t759) * t381) * t380) * t750) * t680 + (t744 * t387 + ((t381 * t759 + t743 * t387) * t381 + (t754 * t380 - t774 * t387 + (-t753 + t758) * t381) * t380) * t750) * t679 + (t749 + t756) * t522 + (t748 + t757) * t521; m(5) * (t380 * t59 + t381 * t58) + m(6) * (t25 * t381 + t26 * t380); t417 + (-t487 + t7 * (t380 * t710 + t180) + t45 * (-t376 * t657 + t113 + (-t125 + (t279 * t381 - t200) * t387) * t380) + t25 * t225 - t26 * t619 + (t278 * t601 - t387 * t619 + t733) * t70 + (t240 * t381 - t278 * t604 + t507) * t69) * m(6);];
tauc = t1(:);

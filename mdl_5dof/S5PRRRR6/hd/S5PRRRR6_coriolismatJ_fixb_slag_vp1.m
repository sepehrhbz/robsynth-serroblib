% Calculate matrix of centrifugal and coriolis load on the joints for
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
% Cq [5x5]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:10
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5PRRRR6_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR6_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR6_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRR6_coriolismatJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRRR6_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRRR6_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRRRR6_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:09:36
% EndTime: 2019-12-05 17:10:04
% DurationCPUTime: 18.88s
% Computational Cost: add. (131259->765), mult. (131494->1085), div. (0->0), fcn. (142443->10), ass. (0->478)
t520 = sin(pkin(9));
t516 = t520 ^ 2;
t521 = cos(pkin(9));
t517 = t521 ^ 2;
t782 = t516 + t517;
t519 = qJ(2) + qJ(3);
t513 = sin(t519);
t515 = cos(t519);
t524 = cos(qJ(4));
t716 = pkin(4) * t524;
t424 = -pkin(8) * t515 + t513 * t716;
t387 = t424 * t520;
t518 = qJ(4) + qJ(5);
t512 = sin(t518);
t514 = cos(t518);
t591 = rSges(6,1) * t514 - rSges(6,2) * t512;
t437 = -rSges(6,3) * t515 + t513 * t591;
t410 = t437 * t521;
t522 = sin(qJ(4));
t592 = rSges(5,1) * t524 - rSges(5,2) * t522;
t447 = -rSges(5,3) * t515 + t513 * t592;
t422 = t447 * t520;
t423 = t447 * t521;
t501 = rSges(4,1) * t513 + rSges(4,2) * t515;
t381 = t782 * t501;
t646 = t424 * t521 + t410;
t577 = -Icges(4,5) * t513 - Icges(4,6) * t515;
t523 = sin(qJ(2));
t525 = cos(qJ(2));
t781 = 0.2e1 * (Icges(3,1) - Icges(3,2)) * t525 * t523 + (-0.2e1 * t523 ^ 2 + 0.2e1 * t525 ^ 2) * Icges(3,4);
t755 = m(5) / 0.2e1;
t754 = m(6) / 0.2e1;
t735 = t513 / 0.2e1;
t734 = -t515 / 0.2e1;
t733 = t520 / 0.2e1;
t732 = -t521 / 0.2e1;
t578 = -Icges(3,5) * t523 - Icges(3,6) * t525;
t495 = t578 * t520;
t496 = t578 * t521;
t670 = t515 * t520;
t469 = -t512 * t670 - t514 * t521;
t662 = t521 * t512;
t470 = t514 * t670 - t662;
t672 = t513 * t520;
t346 = rSges(6,1) * t470 + rSges(6,2) * t469 + rSges(6,3) * t672;
t661 = t521 * t522;
t425 = pkin(8) * t513 + t515 * t716;
t680 = t425 * t520;
t361 = -pkin(4) * t661 + t680;
t780 = t346 + t361;
t471 = t514 * t520 - t515 * t662;
t669 = t515 * t521;
t472 = t512 * t520 + t514 * t669;
t671 = t513 * t521;
t347 = rSges(6,1) * t472 + rSges(6,2) * t471 + rSges(6,3) * t671;
t666 = t520 * t522;
t630 = pkin(4) * t666;
t362 = t425 * t521 + t630;
t779 = t347 + t362;
t601 = t779 * t515;
t409 = t437 * t520;
t657 = t346 * t669 - t409 * t671;
t683 = t361 * t515;
t168 = (-t387 * t513 + t683) * t521 + (t513 * t646 - t601) * t520 + t657;
t438 = rSges(6,3) * t513 + t515 * t591;
t616 = -t409 * t515 + t437 * t670 + t438 * t672;
t185 = (t680 - t780) * t513 + t616;
t335 = t513 * t347;
t645 = -t424 - t437;
t600 = t645 * t521;
t644 = -t425 - t438;
t186 = t335 + (t521 * t644 + t362) * t513 + (t600 + t646) * t515;
t504 = pkin(3) * t515 + pkin(7) * t513;
t633 = t782 * t504;
t224 = t520 * t780 + t521 * t779 + t633;
t660 = t521 * t524;
t491 = -t515 * t666 - t660;
t665 = t520 * t524;
t492 = t515 * t665 - t661;
t369 = rSges(5,1) * t492 + rSges(5,2) * t491 + rSges(5,3) * t672;
t493 = -t515 * t661 + t665;
t494 = t515 * t660 + t666;
t370 = rSges(5,1) * t494 + rSges(5,2) * t493 + rSges(5,3) * t671;
t568 = t369 * t521 - t370 * t520;
t251 = t568 * t515 + (-t422 * t521 + t423 * t520) * t513;
t448 = rSges(5,3) * t513 + t515 * t592;
t279 = (t448 * t520 - t369) * t513;
t280 = (-t448 * t521 + t370) * t513;
t282 = t369 * t520 + t370 * t521 + t633;
t503 = pkin(3) * t513 - pkin(7) * t515;
t615 = -t503 + t645;
t325 = t615 * t520;
t327 = t615 * t521;
t638 = -t447 - t503;
t382 = t638 * t520;
t384 = t638 * t521;
t634 = t782 * t503;
t771 = -t422 * t520 - t423 * t521;
t300 = -t634 + t771;
t302 = t568 * t513;
t322 = t369 * t515 + t447 * t672;
t323 = -t370 * t515 - t447 * t671;
t637 = -t448 - t504;
t383 = t637 * t520;
t385 = t637 * t521;
t617 = t300 * t302 + t322 * t385 + t323 * t383;
t333 = t346 * t671;
t230 = t333 + (t361 * t521 - t520 * t779) * t513;
t764 = -t646 * t521 + (-t387 - t409) * t520;
t244 = -t634 + t764;
t309 = t346 * t515 + t437 * t672;
t254 = t424 * t672 + t309 + t683;
t255 = t513 * t600 - t601;
t614 = -t504 + t644;
t326 = t614 * t520;
t328 = t614 * t521;
t624 = t230 * t244 + t254 * t328 + t255 * t326;
t563 = (t168 * t224 + t185 * t327 + t186 * t325 + t624) * t754 + (t251 * t282 + t279 * t384 + t280 * t382 + t617) * t755;
t719 = pkin(2) * t525;
t641 = t782 * t719;
t248 = t282 + t641;
t720 = pkin(2) * t523;
t603 = -t503 - t720;
t594 = -t447 + t603;
t352 = t594 * t520;
t354 = t594 * t521;
t622 = t248 * t251 + t279 * t354 + t280 * t352;
t202 = t224 + t641;
t565 = t603 + t645;
t318 = t565 * t520;
t320 = t565 * t521;
t626 = t168 * t202 + t185 * t320 + t186 * t318;
t713 = (t624 + t626) * t754 + (t617 + t622) * t755;
t774 = t713 - t563;
t377 = rSges(6,1) * t469 - rSges(6,2) * t470;
t349 = t377 * t671;
t378 = rSges(6,1) * t471 - rSges(6,2) * t472;
t305 = -t378 * t672 + t349;
t468 = (-rSges(6,1) * t512 - rSges(6,2) * t514) * t513;
t329 = t377 * t515 + t468 * t672;
t330 = -t378 * t515 - t468 * t671;
t371 = Icges(6,5) * t469 - Icges(6,6) * t470;
t457 = Icges(6,4) * t469;
t344 = Icges(6,1) * t470 + Icges(6,5) * t672 + t457;
t654 = -Icges(6,2) * t470 + t344 + t457;
t700 = Icges(6,4) * t470;
t342 = Icges(6,2) * t469 + Icges(6,6) * t672 + t700;
t656 = Icges(6,1) * t469 - t342 - t700;
t208 = -t371 * t515 + (-t512 * t654 + t514 * t656) * t513;
t372 = Icges(6,5) * t471 - Icges(6,6) * t472;
t458 = Icges(6,4) * t471;
t345 = Icges(6,1) * t472 + Icges(6,5) * t671 + t458;
t653 = -Icges(6,2) * t472 + t345 + t458;
t699 = Icges(6,4) * t472;
t343 = Icges(6,2) * t471 + Icges(6,6) * t671 + t699;
t655 = Icges(6,1) * t471 - t343 - t699;
t209 = -t372 * t515 + (-t512 * t653 + t514 * t655) * t513;
t461 = (-Icges(6,5) * t512 - Icges(6,6) * t514) * t513;
t610 = t671 / 0.2e1;
t612 = t672 / 0.2e1;
t698 = Icges(6,4) * t512;
t585 = Icges(6,1) * t514 - t698;
t433 = -Icges(6,5) * t515 + t513 * t585;
t642 = t433 + (-Icges(6,2) * t514 - t698) * t513;
t697 = Icges(6,4) * t514;
t579 = -Icges(6,2) * t512 + t697;
t431 = -Icges(6,6) * t515 + t513 * t579;
t643 = -t431 + (-Icges(6,1) * t512 - t697) * t513;
t762 = t515 ^ 2;
t188 = t371 * t672 + t469 * t654 + t470 * t656;
t189 = t372 * t672 + t469 * t653 + t470 * t655;
t677 = t461 * t515;
t80 = -(t469 * t642 + t470 * t643) * t515 + (t189 * t521 + (t188 - t677) * t520) * t513;
t190 = t371 * t671 + t471 * t654 + t472 * t656;
t191 = t372 * t671 + t471 * t653 + t472 * t655;
t81 = -(t471 * t642 + t472 * t643) * t515 + (t190 * t520 + (t191 - t677) * t521) * t513;
t629 = t81 * t610 + t80 * t612 + (t762 * t461 + (t209 * t521 + t208 * t520 - (-t512 * t642 + t514 * t643) * t515) * t513) * t734;
t22 = t629 + m(6) * (t230 * t305 + t254 * t329 + t255 * t330);
t772 = t22 * qJD(5);
t701 = Icges(5,4) * t524;
t580 = -Icges(5,2) * t522 + t701;
t443 = -Icges(5,6) * t515 + t513 * t580;
t640 = -t443 + (-Icges(5,1) * t522 - t701) * t513;
t702 = Icges(5,4) * t522;
t586 = Icges(5,1) * t524 - t702;
t445 = -Icges(5,5) * t515 + t513 * t586;
t639 = t445 + (-Icges(5,2) * t524 - t702) * t513;
t769 = m(6) * (t168 * t230 + t185 * t254 + t186 * t255) + m(5) * (t251 * t302 + t279 * t322 + t280 * t323);
t631 = qJD(2) + qJD(3);
t392 = Icges(5,5) * t491 - Icges(5,6) * t492;
t477 = Icges(5,4) * t491;
t367 = Icges(5,1) * t492 + Icges(5,5) * t672 + t477;
t649 = -Icges(5,2) * t492 + t367 + t477;
t704 = Icges(5,4) * t492;
t365 = Icges(5,2) * t491 + Icges(5,6) * t672 + t704;
t651 = Icges(5,1) * t491 - t365 - t704;
t210 = t392 * t672 + t491 * t649 + t492 * t651;
t393 = Icges(5,5) * t493 - Icges(5,6) * t494;
t478 = Icges(5,4) * t493;
t368 = Icges(5,1) * t494 + Icges(5,5) * t671 + t478;
t648 = -Icges(5,2) * t494 + t368 + t478;
t703 = Icges(5,4) * t494;
t366 = Icges(5,2) * t493 + Icges(5,6) * t671 + t703;
t650 = Icges(5,1) * t493 - t366 - t703;
t211 = t393 * t672 + t491 * t648 + t492 * t650;
t139 = -t210 * t521 + t211 * t520;
t212 = t392 * t671 + t493 * t649 + t494 * t651;
t213 = t393 * t671 + t493 * t648 + t494 * t650;
t140 = -t212 * t521 + t213 * t520;
t768 = t139 * t732 + t140 * t733;
t115 = -t188 * t521 + t189 * t520;
t116 = -t190 * t521 + t191 * t520;
t658 = t115 * t732 + t116 * t733;
t340 = Icges(6,5) * t470 + Icges(6,6) * t469 + Icges(6,3) * t672;
t405 = t431 * t520;
t407 = t433 * t520;
t575 = Icges(6,5) * t514 - Icges(6,6) * t512;
t429 = -Icges(6,3) * t515 + t513 * t575;
t572 = -t342 * t512 + t344 * t514;
t559 = -t429 * t520 - t572;
t195 = -t559 * t515 + (t405 * t512 - t407 * t514 + t340) * t513;
t341 = Icges(6,5) * t472 + Icges(6,6) * t471 + Icges(6,3) * t671;
t406 = t431 * t521;
t408 = t433 * t521;
t571 = -t343 * t512 + t345 * t514;
t558 = -t429 * t521 - t571;
t196 = -t558 * t515 + (t406 * t512 - t408 * t514 + t341) * t513;
t567 = -t431 * t512 + t433 * t514;
t679 = t429 * t515;
t304 = t513 * t567 - t679;
t432 = Icges(6,6) * t513 + t515 * t579;
t434 = Icges(6,5) * t513 + t515 * t585;
t553 = (Icges(6,3) * t513 + t515 * t575 - t567) * t515;
t686 = t340 * t515;
t252 = t513 * t572 - t686;
t685 = t341 * t515;
t253 = t513 * t571 - t685;
t574 = t252 * t520 + t253 * t521;
t767 = (-t304 * t515 + t513 * t574) * t735 + ((t553 + t574) * t515 + (t196 * t521 + t195 * t520 - (-t432 * t512 + t434 * t514 + t429) * t515 + t304) * t513) * t734;
t307 = t377 * t520 + t378 * t521;
t479 = t491 * pkin(4);
t480 = t493 * pkin(4);
t283 = t479 * t520 + t480 * t521 + t307;
t718 = pkin(4) * t522;
t595 = t513 * t718 - t468;
t401 = t595 * t520;
t402 = t595 * t521;
t108 = t202 * t283 + t318 * t401 + t320 * t402;
t118 = t224 * t283 + t325 * t401 + t327 * t402;
t398 = rSges(5,1) * t491 - rSges(5,2) * t492;
t399 = rSges(5,1) * t493 - rSges(5,2) * t494;
t324 = t398 * t520 + t399 * t521;
t216 = t248 * t324;
t233 = t282 * t324;
t490 = (-rSges(5,1) * t522 - rSges(5,2) * t524) * t513;
t766 = (t118 + t108) * t754 + (t216 + t233 + ((-t354 - t384) * t521 + (-t352 - t382) * t520) * t490) * t755;
t576 = Icges(5,5) * t524 - Icges(5,6) * t522;
t441 = -Icges(5,3) * t515 + t513 * t576;
t763 = t782 * t577;
t761 = 2 * qJD(2);
t760 = 4 * qJD(2);
t759 = 2 * qJD(3);
t758 = 4 * qJD(3);
t757 = 2 * qJD(4);
t756 = m(4) / 0.2e1;
t684 = t347 * t515;
t245 = (t410 * t513 - t684) * t520 + t657;
t264 = -t346 * t513 + t616;
t265 = -t438 * t671 + t335;
t293 = -t347 * t672 + t333;
t310 = -t437 * t671 - t684;
t750 = m(6) * (t168 * t293 + t185 * t309 + t186 * t310 + t230 * t245 + t254 * t264 + t255 * t265);
t619 = t244 * t293 + t309 * t328 + t310 * t326;
t625 = t202 * t245 + t264 * t320 + t265 * t318;
t748 = m(6) * (t619 + t625);
t39 = t224 * t245 + t264 * t327 + t265 * t325 + t619;
t746 = m(6) * t39;
t550 = t230 * t307 + (-t254 * t521 - t255 * t520) * t468;
t623 = t202 * t305 + t318 * t330 + t320 * t329;
t745 = m(6) * (t550 + t623);
t620 = t224 * t305 + t325 * t330 + t327 * t329;
t744 = m(6) * (t550 + t620);
t618 = t283 * t293 + t309 * t402 + t310 * t401;
t742 = m(6) * (t618 + t623);
t741 = m(6) * (t618 + t620);
t169 = t202 * t307;
t179 = t224 * t307;
t740 = m(6) * (t169 + t179 + ((-t320 - t327) * t521 + (-t318 - t325) * t520) * t468);
t738 = m(6) * (t245 * t293 + t264 * t309 + t265 * t310);
t85 = t202 * t244 + t318 * t326 + t320 * t328;
t737 = m(6) * t85;
t91 = t224 * t244 + t325 * t326 + t327 * t328;
t736 = m(6) * t91;
t731 = t521 / 0.2e1;
t363 = Icges(5,5) * t492 + Icges(5,6) * t491 + Icges(5,3) * t672;
t256 = t363 * t672 + t365 * t491 + t367 * t492;
t296 = t441 * t672 + t443 * t491 + t445 * t492;
t364 = Icges(5,5) * t494 + Icges(5,6) * t493 + Icges(5,3) * t671;
t257 = t364 * t672 + t366 * t491 + t368 * t492;
t688 = t257 * t521;
t150 = -t296 * t515 + (t256 * t520 + t688) * t513;
t259 = t364 * t671 + t366 * t493 + t368 * t494;
t297 = t441 * t671 + t443 * t493 + t445 * t494;
t258 = t363 * t671 + t365 * t493 + t367 * t494;
t687 = t258 * t520;
t151 = -t297 * t515 + (t259 * t521 + t687) * t513;
t566 = -t443 * t522 + t445 * t524;
t678 = t441 * t515;
t313 = t513 * t566 - t678;
t570 = -t365 * t522 + t367 * t524;
t682 = t363 * t515;
t270 = t513 * t570 - t682;
t569 = -t366 * t522 + t368 * t524;
t681 = t364 * t515;
t271 = t513 * t569 - t681;
t573 = t270 * t520 + t271 * t521;
t161 = -t313 * t515 + t513 * t573;
t240 = t340 * t672 + t342 * t469 + t344 * t470;
t284 = t429 * t672 + t431 * t469 + t433 * t470;
t241 = t341 * t672 + t343 * t469 + t345 * t470;
t690 = t241 * t521;
t137 = -t284 * t515 + (t240 * t520 + t690) * t513;
t243 = t341 * t671 + t343 * t471 + t345 * t472;
t285 = t429 * t671 + t431 * t471 + t433 * t472;
t242 = t340 * t671 + t342 * t471 + t344 * t472;
t689 = t242 * t520;
t138 = -t285 * t515 + (t243 * t521 + t689) * t513;
t535 = t513 * t559 + t686;
t181 = -t405 * t469 - t407 * t470 + t520 * t535;
t534 = t513 * t558 + t685;
t182 = -t406 * t469 - t408 * t470 + t520 * t534;
t46 = (t690 - t432 * t469 - t434 * t470 + (t240 - t679) * t520) * t515 + (t182 * t521 + t284 + (t181 - t553) * t520) * t513;
t183 = -t405 * t471 - t407 * t472 + t521 * t535;
t184 = -t406 * t471 - t408 * t472 + t521 * t534;
t47 = (t689 - t432 * t471 - t434 * t472 + (t243 - t679) * t521) * t515 + (t183 * t520 + t285 + (t184 - t553) * t521) * t513;
t606 = t669 / 0.2e1;
t608 = t670 / 0.2e1;
t562 = t137 * t608 + t138 * t606 + t46 * t612 + t47 * t610 + t767;
t418 = t443 * t520;
t420 = t445 * t520;
t557 = -t441 * t520 - t570;
t533 = t513 * t557 + t682;
t204 = -t418 * t491 - t420 * t492 + t520 * t533;
t419 = t443 * t521;
t421 = t445 * t521;
t556 = -t441 * t521 - t569;
t532 = t513 * t556 + t681;
t205 = -t419 * t491 - t421 * t492 + t520 * t532;
t444 = Icges(5,6) * t513 + t515 * t580;
t446 = Icges(5,5) * t513 + t515 * t586;
t552 = (Icges(5,3) * t513 + t515 * t576 - t566) * t515;
t59 = (t688 - t444 * t491 - t446 * t492 + (t256 - t678) * t520) * t515 + (t205 * t521 + t296 + (t204 - t552) * t520) * t513;
t206 = -t418 * t493 - t420 * t494 + t521 * t533;
t207 = -t419 * t493 - t421 * t494 + t521 * t532;
t60 = (t687 - t444 * t493 - t446 * t494 + (t259 - t678) * t521) * t515 + (t206 * t520 + t297 + (t207 - t552) * t521) * t513;
t217 = -t557 * t515 + (t418 * t522 - t420 * t524 + t363) * t513;
t218 = -t556 * t515 + (t419 * t522 - t421 * t524 + t364) * t513;
t74 = (t552 + t573) * t515 + (t218 * t521 + t217 * t520 - (-t444 * t522 + t446 * t524 + t441) * t515 + t313) * t513;
t5 = (-t74 / 0.2e1 + t150 * t733 + t151 * t731) * t515 + (t161 / 0.2e1 + t59 * t733 + t60 * t731) * t513 + t562 + t769;
t89 = 0.2e1 * (t168 / 0.4e1 - t283 / 0.4e1) * m(6) + 0.2e1 * (t251 / 0.4e1 - t324 / 0.4e1) * m(5);
t659 = t89 * qJD(1);
t730 = qJD(4) * t5 + t659;
t502 = rSges(4,1) * t515 - rSges(4,2) * t513;
t348 = t782 * t502;
t303 = t348 + t641;
t605 = -t501 - t720;
t449 = t605 * t520;
t451 = t605 * t521;
t231 = -t303 * t381 + (-t449 * t520 - t451 * t521) * t502;
t729 = m(4) * t231;
t277 = (-t348 + t502) * t381;
t728 = m(4) * t277;
t153 = t248 * t300 + t352 * t383 + t354 * t385;
t727 = m(5) * t153;
t162 = t282 * t300 + t382 * t383 + t384 * t385;
t726 = m(5) * t162;
t725 = m(5) * (t216 + (-t352 * t520 - t354 * t521) * t490);
t724 = m(5) * (t233 + (-t382 * t520 - t384 * t521) * t490);
t723 = m(6) * t108;
t722 = m(6) * t118;
t721 = m(6) * t305;
t14 = t562 + t738;
t200 = 0.2e1 * (t245 / 0.4e1 - t307 / 0.4e1) * m(6);
t632 = t200 * qJD(1);
t709 = qJD(5) * t14 + t632;
t487 = (-Icges(5,5) * t522 - Icges(5,6) * t524) * t513;
t676 = t487 * t515;
t647 = -t378 - t480;
t628 = t740 / 0.2e1 + t658;
t176 = -m(4) * t381 + m(5) * t300 + m(6) * t244;
t201 = (t245 + t307) * t754;
t90 = (t251 + t324) * t755 + (t168 + t283) * t754;
t627 = qJD(3) * t176 + qJD(4) * t90 + qJD(5) * t201;
t621 = t230 * t283 + t254 * t402 + t255 * t401;
t613 = -t672 / 0.2e1;
t611 = -t671 / 0.2e1;
t609 = -t670 / 0.2e1;
t607 = -t669 / 0.2e1;
t604 = -t502 - t719;
t602 = -t504 - t719;
t597 = t658 + t768;
t596 = t782 * t720;
t593 = -t448 + t602;
t505 = rSges(3,1) * t523 + rSges(3,2) * t525;
t564 = t602 + t644;
t561 = t597 + t766;
t106 = -t181 * t521 + t182 * t520;
t107 = -t183 * t521 + t184 * t520;
t124 = -t204 * t521 + t205 * t520;
t125 = -t206 * t521 + t207 * t520;
t481 = t577 * t520;
t482 = t577 * t521;
t560 = (t107 + t125 + t516 * t482 + (-t520 * t481 + t763) * t521) * t733 + (t106 + t124 + t517 * t481 + (-t521 * t482 + t763) * t520) * t732;
t555 = t750 / 0.2e1 + t562;
t554 = -t596 - t634;
t549 = t293 * t307 + (-t309 * t521 - t310 * t520) * t468;
t548 = t302 * t324 + (-t322 * t521 - t323 * t520) * t490;
t547 = t520 * t781 + t496;
t546 = -t521 * t781 + t495;
t543 = t106 * t612 + t107 * t610 + t46 * t732 + t47 * t733 + (-t195 * t521 + t196 * t520) * t734 + (-t240 * t521 + t241 * t520) * t608 + (-t242 * t521 + t243 * t520) * t606 + (-t252 * t521 + t253 * t520) * t735 - t658;
t536 = t46 * t613 + t47 * t611 + t115 * t612 + t116 * t610 + t137 * t609 + t138 * t607 + (-t208 * t521 + t209 * t520) * t734 + t81 * t733 + t80 * t732 - t767;
t531 = -t750 / 0.2e1 + t536;
t530 = -t738 + t536;
t529 = t124 * t612 + t125 * t610 + t59 * t732 + t60 * t733 + (-t217 * t521 + t218 * t520) * t734 + (-t256 * t521 + t257 * t520) * t608 + (-t258 * t521 + t259 * t520) * t606 + (-t270 * t521 + t271 * t520) * t735 + t543 - t768;
t228 = -t392 * t515 + (-t522 * t649 + t524 * t651) * t513;
t229 = -t393 * t515 + (-t522 * t648 + t524 * t650) * t513;
t97 = -(t491 * t639 + t492 * t640) * t515 + (t211 * t521 + (t210 - t676) * t520) * t513;
t98 = -(t493 * t639 + t494 * t640) * t515 + (t212 * t520 + (t213 - t676) * t521) * t513;
t528 = (t515 * t74 / 0.2e1 + t59 * t613 + t60 * t611 + t139 * t612 + t140 * t610 + t150 * t609 + t151 * t607 + (-t228 * t521 + t229 * t520) * t734 - t513 * t161 / 0.2e1 + t536 + t98 * t733 + t97 * t732 - t769) * qJD(4) - t659;
t511 = t513 ^ 2;
t452 = t604 * t521;
t450 = t604 * t520;
t400 = t782 * t505;
t355 = t593 * t521;
t353 = t593 * t520;
t337 = -t596 - t381;
t332 = -t399 * t515 - t490 * t671;
t331 = t398 * t515 + t490 * t672;
t321 = t564 * t521;
t319 = t564 * t520;
t314 = (t398 * t521 - t399 * t520) * t513;
t301 = qJD(5) * t721;
t299 = (-t468 * t513 + t511 * t718) * t521 + t647 * t515;
t298 = t479 * t515 - t511 * t630 + t329;
t288 = t554 + t771;
t276 = t349 + (t479 * t521 + t520 * t647) * t513;
t234 = t554 + t764;
t143 = t179 + (-t325 * t520 - t327 * t521) * t468;
t119 = t169 + (-t318 * t520 - t320 * t521) * t468;
t75 = -qJD(4) * t89 - qJD(5) * t200;
t67 = t741 / 0.2e1;
t63 = t742 / 0.2e1;
t50 = t744 / 0.2e1;
t48 = t745 / 0.2e1;
t38 = t746 / 0.2e1;
t34 = t748 / 0.2e1;
t33 = m(6) * t143 + t658;
t32 = m(6) * t119 + t658;
t24 = m(6) * (t293 * t305 + t309 * t329 + t310 * t330) + t629;
t23 = t24 * qJD(5);
t21 = t597 + t722 + t724;
t20 = t597 + t723 + t725;
t19 = t560 + t726 + t728 + t736;
t18 = t19 * qJD(3);
t17 = t560 + t727 + t729 + t737;
t16 = t38 - t748 / 0.2e1 + t628;
t15 = t34 - t746 / 0.2e1 + t628;
t12 = t67 - t744 / 0.2e1 + t555;
t11 = t50 - t741 / 0.2e1 + t555;
t10 = t63 - t745 / 0.2e1 + t555;
t9 = t48 - t742 / 0.2e1 + t555;
t8 = t561 - t774;
t7 = t561 + t774;
t6 = t34 + t38 - t740 / 0.2e1 + t543;
t3 = t531 + t50 + t67;
t2 = t531 + t63 + t48;
t1 = t529 + t563 + t713 - t766;
t4 = [0, (-m(3) * t400 / 0.2e1 + t337 * t756 + t288 * t755 + t234 * t754) * t761 + t627, qJD(2) * t176 + t627, (t276 * t754 + t314 * t755) * t757 + t301 + t631 * t90, qJD(4) * t721 + t201 * t631 + t301; t75, (m(6) * (t202 * t234 + t318 * t319 + t320 * t321) + m(5) * (t248 * t288 + t352 * t353 + t354 * t355) + m(4) * (t303 * t337 + t449 * t450 + t451 * t452) + (t517 * t495 + (t546 * t520 + (-t496 + t547) * t521) * t520) * t732 + (t516 * t496 + (t547 * t521 + (-t495 + t546) * t520) * t521) * t733 + t560 + m(3) * (-t400 + t505) * t782 * (rSges(3,1) * t525 - rSges(3,2) * t523)) * qJD(2) + t17 * qJD(3) + t20 * qJD(4) + t32 * qJD(5), t17 * qJD(2) + t560 * qJD(3) + t7 * qJD(4) + t15 * qJD(5) + (-t736 / 0.4e1 - t726 / 0.4e1 - t728 / 0.4e1) * t758 + ((t91 + t85) * t754 + (t162 + t153) * t755 + (t231 + t277) * t756) * t759, t20 * qJD(2) + t7 * qJD(3) + t2 * qJD(5) + ((t248 * t314 + t331 * t354 + t332 * t352 + t548) * t755 + (t202 * t276 + t298 * t320 + t299 * t318 + t621) * t754) * t757 + t528, -t632 + t32 * qJD(2) + t15 * qJD(3) + t2 * qJD(4) + (t530 + m(6) * (t549 + t623)) * qJD(5); t75, t560 * qJD(2) + t18 + t8 * qJD(4) + t16 * qJD(5) + (-t737 / 0.4e1 - t727 / 0.4e1 - t729 / 0.4e1) * t760 + ((t224 * t234 + t319 * t325 + t321 * t327 + t85) * t754 + (t282 * t288 + t353 * t382 + t355 * t384 + t153) * t755 + (t337 * t348 + (-t450 * t520 - t452 * t521) * t501 + t231) * t756) * t761, qJD(2) * t19 + qJD(4) * t21 + qJD(5) * t33 + t18, t8 * qJD(2) + t21 * qJD(3) + t3 * qJD(5) + ((t282 * t314 + t331 * t384 + t332 * t382 + t548) * t755 + (t224 * t276 + t298 * t327 + t299 * t325 + t621) * t754) * t757 + t528, -t632 + t16 * qJD(2) + t33 * qJD(3) + t3 * qJD(4) + (t530 + m(6) * (t549 + t620)) * qJD(5); t631 * t89, t529 * qJD(2) + t1 * qJD(3) + t9 * qJD(5) + (-t723 / 0.4e1 - t725 / 0.4e1) * t760 + ((t230 * t234 + t254 * t321 + t255 * t319 + t626) * t754 + (t288 * t302 + t322 * t355 + t323 * t353 + t622) * t755) * t761 + t730, t1 * qJD(2) + t529 * qJD(3) + t11 * qJD(5) + (-t722 / 0.4e1 - t724 / 0.4e1) * t758 + t563 * t759 + t730, (t97 * t612 + t98 * t610 + m(6) * (t230 * t276 + t254 * t298 + t255 * t299) + (t762 * t487 + (t229 * t521 + t228 * t520 - (-t522 * t639 + t524 * t640) * t515) * t513) * t734 + m(5) * (t302 * t314 + t322 * t331 + t323 * t332) + t629) * qJD(4) + t772 + t631 * t5, t9 * qJD(2) + t11 * qJD(3) + t22 * qJD(4) + t772; t631 * t200, ((t234 * t293 + t309 * t321 + t310 * t319 - t119 + t625) * m(6) + t543) * qJD(2) + t6 * qJD(3) + t10 * qJD(4) + t709, t6 * qJD(2) + ((t39 - t143) * m(6) + t543) * qJD(3) + t12 * qJD(4) + t709, t10 * qJD(2) + t12 * qJD(3) + ((t276 * t293 + t298 * t309 + t299 * t310) * m(6) + t629) * qJD(4) + t23, qJD(4) * t24 + t14 * t631 + t23;];
Cq = t4;

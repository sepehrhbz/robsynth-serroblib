% Calculate vector of centrifugal and Coriolis load on the joints for
% S5PRRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d5,theta1,theta4]';
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
% Datum: 2019-12-05 16:38
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5PRRPR7_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR7_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPR7_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRPR7_coriolisvecJ_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRPR7_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRPR7_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRRPR7_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:35:02
% EndTime: 2019-12-05 16:37:32
% DurationCPUTime: 118.25s
% Computational Cost: add. (51778->1610), mult. (144426->2208), div. (0->0), fcn. (171244->12), ass. (0->549)
t728 = Icges(4,2) + Icges(5,3);
t492 = sin(pkin(9));
t494 = cos(pkin(9));
t499 = cos(qJ(2));
t497 = sin(qJ(2));
t668 = cos(pkin(5));
t571 = t497 * t668;
t466 = t492 * t499 + t494 * t571;
t493 = sin(pkin(5));
t496 = sin(qJ(3));
t646 = t493 * t496;
t670 = cos(qJ(3));
t424 = t466 * t670 - t494 * t646;
t491 = sin(pkin(10));
t569 = t499 * t668;
t519 = -t492 * t497 + t494 * t569;
t667 = cos(pkin(10));
t337 = t424 * t491 + t519 * t667;
t338 = t424 * t667 - t491 * t519;
t586 = t493 * t670;
t524 = -t466 * t496 - t494 * t586;
t166 = Icges(5,5) * t338 - Icges(5,6) * t337 - Icges(5,3) * t524;
t663 = Icges(4,4) * t424;
t249 = Icges(4,2) * t524 - Icges(4,6) * t519 + t663;
t736 = t166 - t249;
t556 = t492 * t571;
t468 = t494 * t499 - t556;
t426 = t468 * t670 + t492 * t646;
t520 = -t492 * t569 - t494 * t497;
t339 = t426 * t491 + t520 * t667;
t340 = t426 * t667 - t491 * t520;
t525 = -t468 * t496 + t492 * t586;
t167 = Icges(5,5) * t340 - Icges(5,6) * t339 - Icges(5,3) * t525;
t662 = Icges(4,4) * t426;
t250 = Icges(4,2) * t525 - Icges(4,6) * t520 + t662;
t735 = t167 - t250;
t168 = Icges(5,4) * t338 - Icges(5,2) * t337 - Icges(5,6) * t524;
t170 = Icges(5,1) * t338 - Icges(5,4) * t337 - Icges(5,5) * t524;
t247 = Icges(4,5) * t424 + Icges(4,6) * t524 - Icges(4,3) * t519;
t418 = Icges(4,4) * t524;
t251 = Icges(4,1) * t424 - Icges(4,5) * t519 + t418;
t718 = -t168 * t337 + t170 * t338 - t247 * t519 + t251 * t424 - t736 * t524;
t169 = Icges(5,4) * t340 - Icges(5,2) * t339 - Icges(5,6) * t525;
t171 = Icges(5,1) * t340 - Icges(5,4) * t339 - Icges(5,5) * t525;
t248 = Icges(4,5) * t426 + Icges(4,6) * t525 - Icges(4,3) * t520;
t419 = Icges(4,4) * t525;
t252 = Icges(4,1) * t426 - Icges(4,5) * t520 + t419;
t717 = -t169 * t337 + t171 * t338 - t248 * t519 + t252 * t424 - t735 * t524;
t716 = -t168 * t339 + t170 * t340 - t247 * t520 + t251 * t426 - t736 * t525;
t715 = -t169 * t339 + t171 * t340 - t248 * t520 + t252 * t426 - t735 * t525;
t645 = t493 * t497;
t469 = t496 * t645 - t668 * t670;
t470 = t496 * t668 + t497 * t586;
t644 = t493 * t499;
t100 = -t247 * t644 - t469 * t249 + t470 * t251;
t573 = t493 * t667;
t421 = t470 * t491 + t499 * t573;
t422 = t470 * t667 - t491 * t644;
t77 = t166 * t469 - t168 * t421 + t170 * t422;
t711 = t100 + t77;
t101 = -t248 * t644 - t469 * t250 + t470 * t252;
t78 = t167 * t469 - t169 * t421 + t171 * t422;
t710 = t101 + t78;
t449 = t519 * qJD(2);
t332 = qJD(3) * t524 + t449 * t670;
t450 = t466 * qJD(2);
t253 = t332 * t491 - t450 * t667;
t254 = t332 * t667 + t450 * t491;
t331 = qJD(3) * t424 + t449 * t496;
t738 = -Icges(4,4) * t332 + Icges(5,5) * t254 - Icges(4,6) * t450 - Icges(5,6) * t253 + t728 * t331;
t451 = t520 * qJD(2);
t334 = qJD(3) * t525 + t451 * t670;
t610 = qJD(2) * t494;
t452 = -qJD(2) * t556 + t499 * t610;
t255 = t334 * t491 - t452 * t667;
t256 = t334 * t667 + t452 * t491;
t333 = qJD(3) * t426 + t451 * t496;
t737 = -Icges(4,4) * t334 + Icges(5,5) * t256 - Icges(4,6) * t452 - Icges(5,6) * t255 + t728 * t333;
t560 = t499 * t586;
t428 = qJD(2) * t560 - qJD(3) * t469;
t555 = t497 * t573;
t363 = -qJD(2) * t555 + t428 * t491;
t609 = qJD(2) * t497;
t584 = t493 * t609;
t364 = t428 * t667 + t491 * t584;
t597 = t496 * t644;
t427 = qJD(2) * t597 + qJD(3) * t470;
t734 = -Icges(4,4) * t428 + Icges(5,5) * t364 - Icges(4,6) * t584 - Icges(5,6) * t363 + t728 * t427;
t258 = Icges(5,5) * t422 - Icges(5,6) * t421 + Icges(5,3) * t469;
t661 = Icges(4,4) * t470;
t366 = -Icges(4,2) * t469 - Icges(4,6) * t644 + t661;
t733 = t258 - t366;
t611 = qJD(2) * t493;
t487 = t492 * t611;
t433 = -qJD(3) * t520 + t487;
t680 = -t433 / 0.2e1;
t585 = t493 * t610;
t434 = -qJD(3) * t519 - t585;
t678 = -t434 / 0.2e1;
t490 = qJD(2) * t668;
t477 = -qJD(3) * t644 + t490;
t672 = -t477 / 0.2e1;
t120 = Icges(5,4) * t254 - Icges(5,2) * t253 + Icges(5,6) * t331;
t122 = Icges(5,1) * t254 - Icges(5,4) * t253 + Icges(5,5) * t331;
t180 = Icges(4,5) * t332 - Icges(4,6) * t331 + Icges(4,3) * t450;
t184 = Icges(4,1) * t332 - Icges(4,4) * t331 + Icges(4,5) * t450;
t725 = -t120 * t337 + t122 * t338 - t168 * t253 + t170 * t254 - t180 * t519 + t184 * t424 + t247 * t450 + t251 * t332 + t736 * t331 - t738 * t524;
t121 = Icges(5,4) * t256 - Icges(5,2) * t255 + Icges(5,6) * t333;
t123 = Icges(5,1) * t256 - Icges(5,4) * t255 + Icges(5,5) * t333;
t181 = Icges(4,5) * t334 - Icges(4,6) * t333 + Icges(4,3) * t452;
t185 = Icges(4,1) * t334 - Icges(4,4) * t333 + Icges(4,5) * t452;
t724 = -t121 * t337 + t123 * t338 - t169 * t253 + t171 * t254 - t181 * t519 + t185 * t424 + t248 * t450 + t252 * t332 + t735 * t331 - t737 * t524;
t723 = -t120 * t339 + t122 * t340 - t168 * t255 + t170 * t256 - t180 * t520 + t184 * t426 + t247 * t452 + t251 * t334 + t736 * t333 - t738 * t525;
t722 = -t121 * t339 + t123 * t340 - t169 * t255 + t171 * t256 - t181 * t520 + t185 * t426 + t248 * t452 + t252 * t334 + t735 * t333 - t737 * t525;
t720 = -t120 * t421 + t122 * t422 - t168 * t363 + t170 * t364 + t470 * t184 + t428 * t251 + (-t180 * t499 + t247 * t609) * t493 + t738 * t469 + t736 * t427;
t719 = -t121 * t421 + t123 * t422 - t169 * t363 + t171 * t364 + t470 * t185 + t428 * t252 + (-t181 * t499 + t248 * t609) * t493 + t737 * t469 + t735 * t427;
t190 = Icges(5,4) * t364 - Icges(5,2) * t363 + Icges(5,6) * t427;
t191 = Icges(5,1) * t364 - Icges(5,4) * t363 + Icges(5,5) * t427;
t259 = Icges(5,4) * t422 - Icges(5,2) * t421 + Icges(5,6) * t469;
t260 = Icges(5,1) * t422 - Icges(5,4) * t421 + Icges(5,5) * t469;
t271 = Icges(4,5) * t428 - Icges(4,6) * t427 + Icges(4,3) * t584;
t273 = Icges(4,1) * t428 - Icges(4,4) * t427 + Icges(4,5) * t584;
t365 = Icges(4,5) * t470 - Icges(4,6) * t469 - Icges(4,3) * t644;
t464 = Icges(4,4) * t469;
t367 = Icges(4,1) * t470 - Icges(4,5) * t644 - t464;
t714 = -t190 * t337 + t191 * t338 - t253 * t259 + t254 * t260 - t271 * t519 + t273 * t424 + t733 * t331 + t332 * t367 + t365 * t450 - t734 * t524;
t713 = -t190 * t339 + t191 * t340 - t255 * t259 + t256 * t260 - t271 * t520 + t273 * t426 + t733 * t333 + t334 * t367 + t365 * t452 - t734 * t525;
t712 = -t190 * t421 + t191 * t422 - t259 * t363 + t260 * t364 + t470 * t273 + t428 * t367 + (-t271 * t499 + t365 * t609) * t493 + t734 * t469 + t733 * t427;
t701 = -t259 * t337 + t260 * t338 - t365 * t519 + t367 * t424 - t733 * t524;
t700 = -t259 * t339 + t260 * t340 - t365 * t520 + t367 * t426 - t733 * t525;
t155 = -t365 * t644 - t469 * t366 + t470 * t367;
t90 = t258 * t469 - t259 * t421 + t260 * t422;
t699 = t155 + t90;
t732 = t711 * t450 + t710 * t452;
t731 = t716 * t450 + t715 * t452;
t730 = t718 * t450 + t717 * t452;
t495 = sin(qJ(5));
t498 = cos(qJ(5));
t235 = -t338 * t495 - t498 * t524;
t236 = t338 * t498 - t495 * t524;
t104 = Icges(6,5) * t236 + Icges(6,6) * t235 + Icges(6,3) * t337;
t660 = Icges(6,4) * t236;
t106 = Icges(6,2) * t235 + Icges(6,6) * t337 + t660;
t230 = Icges(6,4) * t235;
t108 = Icges(6,1) * t236 + Icges(6,5) * t337 + t230;
t112 = -qJD(5) * t236 - t254 * t495 + t331 * t498;
t113 = qJD(5) * t235 + t254 * t498 + t331 * t495;
t67 = Icges(6,5) * t113 + Icges(6,6) * t112 + Icges(6,3) * t253;
t69 = Icges(6,4) * t113 + Icges(6,2) * t112 + Icges(6,6) * t253;
t71 = Icges(6,1) * t113 + Icges(6,4) * t112 + Icges(6,5) * t253;
t10 = t104 * t253 + t106 * t112 + t108 * t113 + t235 * t69 + t236 * t71 + t337 * t67;
t237 = -t340 * t495 - t498 * t525;
t238 = t340 * t498 - t495 * t525;
t105 = Icges(6,5) * t238 + Icges(6,6) * t237 + Icges(6,3) * t339;
t659 = Icges(6,4) * t238;
t107 = Icges(6,2) * t237 + Icges(6,6) * t339 + t659;
t231 = Icges(6,4) * t237;
t109 = Icges(6,1) * t238 + Icges(6,5) * t339 + t231;
t114 = -qJD(5) * t238 - t256 * t495 + t333 * t498;
t115 = qJD(5) * t237 + t256 * t498 + t333 * t495;
t68 = Icges(6,5) * t115 + Icges(6,6) * t114 + Icges(6,3) * t255;
t70 = Icges(6,4) * t115 + Icges(6,2) * t114 + Icges(6,6) * t255;
t72 = Icges(6,1) * t115 + Icges(6,4) * t114 + Icges(6,5) * t255;
t11 = t105 * t253 + t107 * t112 + t109 * t113 + t235 * t70 + t236 * t72 + t337 * t68;
t608 = qJD(3) * t450;
t214 = qJD(5) * t253 + t608;
t607 = qJD(3) * t452;
t215 = qJD(5) * t255 + t607;
t342 = -t422 * t495 + t469 * t498;
t343 = t422 * t498 + t469 * t495;
t174 = Icges(6,5) * t343 + Icges(6,6) * t342 + Icges(6,3) * t421;
t658 = Icges(6,4) * t343;
t175 = Icges(6,2) * t342 + Icges(6,6) * t421 + t658;
t335 = Icges(6,4) * t342;
t176 = Icges(6,1) * t343 + Icges(6,5) * t421 + t335;
t178 = -qJD(5) * t343 - t364 * t495 + t427 * t498;
t179 = qJD(5) * t342 + t364 * t498 + t427 * t495;
t91 = Icges(6,5) * t179 + Icges(6,6) * t178 + Icges(6,3) * t363;
t92 = Icges(6,4) * t179 + Icges(6,2) * t178 + Icges(6,6) * t363;
t93 = Icges(6,1) * t179 + Icges(6,4) * t178 + Icges(6,5) * t363;
t22 = t112 * t175 + t113 * t176 + t174 * t253 + t235 * t92 + t236 * t93 + t337 * t91;
t244 = qJD(5) * t339 + t433;
t245 = qJD(5) * t337 + t434;
t604 = qJD(3) * t497;
t583 = t493 * t604;
t559 = qJD(2) * t583;
t329 = qJD(5) * t363 + t559;
t352 = qJD(5) * t421 + t477;
t42 = t104 * t337 + t106 * t235 + t108 * t236;
t43 = t105 * t337 + t107 * t235 + t109 * t236;
t58 = t174 * t337 + t175 * t235 + t176 * t236;
t1 = t245 * t10 + t11 * t244 + t214 * t42 + t215 * t43 + t22 * t352 + t329 * t58;
t729 = -t1 / 0.2e1 + t714 * t672 + t725 * t678 + t724 * t680 - (t584 * t701 + t730) * qJD(3) / 0.2e1;
t727 = t433 * t717 + t434 * t718 + t477 * t701;
t726 = t433 * t715 + t434 * t716 + t477 * t700;
t721 = t433 * t710 + t434 * t711 + t477 * t699;
t587 = t491 * t670;
t369 = -t466 * t667 + t519 * t587;
t554 = t670 * t667;
t370 = t466 * t491 + t519 * t554;
t651 = t519 * t496;
t194 = Icges(5,5) * t370 - Icges(5,6) * t369 + Icges(5,3) * t651;
t533 = Icges(4,4) * t670 - Icges(4,2) * t496;
t311 = Icges(4,6) * t466 + t519 * t533;
t709 = -t194 + t311;
t371 = -t468 * t667 + t520 * t587;
t372 = t468 * t491 + t520 * t554;
t650 = t520 * t496;
t195 = Icges(5,5) * t372 - Icges(5,6) * t371 + Icges(5,3) * t650;
t312 = Icges(4,6) * t468 + t520 * t533;
t708 = -t195 + t312;
t437 = t491 * t560 - t555;
t438 = (t491 * t497 + t499 * t554) * t493;
t321 = Icges(5,5) * t438 - Icges(5,6) * t437 + Icges(5,3) * t597;
t430 = (Icges(4,6) * t497 + t499 * t533) * t493;
t707 = -t321 + t430;
t172 = rSges(5,1) * t338 - rSges(5,2) * t337 - rSges(5,3) * t524;
t173 = rSges(5,1) * t340 - rSges(5,2) * t339 - rSges(5,3) * t525;
t307 = pkin(3) * t426 - qJ(4) * t525;
t634 = -t173 - t307;
t706 = t172 * t452 + t450 * t634;
t12 = t104 * t255 + t106 * t114 + t108 * t115 + t237 * t69 + t238 * t71 + t339 * t67;
t13 = t105 * t255 + t107 * t114 + t109 * t115 + t237 * t70 + t238 * t72 + t339 * t68;
t23 = t114 * t175 + t115 * t176 + t174 * t255 + t237 * t92 + t238 * t93 + t339 * t91;
t44 = t104 * t339 + t106 * t237 + t108 * t238;
t45 = t105 * t339 + t107 * t237 + t109 * t238;
t59 = t174 * t339 + t175 * t237 + t176 * t238;
t2 = t12 * t245 + t244 * t13 + t214 * t44 + t215 * t45 + t23 * t352 + t329 * t59;
t704 = t2 + t713 * t477 + t723 * t434 + t722 * t433 + (t584 * t700 + t731) * qJD(3);
t14 = t104 * t363 + t106 * t178 + t108 * t179 + t342 * t69 + t343 * t71 + t421 * t67;
t15 = t105 * t363 + t107 * t178 + t109 * t179 + t342 * t70 + t343 * t72 + t421 * t68;
t24 = t174 * t363 + t175 * t178 + t176 * t179 + t342 * t92 + t343 * t93 + t421 * t91;
t48 = t104 * t421 + t106 * t342 + t108 * t343;
t49 = t105 * t421 + t107 * t342 + t109 * t343;
t66 = t174 * t421 + t175 * t342 + t176 * t343;
t3 = t14 * t245 + t15 * t244 + t214 * t48 + t215 * t49 + t24 * t352 + t329 * t66;
t703 = t3 + t712 * t477 + t720 * t434 + t719 * t433 + (t584 * t699 + t732) * qJD(3);
t110 = rSges(6,1) * t236 + rSges(6,2) * t235 + rSges(6,3) * t337;
t156 = pkin(4) * t254 + pkin(8) * t253;
t414 = qJD(4) * t524;
t164 = pkin(3) * t332 + qJ(4) * t331 - t414;
t177 = rSges(6,1) * t343 + rSges(6,2) * t342 + rSges(6,3) * t421;
t232 = pkin(4) * t364 + pkin(8) * t363;
t308 = pkin(4) * t422 + pkin(8) * t421;
t387 = pkin(2) * t449 + pkin(7) * t450;
t568 = t668 * t387;
t461 = qJD(4) * t469;
t264 = pkin(3) * t428 + qJ(4) * t427 + t461;
t412 = pkin(3) * t470 + qJ(4) * t469;
t590 = qJD(4) * t333 + t434 * t264 + t412 * t608;
t200 = pkin(4) * t338 + pkin(8) * t337;
t304 = pkin(3) * t424 - qJ(4) * t524;
t631 = -t200 - t304;
t476 = (pkin(2) * t499 + pkin(7) * t497) * t493;
t463 = qJD(2) * t476;
t652 = t463 * t494;
t73 = rSges(6,1) * t113 + rSges(6,2) * t112 + rSges(6,3) * t253;
t94 = rSges(6,1) * t179 + rSges(6,2) * t178 + rSges(6,3) * t363;
t20 = t308 * t608 - t329 * t110 + t214 * t177 + t434 * t232 + t245 * t94 - t352 * t73 + (-t156 - t164) * t477 + (-t568 + (t604 * t631 - t652) * t493) * qJD(2) + t590;
t641 = t110 + t200;
t702 = t20 * t641;
t669 = t156 + t73;
t157 = pkin(4) * t256 + pkin(8) * t255;
t74 = rSges(6,1) * t115 + rSges(6,2) * t114 + rSges(6,3) * t255;
t698 = t157 + t74;
t263 = rSges(5,1) * t422 - rSges(5,2) * t421 + rSges(5,3) * t469;
t627 = -t263 - t412;
t696 = t452 * t627;
t111 = rSges(6,1) * t238 + rSges(6,2) * t237 + rSges(6,3) * t339;
t201 = pkin(4) * t340 + pkin(8) * t339;
t640 = t111 + t201;
t695 = t433 * t524 - t434 * t525 + t427;
t694 = t433 * t469 + t477 * t525 + t331;
t693 = -t434 * t469 - t477 * t524 + t333;
t528 = -Icges(5,5) * t667 + Icges(5,6) * t491;
t692 = (t259 * t491 - t260 * t667 + t469 * t528 + t470 * t728 - t367 + t464) * t477 + (t168 * t491 - t170 * t667 + t424 * t728 - t524 * t528 - t251 - t418) * t434 + (t169 * t491 - t171 * t667 + t426 * t728 - t525 * t528 - t252 - t419) * t433;
t302 = pkin(3) * t524 + qJ(4) * t424;
t691 = -qJD(4) * t470 - t164 * t520 - t433 * t302 + t452 * t304;
t532 = Icges(4,5) * t670 - Icges(4,6) * t496;
t690 = t433 * (-Icges(4,3) * t468 - t250 * t496 + t252 * t670 - t520 * t532) + t434 * (-Icges(4,3) * t466 - t249 * t496 + t251 * t670 - t519 * t532) + t477 * (-t366 * t496 + t367 * t670 - (Icges(4,3) * t497 + t499 * t532) * t493);
t689 = t214 / 0.2e1;
t688 = t215 / 0.2e1;
t687 = -t244 / 0.2e1;
t686 = t244 / 0.2e1;
t685 = -t245 / 0.2e1;
t684 = t245 / 0.2e1;
t683 = t329 / 0.2e1;
t682 = -t352 / 0.2e1;
t681 = t352 / 0.2e1;
t679 = t433 / 0.2e1;
t677 = t434 / 0.2e1;
t671 = t477 / 0.2e1;
t666 = Icges(3,4) * t466;
t665 = Icges(3,4) * t468;
t664 = Icges(3,4) * t497;
t656 = t307 * t466;
t655 = t412 * t468;
t654 = t524 * t491;
t653 = t525 * t491;
t649 = t469 * t491;
t648 = t492 * t493;
t647 = t493 * t494;
t643 = t495 * t496;
t642 = t496 * t498;
t125 = rSges(5,1) * t256 - rSges(5,2) * t255 + rSges(5,3) * t333;
t416 = qJD(4) * t525;
t165 = pkin(3) * t334 + qJ(4) * t333 - t416;
t639 = -t125 - t165;
t638 = -t157 - t165;
t388 = pkin(2) * t451 + pkin(7) * t452;
t351 = t668 * t388;
t636 = t668 * t165 + t351;
t635 = -t172 - t304;
t633 = t177 + t308;
t192 = rSges(5,1) * t364 - rSges(5,2) * t363 + rSges(5,3) * t427;
t632 = -t192 - t264;
t630 = -t201 - t307;
t629 = -t232 - t264;
t305 = pkin(3) * t525 + qJ(4) * t426;
t626 = qJD(4) * t424 + t477 * t305;
t625 = t304 * t644 - t412 * t519;
t406 = pkin(2) * t468 - pkin(7) * t520;
t392 = t668 * t406;
t624 = t668 * t307 + t392;
t410 = -pkin(3) * t469 + qJ(4) * t470;
t623 = qJD(4) * t426 + t434 * t410;
t622 = -t308 - t412;
t621 = t387 * t487 + t388 * t585;
t620 = t387 * t648 + t388 * t647;
t353 = Icges(3,2) * t519 - Icges(3,6) * t647 + t666;
t399 = Icges(3,1) * t519 - t666;
t619 = -t353 + t399;
t354 = Icges(3,2) * t520 + Icges(3,6) * t648 + t665;
t400 = Icges(3,1) * t520 - t665;
t618 = -t354 + t400;
t459 = Icges(3,4) * t519;
t355 = Icges(3,1) * t466 - Icges(3,5) * t647 + t459;
t397 = -Icges(3,2) * t466 + t459;
t617 = -t355 - t397;
t460 = Icges(3,4) * t520;
t356 = Icges(3,1) * t468 + Icges(3,5) * t648 + t460;
t398 = -Icges(3,2) * t468 + t460;
t616 = -t356 - t398;
t403 = pkin(2) * t519 + pkin(7) * t466;
t405 = pkin(2) * t520 + pkin(7) * t468;
t615 = t403 * t487 + t405 * t585;
t404 = pkin(2) * t466 - pkin(7) * t519;
t614 = t404 * t648 + t406 * t647;
t441 = Icges(3,6) * t668 + (Icges(3,2) * t499 + t664) * t493;
t473 = (Icges(3,1) * t499 - t664) * t493;
t613 = -t441 + t473;
t488 = Icges(3,4) * t644;
t442 = Icges(3,1) * t645 + Icges(3,5) * t668 + t488;
t472 = -Icges(3,2) * t645 + t488;
t612 = -t442 - t472;
t606 = qJD(3) * t466;
t605 = qJD(3) * t468;
t603 = qJD(4) * t496;
t602 = qJD(5) * t491;
t600 = -t74 + t638;
t599 = -t94 + t629;
t598 = t304 * t645;
t594 = -t111 + t630;
t593 = t164 * t644 - t264 * t519 + t450 * t412;
t592 = -t177 + t622;
t591 = -t463 + t632;
t475 = (pkin(2) * t497 - pkin(7) * t499) * t493;
t589 = -t475 + t627;
t579 = t404 * t487 + t406 * t585 + qJD(1);
t578 = t608 / 0.2e1;
t577 = t607 / 0.2e1;
t572 = t495 * t667;
t570 = t498 * t667;
t567 = t668 * t404;
t274 = rSges(4,1) * t428 - rSges(4,2) * t427 + rSges(4,3) * t584;
t566 = t493 * (-t274 - t463);
t368 = t470 * rSges(4,1) - t469 * rSges(4,2) - rSges(4,3) * t644;
t565 = t493 * (-t368 - t475);
t564 = -t463 + t599;
t563 = t164 * t648 + t165 * t647 + t620;
t562 = -t475 + t592;
t561 = t304 * t648 + t307 * t647 + t614;
t558 = t584 / 0.2e1;
t124 = rSges(5,1) * t254 - rSges(5,2) * t253 + rSges(5,3) * t331;
t547 = qJD(4) * t427 + t433 * t164 + t304 * t607 + t621;
t27 = qJD(3) * t706 + t124 * t433 + t639 * t434 + t547;
t546 = t433 * t304 + t461 + t579;
t60 = t172 * t433 + t434 * t634 + t546;
t553 = t60 * t124 + t27 * t172;
t261 = rSges(4,1) * t424 + rSges(4,2) * t524 - rSges(4,3) * t519;
t262 = rSges(4,1) * t426 + rSges(4,2) * t525 - rSges(4,3) * t520;
t544 = t261 * t452 - t262 * t450;
t543 = -t353 * t497 + t355 * t499;
t542 = -t354 * t497 + t356 * t499;
t541 = -t441 * t497 + t442 * t499;
t540 = qJD(3) * t558;
t539 = t405 * t490 - t476 * t487;
t538 = t406 * t490 - t475 * t487;
t537 = rSges(4,1) * t670 - rSges(4,2) * t496;
t536 = pkin(3) * t670 + qJ(4) * t496;
t535 = -pkin(4) * t667 - pkin(8) * t491;
t534 = Icges(4,1) * t670 - Icges(4,4) * t496;
t531 = -rSges(5,1) * t667 + rSges(5,2) * t491;
t474 = (rSges(3,1) * t499 - rSges(3,2) * t497) * t493;
t530 = -Icges(5,1) * t667 + Icges(5,4) * t491;
t529 = -Icges(5,4) * t667 + Icges(5,2) * t491;
t471 = (Icges(3,5) * t499 - Icges(3,6) * t497) * t493;
t357 = rSges(3,1) * t466 + rSges(3,2) * t519 - rSges(3,3) * t647;
t358 = rSges(3,1) * t468 + rSges(3,2) * t520 + rSges(3,3) * t648;
t527 = (t357 * t492 + t358 * t494) * t493;
t381 = rSges(3,1) * t449 - rSges(3,2) * t450;
t382 = rSges(3,1) * t451 - rSges(3,2) * t452;
t526 = (t381 * t492 + t382 * t494) * t493;
t385 = t536 * t519;
t386 = t536 * t520;
t518 = qJD(4) * t597 + t304 * t605 + t433 * t385 - t386 * t434 + t615;
t35 = t110 * t244 - t111 * t245 + t200 * t433 + t434 * t630 + t546;
t7 = t110 * t215 - t111 * t214 + t156 * t433 + t244 * t73 - t245 * t74 + t638 * t434 + (t200 * t452 + t450 * t630) * qJD(3) + t547;
t517 = t35 * t669 + t641 * t7;
t516 = (Icges(6,5) * t235 - Icges(6,6) * t236) * t245 + (Icges(6,5) * t237 - Icges(6,6) * t238) * t244 + (Icges(6,5) * t342 - Icges(6,6) * t343) * t352;
t515 = (Icges(4,5) * t524 - Icges(4,6) * t424) * t434 + (Icges(4,5) * t525 - Icges(4,6) * t426) * t433 + (-Icges(4,5) * t469 - Icges(4,6) * t470) * t477;
t514 = t477 * t307 - t414 + t538;
t513 = -t164 * t668 - t568;
t512 = -t304 * t668 - t567;
t350 = t388 * t490;
t511 = qJD(4) * t331 + t477 * t165 + t307 * t559 - t463 * t487 + t350;
t444 = t668 * rSges(3,3) + (rSges(3,1) * t497 + rSges(3,2) * t499) * t493;
t266 = (t358 * t668 - t444 * t648) * qJD(2);
t267 = (-t357 * t668 - t444 * t647) * qJD(2);
t510 = (-t475 * t647 - t567) * qJD(2);
t509 = -t403 * t490 - t476 * t585;
t443 = t536 * t644;
t508 = t307 * t583 + t477 * t386 - t433 * t443 + t519 * t603 + t539;
t507 = t434 * t412 - t416 + t510;
t506 = (Icges(6,1) * t237 - t107 - t659) * t244 + (Icges(6,1) * t235 - t106 - t660) * t245 + (Icges(6,1) * t342 - t175 - t658) * t352;
t505 = (-Icges(6,2) * t238 + t109 + t231) * t244 + (-Icges(6,2) * t236 + t108 + t230) * t245 + (-Icges(6,2) * t343 + t176 + t335) * t352;
t504 = (Icges(4,1) * t525 - t250 - t662) * t433 + (Icges(4,1) * t524 - t249 - t663) * t434 + (-Icges(4,1) * t469 - t366 - t661) * t477;
t502 = -t477 * t385 + t412 * t606 + t434 * t443 + t520 * t603 + t509;
t458 = qJD(2) * t474;
t455 = qJD(2) * t473;
t454 = (Icges(3,4) * t499 - Icges(3,2) * t497) * t611;
t453 = qJD(2) * t471;
t432 = (rSges(4,3) * t497 + t499 * t537) * t493;
t431 = (Icges(4,5) * t497 + t499 * t534) * t493;
t413 = qJD(5) * t437 + t583;
t411 = -rSges(4,1) * t469 - rSges(4,2) * t470;
t402 = rSges(3,1) * t520 - rSges(3,2) * t468;
t401 = rSges(3,1) * t519 - rSges(3,2) * t466;
t396 = Icges(3,5) * t520 - Icges(3,6) * t468;
t395 = Icges(3,5) * t519 - Icges(3,6) * t466;
t394 = t438 * t498 + t495 * t597;
t393 = -t438 * t495 + t498 * t597;
t389 = t535 * t469;
t384 = -t469 * t570 + t470 * t495;
t383 = t469 * t572 + t470 * t498;
t380 = Icges(3,1) * t451 - Icges(3,4) * t452;
t379 = Icges(3,1) * t449 - Icges(3,4) * t450;
t378 = Icges(3,4) * t451 - Icges(3,2) * t452;
t377 = Icges(3,4) * t449 - Icges(3,2) * t450;
t376 = Icges(3,5) * t451 - Icges(3,6) * t452;
t375 = Icges(3,5) * t449 - Icges(3,6) * t450;
t349 = pkin(4) * t438 + pkin(8) * t437;
t324 = t438 * rSges(5,1) - t437 * rSges(5,2) + rSges(5,3) * t597;
t323 = Icges(5,1) * t438 - Icges(5,4) * t437 + Icges(5,5) * t597;
t322 = Icges(5,4) * t438 - Icges(5,2) * t437 + Icges(5,6) * t597;
t320 = t470 * rSges(5,3) + t469 * t531;
t319 = t468 * rSges(4,3) + t520 * t537;
t318 = t466 * rSges(4,3) + t519 * t537;
t317 = Icges(5,5) * t470 + t469 * t530;
t316 = Icges(5,6) * t470 + t469 * t529;
t314 = Icges(4,5) * t468 + t520 * t534;
t313 = Icges(4,5) * t466 + t519 * t534;
t306 = rSges(4,1) * t525 - rSges(4,2) * t426;
t303 = rSges(4,1) * t524 - rSges(4,2) * t424;
t293 = qJD(5) * t371 + t605;
t292 = qJD(5) * t369 + t606;
t290 = t535 * t525;
t289 = t535 * t524;
t288 = t372 * t498 + t520 * t643;
t287 = -t372 * t495 + t520 * t642;
t286 = t370 * t498 + t519 * t643;
t285 = -t370 * t495 + t519 * t642;
t284 = t426 * t495 + t525 * t570;
t283 = t426 * t498 - t525 * t572;
t282 = t424 * t495 + t524 * t570;
t281 = t424 * t498 - t524 * t572;
t275 = t307 * t584;
t265 = t520 * t304;
t240 = pkin(4) * t372 + pkin(8) * t371;
t239 = pkin(4) * t370 + pkin(8) * t369;
t228 = t426 * rSges(5,3) - t525 * t531;
t227 = t424 * rSges(5,3) - t524 * t531;
t226 = Icges(5,5) * t426 - t525 * t530;
t225 = Icges(5,5) * t424 - t524 * t530;
t224 = Icges(5,6) * t426 - t525 * t529;
t223 = Icges(5,6) * t424 - t524 * t529;
t220 = qJD(2) * t526;
t219 = rSges(6,1) * t394 + rSges(6,2) * t393 + rSges(6,3) * t437;
t218 = Icges(6,1) * t394 + Icges(6,4) * t393 + Icges(6,5) * t437;
t217 = Icges(6,4) * t394 + Icges(6,2) * t393 + Icges(6,6) * t437;
t216 = Icges(6,5) * t394 + Icges(6,6) * t393 + Icges(6,3) * t437;
t211 = rSges(6,1) * t384 + rSges(6,2) * t383 - rSges(6,3) * t649;
t210 = Icges(6,1) * t384 + Icges(6,4) * t383 - Icges(6,5) * t649;
t209 = Icges(6,4) * t384 + Icges(6,2) * t383 - Icges(6,6) * t649;
t208 = Icges(6,5) * t384 + Icges(6,6) * t383 - Icges(6,3) * t649;
t207 = rSges(6,1) * t342 - rSges(6,2) * t343;
t203 = rSges(5,1) * t372 - rSges(5,2) * t371 + rSges(5,3) * t650;
t202 = rSges(5,1) * t370 - rSges(5,2) * t369 + rSges(5,3) * t651;
t199 = Icges(5,1) * t372 - Icges(5,4) * t371 + Icges(5,5) * t650;
t198 = Icges(5,1) * t370 - Icges(5,4) * t369 + Icges(5,5) * t651;
t197 = Icges(5,4) * t372 - Icges(5,2) * t371 + Icges(5,6) * t650;
t196 = Icges(5,4) * t370 - Icges(5,2) * t369 + Icges(5,6) * t651;
t187 = rSges(4,1) * t334 - rSges(4,2) * t333 + rSges(4,3) * t452;
t186 = rSges(4,1) * t332 - rSges(4,2) * t331 + rSges(4,3) * t450;
t153 = rSges(6,1) * t284 + rSges(6,2) * t283 + rSges(6,3) * t653;
t152 = rSges(6,1) * t282 + rSges(6,2) * t281 + rSges(6,3) * t654;
t149 = Icges(6,1) * t284 + Icges(6,4) * t283 + Icges(6,5) * t653;
t148 = Icges(6,1) * t282 + Icges(6,4) * t281 + Icges(6,5) * t654;
t147 = Icges(6,4) * t284 + Icges(6,2) * t283 + Icges(6,6) * t653;
t146 = Icges(6,4) * t282 + Icges(6,2) * t281 + Icges(6,6) * t654;
t145 = Icges(6,5) * t284 + Icges(6,6) * t283 + Icges(6,3) * t653;
t144 = Icges(6,5) * t282 + Icges(6,6) * t281 + Icges(6,3) * t654;
t143 = rSges(6,1) * t237 - rSges(6,2) * t238;
t142 = rSges(6,1) * t235 - rSges(6,2) * t236;
t135 = rSges(6,1) * t288 + rSges(6,2) * t287 + rSges(6,3) * t371;
t134 = rSges(6,1) * t286 + rSges(6,2) * t285 + rSges(6,3) * t369;
t133 = Icges(6,1) * t288 + Icges(6,4) * t287 + Icges(6,5) * t371;
t132 = Icges(6,1) * t286 + Icges(6,4) * t285 + Icges(6,5) * t369;
t131 = Icges(6,4) * t288 + Icges(6,2) * t287 + Icges(6,6) * t371;
t130 = Icges(6,4) * t286 + Icges(6,2) * t285 + Icges(6,6) * t369;
t129 = Icges(6,5) * t288 + Icges(6,6) * t287 + Icges(6,3) * t371;
t128 = Icges(6,5) * t286 + Icges(6,6) * t285 + Icges(6,3) * t369;
t117 = -t477 * t261 + t434 * t368 + t510;
t116 = t262 * t477 - t368 * t433 + t538;
t95 = t261 * t433 - t262 * t434 + t579;
t82 = t368 * t608 - t477 * t186 + t434 * t274 + (-t568 + (-t261 * t604 - t652) * t493) * qJD(2);
t81 = -t368 * t607 + t187 * t477 - t274 * t433 + t350 + (t262 * t604 - t463 * t492) * t611;
t80 = t434 * t263 + t477 * t635 + t507;
t79 = t173 * t477 + t433 * t627 + t514;
t61 = qJD(3) * t544 + t186 * t433 - t187 * t434 + t621;
t41 = -t352 * t110 + t245 * t177 + t434 * t308 + t477 * t631 + t507;
t40 = t111 * t352 - t177 * t244 + t201 * t477 + t433 * t622 + t514;
t37 = t263 * t608 + t434 * t192 + (-t124 - t164) * t477 + (-t568 + (t604 * t635 - t652) * t493) * qJD(2) + t590;
t36 = t125 * t477 + t632 * t433 + (t173 * t584 + t696) * qJD(3) + t511;
t21 = t244 * t49 + t245 * t48 + t352 * t66;
t19 = t111 * t329 + t157 * t477 - t177 * t215 - t244 * t94 + t352 * t74 + t629 * t433 + (t201 * t584 + t452 * t622) * qJD(3) + t511;
t18 = t244 * t45 + t245 * t44 + t352 * t59;
t17 = t244 * t43 + t245 * t42 + t352 * t58;
t4 = [m(3) * t220 + m(4) * t61 + m(5) * t27 + m(6) * t7; (t713 * t668 + (t492 * t722 - t494 * t723) * t493) * t679 + (t714 * t668 + (t492 * t724 - t494 * t725) * t493) * t677 - t726 * t605 / 0.2e1 - t727 * t606 / 0.2e1 + (-t492 * ((t396 * t648 + t468 * t618 - t520 * t616) * t648 - (t395 * t648 + t468 * t619 - t520 * t617) * t647 + (t468 * t613 + t471 * t648 - t520 * t612) * t668) / 0.2e1 + t494 * ((-t396 * t647 + t466 * t618 - t519 * t616) * t648 - (-t395 * t647 + t466 * t619 - t519 * t617) * t647 + (t466 * t613 - t471 * t647 - t519 * t612) * t668) / 0.2e1) * t493 * qJD(2) ^ 2 + ((-t469 * t312 + t470 * t314) * t433 + (-t469 * t311 + t470 * t313) * t434 + (-t469 * t430 + t470 * t431) * t477 + (t100 * t466 + t101 * t468) * qJD(3) + ((qJD(3) * t155 + t247 * t434 + t248 * t433 + t365 * t477) * t497 + t690 * t499) * t493 + (t167 * t597 - t437 * t169 + t438 * t171 + t469 * t195 - t421 * t197 + t422 * t199) * t433 + (t166 * t597 - t437 * t168 + t438 * t170 + t469 * t194 - t421 * t196 + t422 * t198) * t434 + (t258 * t597 - t437 * t259 + t438 * t260 + t469 * t321 - t421 * t322 + t422 * t323) * t477 + (t466 * t77 + t468 * t78 + t645 * t90) * qJD(3)) * t672 + (t82 * (-t261 * t668 + t494 * t565 - t567) + t81 * (t262 * t668 + t492 * t565 + t392) + t61 * ((t261 * t492 + t262 * t494) * t493 + t614) + ((t186 * t492 + t187 * t494) * t493 + t620 - t318 * t433 + t319 * t434 - t615 - (t261 * t468 - t262 * t466) * qJD(3)) * t95 + (-t186 * t668 + t494 * t566 - t568 + t477 * t318 - t434 * t432 - t509 - (-t261 * t645 + t368 * t466) * qJD(3)) * t117 + (t187 * t668 + t492 * t566 + t351 - t319 * t477 + t432 * t433 - t539 - (t262 * t645 - t368 * t468) * qJD(3)) * t116) * m(4) + t703 * t668 / 0.2e1 + t704 * t648 / 0.2e1 + (t690 * t520 + (t258 * t650 - t259 * t371 + t260 * t372 - t322 * t339 + t323 * t340 + t468 * t365 + t426 * t431 + t525 * t707) * t477 + (t166 * t650 - t168 * t371 + t170 * t372 - t196 * t339 + t198 * t340 + t468 * t247 + t426 * t313 + t525 * t709) * t434 + (t167 * t650 - t169 * t371 + t171 * t372 - t197 * t339 + t199 * t340 + t468 * t248 + t426 * t314 + t525 * t708) * t433 + (t466 * t716 + t468 * t715 + t645 * t700) * qJD(3)) * t680 + (t690 * t519 + (t258 * t651 - t259 * t369 + t260 * t370 - t322 * t337 + t323 * t338 + t466 * t365 + t424 * t431 + t524 * t707) * t477 + (t166 * t651 - t168 * t369 + t170 * t370 - t196 * t337 + t198 * t338 + t466 * t247 + t424 * t313 + t524 * t709) * t434 + (t167 * t651 - t169 * t369 + t171 * t370 - t197 * t337 + t199 * t338 + t466 * t248 + t424 * t314 + t524 * t708) * t433 + (t466 * t718 + t468 * t717 + t645 * t701) * qJD(3)) * t678 + ((t668 * t453 + (qJD(2) * t541 + t454 * t499 + t455 * t497) * t493) * t668 + (-(t668 * t375 + (qJD(2) * t543 + t377 * t499 + t379 * t497) * t493) * t494 + (t668 * t376 + (qJD(2) * t542 + t378 * t499 + t380 * t497) * t493) * t492) * t493) * t490 + (t37 * (-t172 * t668 + t512) + t80 * (-t124 * t668 + t513) + t36 * (t173 * t668 + t624) + t79 * (t125 * t668 + t636) + t27 * t561 + t60 * t563 + ((t60 * t125 + t27 * t173 + t37 * t589 + t591 * t80) * t494 + (t36 * t589 + t591 * t79 + t553) * t492) * t493 - t80 * (-t477 * t202 + t434 * t324 + t502) - t79 * (t203 * t477 - t324 * t433 + t508) - t60 * (t202 * t433 - t203 * t434 + t518) - (t80 * (-t172 * t645 + t263 * t466 - t598) + t79 * (t173 * t645 - t263 * t468 - t655) + t60 * (t172 * t468 - t173 * t466 - t656)) * qJD(3)) * m(5) + (-t41 * (-t413 * t110 - t352 * t134 + t292 * t177 + t245 * t219 - t477 * t239 + t434 * t349 + t502) - t40 * (t111 * t413 + t135 * t352 - t177 * t293 - t219 * t244 + t240 * t477 - t349 * t433 + t508) - t35 * (t110 * t293 - t111 * t292 + t134 * t244 - t135 * t245 + t239 * t433 - t240 * t434 + t518) - (t41 * (-t200 * t645 + t308 * t466 - t598) + t40 * (t201 * t645 - t308 * t468 - t655) + t35 * (t200 * t468 - t201 * t466 - t656)) * qJD(3) + t20 * t512 + t41 * t513 + t19 * t624 + t40 * t636 + t7 * t561 + t35 * t563 + ((t20 * t562 + t35 * t698 + t41 * t564 + t7 * t640) * t494 + (t19 * t562 + t40 * t564 + t517) * t492) * t493 + (t19 * t640 + t40 * t698 - t41 * t669 - t702) * t668) * m(6) + (t24 * t668 + (-t14 * t494 + t15 * t492) * t493) * t681 + ((t105 * t437 + t107 * t393 + t109 * t394 + t129 * t421 + t131 * t342 + t133 * t343) * t244 + t49 * t293 + (t104 * t437 + t106 * t393 + t108 * t394 + t128 * t421 + t130 * t342 + t132 * t343) * t245 + t48 * t292 + (t174 * t437 + t175 * t393 + t176 * t394 + t216 * t421 + t217 * t342 + t218 * t343) * t352 + t66 * t413) * t682 + (t66 * t668 + (-t48 * t494 + t49 * t492) * t493) * t683 + (t22 * t668 + (-t10 * t494 + t11 * t492) * t493) * t684 + ((t105 * t369 + t107 * t285 + t109 * t286 + t129 * t337 + t131 * t235 + t133 * t236) * t244 + t43 * t293 + (t104 * t369 + t106 * t285 + t108 * t286 + t128 * t337 + t130 * t235 + t132 * t236) * t245 + t42 * t292 + (t174 * t369 + t175 * t285 + t176 * t286 + t216 * t337 + t217 * t235 + t218 * t236) * t352 + t58 * t413) * t685 + (t23 * t668 + (-t12 * t494 + t13 * t492) * t493) * t686 + ((t105 * t371 + t107 * t287 + t109 * t288 + t129 * t339 + t131 * t237 + t133 * t238) * t244 + t45 * t293 + (t104 * t371 + t106 * t287 + t108 * t288 + t128 * t339 + t130 * t237 + t132 * t238) * t245 + t44 * t292 + (t174 * t371 + t175 * t287 + t176 * t288 + t216 * t339 + t217 * t237 + t218 * t238) * t352 + t59 * t413) * t687 + (t59 * t668 + (-t44 * t494 + t45 * t492) * t493) * t688 - t413 * t21 / 0.2e1 - t292 * t17 / 0.2e1 - t293 * t18 / 0.2e1 + (t699 * t668 + (t492 * t710 - t494 * t711) * t493) * t540 + (0.2e1 * t267 * (-t381 * t668 - t458 * t647) + 0.2e1 * t266 * (t382 * t668 - t458 * t648) + t220 * t527 - (t267 * (-t401 * t668 - t474 * t647) + t266 * (t402 * t668 - t474 * t648)) * qJD(2) + (t526 - (t401 * t492 + t402 * t494) * t611) * (qJD(2) * t527 + qJD(1))) * m(3) - (((t398 * t499 + t400 * t497 + t542) * t492 - (t397 * t499 + t399 * t497 + t543) * t494) * t493 * t611 + ((-t395 * t494 + t396 * t492 + t472 * t499 + t473 * t497 + t541) * t611 + t471 * t490) * t668) * t490 / 0.2e1 + (t58 * t668 + (-t42 * t494 + t43 * t492) * t493) * t689 + (t700 * t668 + (t492 * t715 - t494 * t716) * t493) * t577 + (t701 * t668 + (t492 * t717 - t494 * t718) * t493) * t578 + (t712 * t668 + (t492 * t719 - t494 * t720) * t493) * t671 - t721 * t583 / 0.2e1 + ((-t441 * t452 + t442 * t451 + t453 * t648 + t454 * t520 + t455 * t468) * t668 + (t492 * (-t354 * t452 + t356 * t451 + t376 * t648 + t378 * t520 + t380 * t468) - t494 * (-t353 * t452 + t355 * t451 + t375 * t648 + t377 * t520 + t379 * t468)) * t493) * t487 - ((-t441 * t450 + t442 * t449 - t453 * t647 + t454 * t519 + t455 * t466) * t668 + (t492 * (-t354 * t450 + t356 * t449 - t376 * t647 + t378 * t519 + t380 * t466) - t494 * (-t353 * t450 + t355 * t449 - t375 * t647 + t377 * t519 + t379 * t466)) * t493) * t585 + t647 * t729; (t18 + t726) * t452 / 0.2e1 + (t17 + t727) * t450 / 0.2e1 - t703 * t644 / 0.2e1 - t704 * t520 / 0.2e1 + (t37 * t625 + t80 * (t450 * t263 + t593) + t79 * (t275 + t696) - t27 * t265 - (t80 * t192 + t37 * t263 + t27 * t634) * t519 - (t36 * t627 + t632 * t79 + t553) * t520 + ((t79 * t173 + t635 * t80) * t609 + (t80 * t124 + t37 * t172 + t36 * t634 + t639 * t79) * t499) * t493 - t80 * (t320 * t434 + (-t227 - t302) * t477 + t623) - t79 * (t228 * t477 + (-t320 - t410) * t433 + t626) + (-t639 * t519 - t227 * t433 - (-t228 - t305) * t434 + t691 + t706) * t60) * m(5) + ((-t499 * t714 + t701 * t609) * t493 - t724 * t520 - t725 * t519 + t730) * t677 + ((-t499 * t713 + t700 * t609) * t493 - t722 * t520 - t723 * t519 + t731) * t679 + ((-t499 * t712 + t699 * t609) * t493 - t719 * t520 - t720 * t519 + t732) * t671 + ((-t105 * t649 + t107 * t383 + t109 * t384 + t145 * t421 + t147 * t342 + t149 * t343) * t244 + (-t104 * t649 + t106 * t383 + t108 * t384 + t144 * t421 + t146 * t342 + t148 * t343) * t245 + (-t174 * t649 + t175 * t383 + t176 * t384 + t208 * t421 + t209 * t342 + t210 * t343) * t352 + (-t469 * t66 + t48 * t524 + t49 * t525) * t602) * t682 + (-t17 * t524 - t18 * t525 + t21 * t469) * t602 / 0.2e1 + ((t105 * t653 + t107 * t283 + t109 * t284 + t145 * t339 + t147 * t237 + t149 * t238) * t244 + (t104 * t653 + t106 * t283 + t108 * t284 + t144 * t339 + t146 * t237 + t148 * t238) * t245 + (t174 * t653 + t175 * t283 + t176 * t284 + t208 * t339 + t209 * t237 + t210 * t238) * t352 + (t44 * t524 + t45 * t525 - t469 * t59) * t602) * t687 + ((t105 * t654 + t107 * t281 + t109 * t282 + t145 * t337 + t147 * t235 + t149 * t236) * t244 + (t104 * t654 + t106 * t281 + t108 * t282 + t144 * t337 + t146 * t235 + t148 * t236) * t245 + (t174 * t654 + t175 * t281 + t176 * t282 + t208 * t337 + t209 * t235 + t210 * t236) * t352 + (t42 * t524 + t43 * t525 - t469 * t58) * t602) * t685 + ((t424 * t167 - t337 * t224 + t338 * t226) * t433 + (t424 * t166 - t337 * t223 + t338 * t225) * t434 + (t424 * t258 - t337 * t316 + t338 * t317) * t477 + t424 * t504 - t519 * t515 - t692 * t524) * t678 + (-t519 * t711 - t520 * t710 - t699 * t644) * t540 + (-t519 * t716 - t520 * t715 - t700 * t644) * t577 + (-t519 * t718 - t520 * t717 - t701 * t644) * t578 + (t21 + t721) * t558 + ((t470 * t167 - t421 * t224 + t422 * t226) * t433 + (t470 * t166 - t421 * t223 + t422 * t225) * t434 + (t470 * t258 - t421 * t316 + t422 * t317) * t477 + t470 * t504 - t515 * t644 + t692 * t469) * t672 + (t20 * t625 - t7 * t265 - (t20 * t633 + t7 * t594) * t519 - (t19 * t592 + t517) * t520 + (t19 * t594 + t702) * t644 + (t593 + t633 * t450 - (t232 + t94) * t519 + ((-t110 + t631) * t609 + t669 * t499) * t493 + t152 * t352 - t211 * t245 - t389 * t434 - t623 - (t110 * t469 + t177 * t524) * t602 + (-t289 + t302) * t477) * t41 + (t275 + t592 * t452 - t599 * t520 + (t499 * t600 + t609 * t640) * t493 - t153 * t352 + t211 * t244 + t290 * t477 - t626 - (-t111 * t469 - t177 * t525) * t602 + (t389 + t410) * t433) * t40 + (t641 * t452 + t594 * t450 - t600 * t519 - t152 * t244 + t153 * t245 + t289 * t433 - (t110 * t525 - t111 * t524) * t602 + (-t290 + t305) * t434 + t691) * t35) * m(6) + ((t426 * t167 - t339 * t224 + t340 * t226) * t433 + (t426 * t166 - t339 * t223 + t340 * t225) * t434 + (t426 * t258 - t339 * t316 + t340 * t317) * t477 + t426 * t504 - t520 * t515 - t692 * t525) * t680 + (t61 * (-t261 * t520 + t262 * t519) + (t116 * t520 - t117 * t519) * t274 + (-t116 * t452 + t117 * t450 - t519 * t82 + t520 * t81) * t368 + ((t116 * t262 - t117 * t261) * t609 + (-t116 * t187 + t117 * t186 + t261 * t82 - t262 * t81) * t499) * t493 - t117 * (-t303 * t477 + t411 * t434) - t116 * (t306 * t477 - t411 * t433) + (-t186 * t520 + t187 * t519 - t303 * t433 + t306 * t434 + t544) * t95) * m(4) + (-t14 * t519 - t15 * t520 + t48 * t450 + t49 * t452 + (-t24 * t499 + t609 * t66) * t493) * t681 + (-t48 * t519 - t49 * t520 - t644 * t66) * t683 + (-t10 * t519 - t11 * t520 + t42 * t450 + t43 * t452 + (-t22 * t499 + t58 * t609) * t493) * t684 + (-t12 * t519 - t13 * t520 + t44 * t450 + t45 * t452 + (-t23 * t499 + t59 * t609) * t493) * t686 + (-t44 * t519 - t45 * t520 - t59 * t644) * t688 + (-t42 * t519 - t43 * t520 - t58 * t644) * t689 + t519 * t729; (-t19 * t524 - t20 * t525 + t35 * t695 + t40 * t694 + t41 * t693 + t469 * t7) * m(6) + (t27 * t469 - t36 * t524 - t37 * t525 + t60 * t695 + t693 * t80 + t694 * t79) * m(5); t255 * t18 / 0.2e1 + t339 * t2 / 0.2e1 + (t337 * t44 + t339 * t45 + t421 * t59) * t688 + (t12 * t337 + t13 * t339 + t23 * t421 + t253 * t44 + t255 * t45 + t363 * t59) * t686 + t253 * t17 / 0.2e1 + t337 * t1 / 0.2e1 + (t337 * t42 + t339 * t43 + t421 * t58) * t689 + (t10 * t337 + t11 * t339 + t22 * t421 + t253 * t42 + t255 * t43 + t363 * t58) * t684 + t363 * t21 / 0.2e1 + t421 * t3 / 0.2e1 + (t337 * t48 + t339 * t49 + t421 * t66) * t683 + (t14 * t337 + t15 * t339 + t24 * t421 + t253 * t48 + t255 * t49 + t363 * t66) * t681 + (t237 * t505 + t238 * t506 + t339 * t516) * t687 + (t235 * t505 + t236 * t506 + t337 * t516) * t685 + (t342 * t505 + t343 * t506 + t421 * t516) * t682 + (t20 * (-t110 * t421 + t177 * t337) + t19 * (t111 * t421 - t177 * t339) + t7 * (t110 * t339 - t111 * t337) + (-t110 * t363 + t142 * t352 + t177 * t253 - t207 * t245 + t337 * t94 - t421 * t73) * t41 + (t111 * t363 - t143 * t352 - t177 * t255 + t207 * t244 - t339 * t94 + t421 * t74) * t40 + (t110 * t255 - t111 * t253 - t142 * t244 + t143 * t245 - t337 * t74 + t339 * t73) * t35) * m(6);];
tauc = t4(:);

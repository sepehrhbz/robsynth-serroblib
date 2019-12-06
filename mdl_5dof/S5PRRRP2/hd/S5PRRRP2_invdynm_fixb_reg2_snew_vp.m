% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
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
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:42
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRRP2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP2_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP2_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRP2_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP2_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:42:14
% EndTime: 2019-12-05 16:42:23
% DurationCPUTime: 10.07s
% Computational Cost: add. (23050->447), mult. (34897->522), div. (0->0), fcn. (22097->8), ass. (0->312)
t855 = qJD(4) ^ 2;
t839 = qJD(2) + qJD(3);
t837 = t839 ^ 2;
t849 = sin(qJ(4));
t842 = t849 ^ 2;
t931 = t842 * t837;
t818 = t855 + t931;
t852 = cos(qJ(4));
t823 = t849 * t837 * t852;
t813 = qJDD(4) - t823;
t909 = t852 * t813;
t765 = -t849 * t818 + t909;
t898 = qJD(4) * t839;
t828 = t852 * t898;
t838 = qJDD(2) + qJDD(3);
t917 = t849 * t838;
t794 = 0.2e1 * t828 + t917;
t850 = sin(qJ(3));
t853 = cos(qJ(3));
t714 = t850 * t765 + t853 * t794;
t717 = t853 * t765 - t850 * t794;
t851 = sin(qJ(2));
t854 = cos(qJ(2));
t659 = t854 * t714 + t851 * t717;
t663 = t851 * t714 - t854 * t717;
t846 = sin(pkin(8));
t847 = cos(pkin(8));
t998 = qJ(1) * (t846 * t659 + t847 * t663);
t997 = qJ(1) * (t847 * t659 - t846 * t663);
t996 = pkin(1) * t659;
t995 = pkin(5) * t659;
t920 = t849 * t813;
t758 = t852 * t818 + t920;
t994 = -pkin(1) * t758 - pkin(5) * t663;
t914 = t850 * t838;
t803 = t853 * t837 + t914;
t905 = t853 * t838;
t806 = t850 * t837 - t905;
t738 = t854 * t803 - t851 * t806;
t844 = g(3) - qJDD(1);
t776 = pkin(6) * t803 - t853 * t844;
t961 = pkin(6) * t806 - t850 * t844;
t671 = pkin(5) * t738 + t854 * t776 - t851 * t961;
t743 = t851 * t803 + t854 * t806;
t960 = t847 * t738 - t846 * t743;
t974 = pkin(5) * t743 + t851 * t776 + t854 * t961;
t991 = qJ(1) * t960 + t847 * t671 - t846 * t974;
t827 = t849 * t898;
t908 = t852 * t838;
t797 = -0.2e1 * t827 + t908;
t910 = t852 * t797;
t923 = t849 * t794;
t732 = -t910 + t923;
t843 = t852 ^ 2;
t808 = (t842 - t843) * t837;
t700 = t850 * t732 + t853 * t808;
t704 = t853 * t732 - t850 * t808;
t643 = t854 * t700 + t851 * t704;
t644 = t851 * t700 - t854 * t704;
t990 = t847 * t643 - t846 * t644;
t989 = t846 * t643 + t847 * t644;
t930 = t843 * t837;
t820 = -t855 + t930;
t763 = -t852 * t820 + t920;
t724 = t850 * t763 + t852 * t905;
t727 = t853 * t763 - t850 * t908;
t673 = t854 * t724 + t851 * t727;
t675 = t851 * t724 - t854 * t727;
t988 = t847 * t673 - t846 * t675;
t987 = t846 * t673 + t847 * t675;
t975 = t846 * t738 + t847 * t743;
t986 = qJ(1) * t975 + t846 * t671 + t847 * t974;
t985 = pkin(2) * t714;
t984 = pkin(6) * t714;
t982 = -pkin(2) * t758 + pkin(6) * t717;
t816 = t846 * g(1) - t847 * g(2);
t817 = t847 * g(1) + t846 * g(2);
t770 = t851 * t816 - t854 * t817;
t856 = qJD(2) ^ 2;
t752 = -t856 * pkin(2) + t770;
t868 = t854 * t816 + t851 * t817;
t863 = qJDD(2) * pkin(2) + t868;
t696 = t850 * t752 - t853 * t863;
t697 = t853 * t752 + t850 * t863;
t888 = t850 * t696 + t853 * t697;
t634 = t853 * t696 - t850 * t697;
t903 = t854 * t634;
t597 = -t851 * t888 + t903;
t912 = t851 * t634;
t971 = t854 * t888 + t912;
t981 = t846 * t597 + t847 * t971;
t980 = t847 * t597 - t846 * t971;
t887 = t854 * t770 - t851 * t868;
t705 = -t851 * t770 - t854 * t868;
t925 = t847 * t705;
t970 = -t846 * t887 + t925;
t929 = t846 * t705;
t969 = t847 * t887 + t929;
t968 = -pkin(3) * t794 - pkin(7) * t765;
t965 = pkin(3) * t758;
t964 = pkin(7) * t758;
t693 = -t837 * pkin(3) + t838 * pkin(7) + t697;
t830 = t852 * t844;
t875 = -pkin(4) * t852 - qJ(5) * t849;
t933 = t875 * t837;
t651 = -qJDD(4) * pkin(4) - t855 * qJ(5) + (t693 + t933) * t849 + qJDD(5) + t830;
t812 = qJDD(4) + t823;
t821 = -t855 - t930;
t963 = pkin(4) * t812 + qJ(5) * t821 - t651;
t795 = t828 + t917;
t962 = t795 + t828;
t814 = t851 * qJDD(2) + t854 * t856;
t781 = pkin(5) * t814 - t854 * t844;
t815 = t854 * qJDD(2) - t851 * t856;
t873 = -pkin(5) * t815 - t851 * t844;
t949 = t847 * t814 + t846 * t815;
t959 = qJ(1) * t949 + t847 * t781 - t846 * t873;
t753 = -t846 * t814 + t847 * t815;
t958 = -qJ(1) * t753 + t846 * t781 + t847 * t873;
t680 = t849 * t693 + t830;
t681 = t852 * t693 - t849 * t844;
t621 = t849 * t680 + t852 * t681;
t754 = t849 * t820 + t909;
t946 = pkin(1) * t844;
t800 = t852 * t812;
t755 = t849 * t821 + t800;
t945 = pkin(3) * t755;
t921 = t849 * t812;
t762 = t852 * t821 - t921;
t713 = t850 * t762 + t853 * t797;
t716 = t853 * t762 - t850 * t797;
t658 = t854 * t713 + t851 * t716;
t942 = pkin(5) * t658;
t899 = t842 + t843;
t799 = t899 * t838;
t807 = t899 * t837;
t737 = t850 * t799 + t853 * t807;
t741 = t853 * t799 - t850 * t807;
t689 = t854 * t737 + t851 * t741;
t941 = pkin(5) * t689;
t940 = pkin(6) * t713;
t939 = pkin(6) * t737;
t938 = pkin(7) * t755;
t661 = -t851 * t713 + t854 * t716;
t937 = qJ(1) * (t847 * t658 + t846 * t661);
t690 = -t851 * t737 + t854 * t741;
t936 = qJ(1) * (t847 * t689 + t846 * t690);
t932 = t839 * t849;
t926 = t846 * t844;
t924 = t847 * t844;
t692 = -t838 * pkin(3) - t837 * pkin(7) + t696;
t686 = t849 * t692;
t922 = t849 * t797;
t687 = t852 * t692;
t911 = t852 * t794;
t902 = -pkin(3) * t692 + pkin(7) * t621;
t901 = pkin(3) * t797 + pkin(7) * t762;
t900 = pkin(3) * t807 + pkin(7) * t799;
t897 = (qJD(5) * qJD(4));
t894 = t686 + t968;
t893 = -t687 + t901;
t601 = t850 * t621 - t853 * t692;
t892 = pkin(2) * t601 + t902;
t891 = -pkin(1) * t755 + pkin(5) * t661;
t890 = -pkin(2) * t755 + pkin(6) * t716;
t885 = -t846 * t816 - t847 * t817;
t884 = t850 * t823;
t883 = t853 * t823;
t835 = 2 * t897;
t870 = -t855 * pkin(4) + qJDD(4) * qJ(5) + t852 * t933 + t681;
t650 = t835 + t870;
t640 = pkin(4) * t807 + t650;
t641 = qJ(5) * t807 + t651;
t882 = t852 * t640 + t849 * t641 + t900;
t881 = t900 + t621;
t880 = t894 - t985;
t710 = pkin(2) * t713;
t879 = t710 + t893;
t877 = -pkin(2) * t806 - t696;
t876 = -pkin(4) * t651 + qJ(5) * t650;
t874 = pkin(4) * t849 - qJ(5) * t852;
t736 = pkin(2) * t737;
t872 = t736 + t882;
t871 = t736 + t881;
t620 = t852 * t680 - t849 * t681;
t729 = t911 + t922;
t869 = t847 * t816 - t846 * t817;
t796 = -t827 + t908;
t862 = -t796 * pkin(4) - t962 * qJ(5) + t692;
t860 = 0.2e1 * qJD(5) * t932 - t862;
t628 = -pkin(4) * t827 + qJ(5) * t794 + t860;
t867 = pkin(4) * t911 + t849 * t628 - t968;
t629 = (t797 - t827) * pkin(4) + t860;
t866 = qJ(5) * t922 + t852 * t629 + t901;
t865 = t867 + t985;
t864 = t710 + t866;
t605 = t852 * t650 + t849 * t651;
t638 = (pkin(4) * qJD(4) - 0.2e1 * qJD(5)) * t932 + t862;
t861 = pkin(7) * t605 + (-pkin(3) + t875) * t638;
t859 = pkin(4) * t818 + qJ(5) * t813 + t870;
t584 = t850 * t605 - t853 * t638;
t858 = pkin(2) * t584 + t861;
t857 = -pkin(2) * t803 - t697;
t819 = -t855 + t931;
t789 = t874 * t838;
t788 = t899 * t898;
t772 = t850 * qJDD(4) + t853 * t788;
t771 = -t853 * qJDD(4) + t850 * t788;
t768 = t852 * t795 - t842 * t898;
t767 = -t849 * t796 - t843 * t898;
t764 = t849 * t819 + t800;
t757 = -t852 * t819 + t921;
t747 = t962 * t849;
t746 = (t796 - t827) * t852;
t735 = pkin(6) * t741;
t734 = -pkin(1) * t814 - t770;
t733 = pkin(1) * t815 + t868;
t728 = t853 * t764 + t849 * t914;
t725 = t850 * t764 - t849 * t905;
t722 = t853 * t768 - t884;
t721 = t853 * t767 + t884;
t720 = t850 * t768 + t883;
t719 = t850 * t767 - t883;
t708 = -t851 * t771 + t854 * t772;
t707 = t854 * t771 + t851 * t772;
t698 = pkin(1) * t705;
t695 = pkin(5) * t887 + t946;
t683 = pkin(1) * t689;
t682 = pkin(5) * t690;
t677 = -t851 * t725 + t854 * t728;
t674 = t854 * t725 + t851 * t728;
t667 = -t851 * t720 + t854 * t722;
t666 = -t851 * t719 + t854 * t721;
t665 = t854 * t720 + t851 * t722;
t664 = t854 * t719 + t851 * t721;
t657 = t687 + t964;
t656 = t686 - t938;
t655 = pkin(1) * t658;
t653 = t681 + t965;
t652 = t680 - t945;
t649 = -pkin(1) * t743 + t877;
t648 = -pkin(1) * t738 + t857;
t647 = -t846 * t707 + t847 * t708;
t646 = t847 * t707 + t846 * t708;
t631 = pkin(2) * t634;
t630 = pkin(2) * t844 + pkin(6) * t888;
t624 = qJ(1) * (-t846 * t689 + t847 * t690);
t623 = -t945 - t963;
t622 = -t859 - (2 * t897) - t965;
t617 = -t846 * t674 + t847 * t677;
t616 = t847 * t674 + t846 * t677;
t615 = -t846 * t665 + t847 * t667;
t614 = -t846 * t664 + t847 * t666;
t613 = t847 * t665 + t846 * t667;
t612 = t847 * t664 + t846 * t666;
t611 = -pkin(4) * t923 + t852 * t628 - t964;
t610 = qJ(5) * t910 - t849 * t629 - t938;
t609 = t853 * t620 - t939;
t608 = t850 * t620 + t735;
t606 = qJ(1) * (-t846 * t658 + t847 * t661);
t604 = t849 * t650 - t852 * t651;
t602 = t853 * t621 + t850 * t692;
t599 = -t849 * t640 + t852 * t641;
t594 = -t850 * t653 + t853 * t657 + t984;
t593 = -t850 * t652 + t853 * t656 - t940;
t592 = t880 - t996;
t591 = t655 + t879;
t590 = t853 * t653 + t850 * t657 - t982;
t589 = t853 * t652 + t850 * t656 + t890;
t588 = t683 + t871;
t587 = t853 * t599 - t850 * t789 - t939;
t586 = t850 * t599 + t853 * t789 + t735;
t585 = t853 * t605 + t850 * t638;
t583 = t865 + t996;
t582 = t655 + t864;
t580 = t683 + t872;
t579 = -pkin(1) * t597 - t631;
t578 = t853 * t610 - t850 * t623 - t940;
t577 = t853 * t611 - t850 * t622 - t984;
t576 = t850 * t610 + t853 * t623 + t890;
t575 = t850 * t611 + t853 * t622 + t982;
t574 = -pkin(3) * t604 - t876;
t573 = -pkin(7) * t604 + t638 * t874;
t572 = -t851 * t608 + t854 * t609 - t941;
t571 = t854 * t608 + t851 * t609 + t682;
t570 = -t851 * t601 + t854 * t602;
t569 = t854 * t601 + t851 * t602;
t568 = pkin(5) * t597 + pkin(6) * t903 - t851 * t630;
t567 = pkin(5) * t971 + pkin(6) * t912 + t854 * t630 + t946;
t566 = -pkin(6) * t601 - (pkin(3) * t850 - pkin(7) * t853) * t620;
t565 = -t851 * t590 + t854 * t594 + t995;
t564 = -t851 * t589 + t854 * t593 - t942;
t563 = t854 * t590 + t851 * t594 - t994;
t562 = t854 * t589 + t851 * t593 + t891;
t561 = -t851 * t586 + t854 * t587 - t941;
t560 = t854 * t586 + t851 * t587 + t682;
t559 = -t851 * t584 + t854 * t585;
t558 = t854 * t584 + t851 * t585;
t557 = pkin(6) * t602 - (-pkin(3) * t853 - pkin(7) * t850 - pkin(2)) * t620;
t556 = -t851 * t576 + t854 * t578 - t942;
t555 = -t851 * t575 + t854 * t577 - t995;
t554 = t854 * t576 + t851 * t578 + t891;
t553 = t854 * t575 + t851 * t577 + t994;
t552 = pkin(1) * t569 + t892;
t551 = -pkin(6) * t584 + t853 * t573 - t850 * t574;
t550 = -pkin(2) * t604 + pkin(6) * t585 + t850 * t573 + t853 * t574;
t549 = pkin(1) * t558 + t858;
t548 = -pkin(5) * t569 - t851 * t557 + t854 * t566;
t547 = pkin(1) * t620 + pkin(5) * t570 + t854 * t557 + t851 * t566;
t546 = -pkin(5) * t558 - t851 * t550 + t854 * t551;
t545 = -pkin(1) * t604 + pkin(5) * t559 + t854 * t550 + t851 * t551;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t926, -t924, -t869, -qJ(1) * t869, 0, 0, t753, 0, -t949, 0, t958, t959, t970, pkin(5) * t925 + qJ(1) * t970 - t846 * t695, 0, 0, -t975, 0, -t960, 0, t986, t991, t980, qJ(1) * t980 - t846 * t567 + t847 * t568, t615, t989, t617, t614, t987, t647, -t846 * t562 + t847 * t564 - t937, -t846 * t563 + t847 * t565 + t997, -t846 * t571 + t847 * t572 - t936, t847 * t548 - t846 * t547 - qJ(1) * (t847 * t569 + t846 * t570), t615, t617, -t989, t647, -t987, t614, -t846 * t554 + t847 * t556 - t937, -t846 * t560 + t847 * t561 - t936, -t846 * t553 + t847 * t555 - t997, t847 * t546 - t846 * t545 - qJ(1) * (t847 * t558 + t846 * t559); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t924, -t926, t885, qJ(1) * t885, 0, 0, t949, 0, t753, 0, -t959, t958, t969, pkin(5) * t929 + qJ(1) * t969 + t847 * t695, 0, 0, t960, 0, -t975, 0, -t991, t986, t981, qJ(1) * t981 + t847 * t567 + t846 * t568, t613, -t990, t616, t612, -t988, t646, t847 * t562 + t846 * t564 + t606, t847 * t563 + t846 * t565 + t998, t847 * t571 + t846 * t572 + t624, t846 * t548 + t847 * t547 + qJ(1) * (-t846 * t569 + t847 * t570), t613, t616, t990, t646, t988, t612, t847 * t554 + t846 * t556 + t606, t847 * t560 + t846 * t561 + t624, t847 * t553 + t846 * t555 - t998, t846 * t546 + t847 * t545 + qJ(1) * (-t846 * t558 + t847 * t559); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t816, t817, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t733, t734, 0, -t698, 0, 0, 0, 0, 0, t838, t649, t648, 0, t579, t747, t729, t757, t746, t754, 0, t591, t592, t588, t552, t747, t757, -t729, 0, -t754, t746, t582, t580, t583, t549; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t844, -t816, 0, 0, 0, t815, 0, -t814, 0, t873, t781, t705, pkin(5) * t705, 0, 0, -t743, 0, -t738, 0, t974, t671, t597, t568, t667, t644, t677, t666, t675, t708, t564, t565, t572, t548, t667, t677, -t644, t708, -t675, t666, t556, t561, t555, t546; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t844, 0, -t817, 0, 0, 0, t814, 0, t815, 0, -t781, t873, t887, t695, 0, 0, t738, 0, -t743, 0, -t671, t974, t971, t567, t665, -t643, t674, t664, -t673, t707, t562, t563, t571, t547, t665, t674, t643, t707, t673, t664, t554, t560, t553, t545; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t816, t817, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t733, t734, 0, -t698, 0, 0, 0, 0, 0, t838, t649, t648, 0, t579, t747, t729, t757, t746, t754, 0, t591, t592, t588, t552, t747, t757, -t729, 0, -t754, t746, t582, t580, t583, t549; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t856, 0, 0, -t844, -t868, 0, 0, 0, -t806, 0, -t803, 0, t961, t776, t634, pkin(6) * t634, t722, -t704, t728, t721, -t727, t772, t593, t594, t609, t566, t722, t728, t704, t772, t727, t721, t578, t587, t577, t551; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t856, 0, qJDD(2), 0, t844, 0, t770, 0, 0, 0, t803, 0, -t806, 0, -t776, t961, t888, t630, t720, -t700, t725, t719, -t724, t771, t589, t590, t608, t557, t720, t725, t700, t771, t724, t719, t576, t586, t575, t550; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t868, -t770, 0, 0, 0, 0, 0, 0, 0, t838, t877, t857, 0, -t631, t747, t729, t757, t746, t754, 0, t879, t880, t871, t892, t747, t757, -t729, 0, -t754, t746, t864, t872, t865, t858; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t838, 0, -t837, 0, 0, -t844, t696, 0, t768, -t732, t764, t767, -t763, t788, t656, t657, t620, pkin(7) * t620, t768, t764, t732, t788, t763, t767, t610, t599, t611, t573; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t837, 0, t838, 0, t844, 0, t697, 0, t823, -t808, -t917, -t823, -t908, -qJDD(4), t652, t653, 0, pkin(3) * t620, t823, -t917, t808, -qJDD(4), t908, -t823, t623, t789, t622, t574; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t838, -t696, -t697, 0, 0, t747, t729, t757, t746, t754, 0, t893, t894, t881, t902, t747, t757, -t729, 0, -t754, t746, t866, t882, t867, t861; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t795, t797, t812, -t828, t820, t828, 0, t692, t680, 0, t795, t812, -t797, t828, -t820, -t828, qJ(5) * t797, t641, t628, -qJ(5) * t638; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t827, t794, -t819, t796, t813, -t827, -t692, 0, t681, 0, t827, -t819, -t794, -t827, -t813, t796, t629, t640, pkin(4) * t794, -pkin(4) * t638; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t823, t808, t917, t823, t908, qJDD(4), -t680, -t681, 0, 0, -t823, t917, -t808, qJDD(4), -t908, t823, t963, -t789, t835 + t859, t876; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t795, t812, -t797, t828, -t820, -t828, 0, t651, -t638, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t823, t917, -t808, qJDD(4), -t908, t823, -t651, 0, t650, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t827, t819, t794, t827, t813, -t796, t638, -t650, 0, 0;];
m_new_reg = t1;

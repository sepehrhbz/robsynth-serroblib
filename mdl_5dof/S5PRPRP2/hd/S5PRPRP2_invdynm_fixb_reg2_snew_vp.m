% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRPRP2
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
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:31
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRPRP2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP2_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRP2_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRPRP2_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPRP2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP2_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:31:19
% EndTime: 2019-12-05 15:31:27
% DurationCPUTime: 8.98s
% Computational Cost: add. (22452->501), mult. (51407->625), div. (0->0), fcn. (32568->8), ass. (0->365)
t872 = sin(pkin(7));
t876 = sin(qJ(2));
t878 = cos(qJ(2));
t874 = cos(pkin(7));
t839 = t874 * g(1) + t872 * g(2);
t925 = t872 * g(1) - t874 * g(2);
t890 = t878 * t839 - t876 * t925;
t922 = t876 * t839 + t878 * t925;
t924 = -t876 * t922 - t878 * t890;
t735 = t876 * t890 - t878 * t922;
t966 = t874 * t735;
t1015 = -t872 * t924 + t966;
t971 = t872 * t735;
t1014 = t874 * t924 + t971;
t1000 = 2 * qJD(3);
t871 = sin(pkin(8));
t875 = sin(qJ(4));
t945 = qJD(2) * t875;
t933 = t871 * t945;
t843 = qJD(4) * t933;
t858 = t871 * qJDD(2);
t877 = cos(qJ(4));
t812 = t858 * t877 - t843;
t879 = qJD(2) ^ 2;
t773 = -qJDD(2) * pkin(2) - t879 * qJ(3) + qJDD(3) - t922;
t873 = cos(pkin(8));
t992 = pkin(3) * t873;
t907 = -pkin(6) * t871 - t992;
t883 = qJDD(2) * t907 + t773;
t749 = t877 * t883;
t860 = t873 * qJDD(2);
t851 = t860 - qJDD(4);
t946 = qJD(2) * t871;
t931 = qJD(5) * t946;
t894 = t851 * pkin(4) + 0.2e1 * t877 * t931 - t749;
t776 = -t879 * pkin(2) + qJDD(2) * qJ(3) - t890;
t828 = t907 * qJD(2);
t898 = t776 + (t1000 + t828) * qJD(2);
t869 = g(3) - qJDD(1);
t973 = t871 * t869;
t730 = t873 * t898 - t973;
t865 = t871 ^ 2;
t955 = t877 * t879;
t899 = pkin(4) * t865 * t955 + t730;
t852 = t873 * qJD(2) - qJD(4);
t935 = t852 * t946;
t650 = t875 * (-qJ(5) * t935 + t899) + t812 * qJ(5) + t894;
t937 = t875 * t955;
t838 = t865 * t937;
t810 = -t838 - t851;
t1013 = pkin(4) * t810 - t650;
t940 = t876 * qJDD(2);
t836 = t878 * t879 + t940;
t939 = t878 * qJDD(2);
t837 = -t876 * t879 + t939;
t1004 = t874 * t836 + t872 * t837;
t807 = pkin(5) * t836 - t878 * t869;
t904 = -pkin(5) * t837 - t876 * t869;
t1012 = qJ(1) * t1004 + t874 * t807 - t872 * t904;
t788 = -t872 * t836 + t874 * t837;
t1011 = -qJ(1) * t788 + t872 * t807 + t874 * t904;
t881 = t873 ^ 2;
t824 = (t865 + t881) * t873 * t879;
t929 = t873 * t939;
t795 = -t876 * t824 + t929;
t797 = t878 * t824 + t873 * t940;
t1010 = t874 * t795 - t872 * t797;
t1009 = t872 * t795 + t874 * t797;
t855 = t873 * t869;
t921 = qJD(2) * t1000 + t776;
t746 = t871 * t921 + t855;
t747 = t873 * t921 - t973;
t697 = t871 * t746 + t873 * t747;
t1003 = -t874 * t839 - t872 * t925;
t1001 = -t872 * t839 + t874 * t925;
t849 = t852 ^ 2;
t942 = qJDD(2) * t875;
t944 = qJD(2) * t877;
t778 = (t942 + (qJD(4) + t852) * t944) * t871;
t934 = t852 * t945;
t941 = qJDD(2) * t877;
t780 = -t843 + (-t934 + t941) * t871;
t726 = -t877 * t778 + t875 * t780;
t867 = t875 ^ 2;
t975 = t865 * t879;
t850 = t867 * t975;
t868 = t877 ^ 2;
t938 = t868 * t975;
t817 = t850 + t938;
t706 = t871 * t726 + t873 * t817;
t999 = pkin(2) * t706;
t799 = -t938 - t849;
t809 = -t838 + t851;
t957 = t877 * t809;
t753 = -t875 * t799 + t957;
t886 = -t843 + (t934 + t941) * t871;
t711 = t871 * t753 - t873 * t886;
t998 = pkin(2) * t711;
t815 = -t850 - t849;
t961 = t875 * t810;
t763 = t877 * t815 - t961;
t777 = (t942 + (qJD(4) - t852) * t944) * t871;
t718 = t871 * t763 - t873 * t777;
t997 = pkin(2) * t718;
t724 = -t875 * t778 - t877 * t780;
t996 = pkin(3) * t724;
t962 = t875 * t809;
t752 = t877 * t799 + t962;
t995 = pkin(3) * t752;
t956 = t877 * t810;
t760 = t875 * t815 + t956;
t994 = pkin(3) * t760;
t993 = pkin(3) * t871;
t991 = pkin(4) * t650;
t990 = pkin(4) * t780;
t708 = t873 * t726 - t871 * t817;
t656 = t876 * t708 - t878 * t724;
t988 = pkin(5) * t656;
t712 = t873 * t753 + t871 * t886;
t670 = t876 * t712 - t878 * t752;
t987 = pkin(5) * t670;
t721 = t873 * t763 + t871 * t777;
t677 = t876 * t721 - t878 * t760;
t986 = pkin(5) * t677;
t985 = pkin(6) * t724;
t984 = pkin(6) * t752;
t983 = pkin(6) * t760;
t658 = t878 * t708 + t876 * t724;
t982 = qJ(1) * (t874 * t656 + t872 * t658);
t672 = t878 * t712 + t876 * t752;
t981 = qJ(1) * (t874 * t670 + t872 * t672);
t680 = t878 * t721 + t876 * t760;
t980 = qJ(1) * (t874 * t677 + t872 * t680);
t978 = qJ(3) * t706;
t977 = qJ(3) * t711;
t976 = qJ(3) * t718;
t768 = t871 * t773;
t974 = t871 * t851;
t972 = t871 * t873;
t967 = t872 * t869;
t769 = t873 * t773;
t965 = t874 * t869;
t964 = t875 * t650;
t729 = t871 * t898 + t855;
t963 = t875 * t729;
t960 = t876 * t773;
t959 = t877 * t650;
t958 = t877 * t729;
t954 = t878 * t773;
t953 = -pkin(2) * t724 + qJ(3) * t708;
t952 = -pkin(2) * t752 + qJ(3) * t712;
t951 = -pkin(2) * t760 + qJ(3) * t721;
t950 = pkin(3) * t817 + pkin(6) * t726;
t689 = t877 * t730 + t875 * t883;
t949 = -pkin(2) * t773 + qJ(3) * t697;
t948 = pkin(3) * t777 - pkin(6) * t763;
t947 = pkin(3) * t886 - pkin(6) * t753;
t848 = t879 * t972;
t936 = pkin(2) * t860 - qJ(3) * t824 - t769;
t932 = t871 * t944;
t930 = t871 * t860;
t928 = -pkin(1) * t706 + pkin(5) * t658;
t927 = -pkin(1) * t711 + pkin(5) * t672;
t926 = -pkin(1) * t718 + pkin(5) * t680;
t688 = t875 * t730 - t749;
t638 = t875 * t688 + t877 * t689;
t808 = -t852 * pkin(4) - qJ(5) * t932;
t923 = -t808 * t877 - t828;
t864 = t871 * t865;
t920 = t864 * t937;
t910 = t875 * t931;
t841 = -0.2e1 * t910;
t811 = (-qJD(4) * t944 - t942) * t871;
t902 = pkin(4) * t850 - t811 * qJ(5) - t852 * t808 - t689;
t651 = t841 - t902;
t608 = t875 * t651 - t959;
t909 = -t811 * pkin(4) - qJ(5) * t850 + qJDD(5) + t855;
t683 = (t776 + (t1000 - t923) * qJD(2)) * t871 + t909;
t621 = -pkin(4) * t683 + qJ(5) * t651;
t576 = -pkin(6) * t608 + qJ(5) * t959 - t875 * t621;
t594 = -pkin(3) * t608 + t991;
t609 = t877 * t651 + t964;
t600 = t873 * t609 + t871 * t683;
t919 = -pkin(2) * t608 + qJ(3) * t600 + t871 * t576 + t873 * t594;
t643 = pkin(4) * t817 - qJ(5) * t778 + t651;
t912 = t852 * t933;
t645 = t899 * t875 + (t780 + t812 - t912) * qJ(5) + t894;
t597 = -t875 * t643 + t877 * t645 - t985;
t698 = t990 - t996;
t918 = t871 * t597 + t873 * t698 + t953;
t891 = pkin(4) * t799 + t902;
t633 = t841 - t891 - t995;
t666 = -qJ(5) * t799 + t683;
t743 = -pkin(4) * t886 + qJ(5) * t809;
t634 = t877 * t666 - t875 * t743 - t984;
t917 = t873 * t633 + t871 * t634 + t952;
t639 = -t994 - t1013;
t655 = -pkin(4) * t777 + qJ(5) * t815 - t909 + (qJD(2) * t923 - t921) * t871;
t642 = -qJ(5) * t956 - t875 * t655 - t983;
t916 = t873 * t639 + t871 * t642 + t951;
t660 = t689 - t995;
t690 = t958 - t984;
t915 = t873 * t660 + t871 * t690 + t952;
t663 = t688 - t994;
t692 = t963 - t983;
t914 = t873 * t663 + t871 * t692 + t951;
t857 = t865 * qJDD(2);
t859 = t881 * qJDD(2);
t830 = t859 + t857;
t861 = t881 * t879;
t833 = t861 + t975;
t913 = pkin(2) * t833 + qJ(3) * t830 + t697;
t911 = t852 * t932;
t908 = -pkin(3) * t729 + pkin(6) * t638;
t906 = -t947 + t963;
t905 = -t948 - t958;
t903 = t873 * t838;
t637 = -t877 * t688 + t875 * t689;
t696 = t873 * t746 - t871 * t747;
t800 = t836 * t972;
t801 = -t848 * t876 + t871 * t929;
t901 = t874 * t800 + t872 * t801;
t900 = t872 * t800 - t874 * t801;
t823 = (t871 * t881 + t864) * t879;
t897 = -pkin(2) * t858 + qJ(3) * t823 + t768;
t896 = t638 + t950;
t620 = -t637 - t985;
t895 = t871 * t620 - t724 * t992 + t953;
t893 = t877 * t643 + t875 * t645 + t950;
t892 = t875 * t666 + t877 * t743 - t947;
t889 = -qJ(5) * t961 + t877 * t655 - t948;
t619 = t873 * t638 + t871 * t729;
t888 = qJ(3) * t619 + (-pkin(2) + t907) * t637;
t884 = -pkin(3) * t683 + pkin(6) * t609 + qJ(5) * t964 + t877 * t621;
t845 = 0.2e1 * t930;
t834 = -t861 + t975;
t832 = t873 * t851;
t831 = t859 - t857;
t818 = -t850 + t938;
t816 = t849 - t938;
t814 = t850 - t849;
t796 = t878 * t823 + t871 * t940;
t793 = t876 * t823 - t871 * t939;
t787 = t878 * t831 + t876 * t834;
t786 = t878 * t830 - t876 * t833;
t785 = t876 * t831 - t878 * t834;
t784 = t876 * t830 + t878 * t833;
t782 = (-t867 - t868) * t935;
t771 = t875 * t812 - t868 * t935;
t770 = t877 * t811 - t867 * t935;
t767 = -pkin(1) * t836 + t890;
t766 = pkin(1) * t837 + t922;
t765 = (t812 + t912) * t877;
t764 = (-t811 - t911) * t875;
t762 = t877 * t814 + t962;
t761 = -t875 * t816 + t956;
t759 = t875 * t814 - t957;
t758 = t877 * t816 + t961;
t755 = -t876 * t782 - t878 * t974;
t754 = t878 * t782 - t876 * t974;
t745 = t873 * t765 + t920;
t744 = t873 * t764 - t920;
t740 = t871 * t765 - t903;
t739 = t871 * t764 + t903;
t738 = -t872 * t793 + t874 * t796;
t737 = t874 * t793 + t872 * t796;
t732 = pkin(1) * t735;
t731 = pkin(1) * t869 + pkin(5) * t924;
t727 = -t877 * t777 - t875 * t886;
t725 = -t875 * t777 + t877 * t886;
t720 = t873 * t762 - t871 * t778;
t719 = t873 * t761 + t871 * t780;
t717 = t871 * t762 + t873 * t778;
t716 = t871 * t761 - t873 * t780;
t714 = pkin(1) * t795 + t936;
t713 = pkin(1) * t793 + t897;
t709 = t873 * t727 + t871 * t818;
t707 = t871 * t727 - t873 * t818;
t705 = t878 * t745 + t876 * t771;
t704 = t878 * t744 + t876 * t770;
t703 = t876 * t745 - t878 * t771;
t702 = t876 * t744 - t878 * t770;
t700 = -t872 * t754 + t874 * t755;
t699 = t874 * t754 + t872 * t755;
t687 = -pkin(5) * t793 - t876 * t747 + t873 * t954;
t686 = -pkin(5) * t795 - t876 * t746 + t871 * t954;
t685 = pkin(5) * t796 + t878 * t747 + t873 * t960;
t684 = -pkin(5) * t797 + t878 * t746 + t871 * t960;
t679 = t878 * t720 + t876 * t759;
t678 = t878 * t719 + t876 * t758;
t676 = t876 * t720 - t878 * t759;
t675 = t876 * t719 - t878 * t758;
t674 = pkin(1) * t677;
t671 = -pkin(5) * t784 + t878 * t696;
t669 = pkin(5) * t786 + t876 * t696;
t668 = pkin(1) * t670;
t665 = t878 * t697 + t960;
t664 = t876 * t697 - t954;
t662 = pkin(1) * t784 + t913;
t659 = t878 * t709 + t876 * t725;
t657 = t876 * t709 - t878 * t725;
t653 = pkin(1) * t656;
t649 = -t872 * t703 + t874 * t705;
t648 = -t872 * t702 + t874 * t704;
t647 = t874 * t703 + t872 * t705;
t646 = t874 * t702 + t872 * t704;
t644 = -t905 - t997;
t641 = -t906 - t998;
t630 = -t872 * t676 + t874 * t679;
t629 = -t872 * t675 + t874 * t678;
t627 = t874 * t676 + t872 * t679;
t626 = t874 * t675 + t872 * t678;
t625 = qJ(1) * (-t872 * t677 + t874 * t680);
t623 = qJ(1) * (-t872 * t670 + t874 * t672);
t622 = pkin(1) * t664 + t949;
t618 = t871 * t638 - t873 * t729;
t615 = -t872 * t657 + t874 * t659;
t614 = t874 * t657 + t872 * t659;
t612 = qJ(1) * (-t872 * t656 + t874 * t658);
t611 = -t889 - t997;
t610 = -t871 * t663 + t873 * t692 - t976;
t607 = -pkin(5) * t664 - (pkin(2) * t876 - qJ(3) * t878) * t696;
t605 = -t892 - t998;
t604 = -t871 * t660 + t873 * t690 - t977;
t603 = -t896 - t999;
t602 = pkin(5) * t665 - (-pkin(2) * t878 - qJ(3) * t876 - pkin(1)) * t696;
t601 = t873 * t620 + t724 * t993 - t978;
t599 = t871 * t609 - t873 * t683;
t595 = t674 + t914;
t592 = -t871 * t639 + t873 * t642 - t976;
t591 = t878 * t619 + t876 * t637;
t590 = t876 * t619 - t878 * t637;
t589 = t668 + t915;
t588 = -t871 * t633 + t873 * t634 - t977;
t587 = -pkin(2) * t618 - t908;
t586 = -t893 - t999;
t585 = t878 * t610 - t876 * t644 - t986;
t584 = t873 * t597 - t871 * t698 - t978;
t583 = t653 + t895;
t582 = t674 + t916;
t581 = t878 * t604 - t876 * t641 - t987;
t580 = t668 + t917;
t579 = t876 * t610 + t878 * t644 + t926;
t578 = -qJ(3) * t618 + (-pkin(6) * t873 + t993) * t637;
t577 = t876 * t604 + t878 * t641 + t927;
t574 = t878 * t600 + t876 * t608;
t573 = t876 * t600 - t878 * t608;
t572 = t653 + t918;
t571 = t878 * t592 - t876 * t611 - t986;
t570 = t878 * t601 - t876 * t603 - t988;
t569 = t878 * t588 - t876 * t605 - t987;
t568 = t876 * t592 + t878 * t611 + t926;
t567 = t876 * t601 + t878 * t603 + t928;
t566 = t876 * t588 + t878 * t605 + t927;
t565 = -pkin(2) * t599 - t884;
t564 = t878 * t584 - t876 * t586 - t988;
t563 = pkin(1) * t590 + t888;
t562 = t876 * t584 + t878 * t586 + t928;
t561 = -qJ(3) * t599 + t873 * t576 - t871 * t594;
t560 = -pkin(5) * t590 + t878 * t578 - t876 * t587;
t559 = -pkin(1) * t618 + pkin(5) * t591 + t876 * t578 + t878 * t587;
t558 = pkin(1) * t573 + t919;
t557 = -pkin(5) * t573 + t878 * t561 - t876 * t565;
t556 = -pkin(1) * t599 + pkin(5) * t574 + t876 * t561 + t878 * t565;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t967, -t965, -t1001, -qJ(1) * t1001, 0, 0, t788, 0, -t1004, 0, t1011, t1012, t1015, pkin(5) * t966 + qJ(1) * t1015 - t872 * t731, -t900, -t872 * t785 + t874 * t787, t738, t900, t1009, 0, -qJ(1) * t1010 - t872 * t684 + t874 * t686, -qJ(1) * t737 - t872 * t685 + t874 * t687, t874 * t671 - t872 * t669 - qJ(1) * (t874 * t784 + t872 * t786), t874 * t607 - t872 * t602 - qJ(1) * (t874 * t664 + t872 * t665), t649, t615, t629, t648, t630, t700, -t872 * t579 + t874 * t585 - t980, -t872 * t577 + t874 * t581 - t981, -t872 * t567 + t874 * t570 - t982, t874 * t560 - t872 * t559 - qJ(1) * (t874 * t590 + t872 * t591), t649, t615, t629, t648, t630, t700, -t872 * t568 + t874 * t571 - t980, -t872 * t566 + t874 * t569 - t981, -t872 * t562 + t874 * t564 - t982, t874 * t557 - t872 * t556 - qJ(1) * (t874 * t573 + t872 * t574); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t965, -t967, t1003, qJ(1) * t1003, 0, 0, t1004, 0, t788, 0, -t1012, t1011, t1014, pkin(5) * t971 + qJ(1) * t1014 + t874 * t731, t901, t874 * t785 + t872 * t787, t737, -t901, -t1010, 0, -qJ(1) * t1009 + t874 * t684 + t872 * t686, qJ(1) * t738 + t874 * t685 + t872 * t687, t872 * t671 + t874 * t669 + qJ(1) * (-t872 * t784 + t874 * t786), t872 * t607 + t874 * t602 + qJ(1) * (-t872 * t664 + t874 * t665), t647, t614, t626, t646, t627, t699, t874 * t579 + t872 * t585 + t625, t874 * t577 + t872 * t581 + t623, t874 * t567 + t872 * t570 + t612, t872 * t560 + t874 * t559 + qJ(1) * (-t872 * t590 + t874 * t591), t647, t614, t626, t646, t627, t699, t874 * t568 + t872 * t571 + t625, t874 * t566 + t872 * t569 + t623, t874 * t562 + t872 * t564 + t612, t872 * t557 + t874 * t556 + qJ(1) * (-t872 * t573 + t874 * t574); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t925, t839, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t766, t767, 0, -t732, t857, t845, 0, t859, 0, 0, t714, t713, t662, t622, t740, t707, t716, t739, t717, t832, t595, t589, t583, t563, t740, t707, t716, t739, t717, t832, t582, t580, t572, t558; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t869, -t925, 0, 0, 0, t837, 0, -t836, 0, t904, t807, t735, pkin(5) * t735, t801, t787, t796, -t801, t797, 0, t686, t687, t671, t607, t705, t659, t678, t704, t679, t755, t585, t581, t570, t560, t705, t659, t678, t704, t679, t755, t571, t569, t564, t557; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t869, 0, -t839, 0, 0, 0, t836, 0, t837, 0, -t807, t904, t924, t731, t800, t785, t793, -t800, -t795, 0, t684, t685, t669, t602, t703, t657, t675, t702, t676, t754, t579, t577, t567, t559, t703, t657, t675, t702, t676, t754, t568, t566, t562, t556; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t925, t839, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t766, t767, 0, -t732, t857, t845, 0, t859, 0, 0, t714, t713, t662, t622, t740, t707, t716, t739, t717, t832, t595, t589, t583, t563, t740, t707, t716, t739, t717, t832, t582, t580, t572, t558; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t879, 0, 0, -t869, -t922, 0, t930, t831, t823, -t930, t824, 0, t768, t769, t696, qJ(3) * t696, t745, t709, t719, t744, t720, -t974, t610, t604, t601, t578, t745, t709, t719, t744, t720, -t974, t592, t588, t584, t561; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t879, 0, qJDD(2), 0, t869, 0, -t890, 0, t848, -t834, -t858, -t848, -t860, 0, t746, t747, 0, pkin(2) * t696, -t771, -t725, -t758, -t770, -t759, t782, t644, t641, t603, t587, -t771, -t725, -t758, -t770, -t759, t782, t611, t605, t586, t565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t922, t890, 0, 0, t857, t845, 0, t859, 0, 0, t936, t897, t913, t949, t740, t707, t716, t739, t717, t832, t914, t915, t895, t888, t740, t707, t716, t739, t717, t832, t916, t917, t918, t919; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t858, t860, t848, 0, t861, 0, 0, t773, t746, 0, t765, t727, t761, t764, t762, 0, t692, t690, t620, -pkin(6) * t637, t765, t727, t761, t764, t762, 0, t642, t634, t597, t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t858, -t975, t860, -t848, 0, -t773, 0, t747, 0, -t838, -t818, -t780, t838, t778, t851, t663, t660, -t996, -pkin(3) * t637, -t838, -t818, -t780, t838, t778, t851, t639, t633, t698, t594; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t848, t834, t858, t848, t860, 0, -t746, -t747, 0, 0, t771, t725, t758, t770, t759, -t782, t905, t906, t896, t908, t771, t725, t758, t770, t759, -t782, t889, t892, t893, t884; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t812, -t777, t810, -t912, t814, t912, 0, t729, t688, 0, t812, -t777, t810, -t912, t814, t912, -qJ(5) * t810, t666, t645, qJ(5) * t650; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t911, t886, t816, t811, -t809, t911, -t729, 0, t689, 0, -t911, t886, t816, t811, -t809, t911, t655, t743, t643, t621; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t838, t818, t780, -t838, -t778, -t851, -t688, -t689, 0, 0, t838, t818, t780, -t838, -t778, -t851, t1013, t891 + 0.2e1 * t910, -t990, -t991; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t812, -t777, t810, -t912, t814, t912, 0, t683, t650, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t911, t886, t816, t811, -t809, t911, -t683, 0, t651, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t838, t818, t780, -t838, -t778, -t851, -t650, -t651, 0, 0;];
m_new_reg = t1;

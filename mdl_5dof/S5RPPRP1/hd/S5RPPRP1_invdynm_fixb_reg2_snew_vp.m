% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPPRP1
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
%   pkin=[a2,a3,a4,a5,d1,d4,theta2,theta3]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:36
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPPRP1_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP1_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP1_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRP1_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP1_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRP1_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:36:40
% EndTime: 2019-12-05 17:36:49
% DurationCPUTime: 9.25s
% Computational Cost: add. (25157->512), mult. (55484->635), div. (0->0), fcn. (32584->8), ass. (0->366)
t889 = sin(qJ(1));
t891 = cos(qJ(1));
t855 = g(2) * t889 - t891 * g(3);
t892 = qJD(1) ^ 2;
t840 = -pkin(1) * t892 + t855;
t885 = sin(pkin(7));
t887 = cos(pkin(7));
t856 = g(2) * t891 + g(3) * t889;
t906 = qJDD(1) * pkin(1) + t856;
t795 = t840 * t885 - t887 * t906;
t796 = t887 * t840 + t885 * t906;
t939 = t795 * t885 + t887 * t796;
t743 = t795 * t887 - t796 * t885;
t977 = t743 * t891;
t1021 = -t889 * t939 + t977;
t978 = t743 * t889;
t1020 = t891 * t939 + t978;
t845 = qJDD(1) * t887 - t885 * t892;
t966 = g(1) - qJDD(2);
t1010 = -qJ(2) * t845 - t885 * t966;
t844 = qJDD(1) * t885 + t887 * t892;
t816 = -qJ(2) * t844 + t887 * t966;
t915 = t844 * t891 + t845 * t889;
t1019 = pkin(5) * t915 - t1010 * t889 - t816 * t891;
t802 = t844 * t889 - t845 * t891;
t1018 = -pkin(5) * t802 - t1010 * t891 + t816 * t889;
t1009 = 2 * qJD(3);
t884 = sin(pkin(8));
t888 = sin(qJ(4));
t957 = qJD(1) * t888;
t947 = t884 * t957;
t857 = qJD(4) * t947;
t872 = t884 * qJDD(1);
t890 = cos(qJ(4));
t824 = t890 * t872 - t857;
t781 = -qJDD(1) * pkin(2) - t892 * qJ(3) + qJDD(3) + t795;
t886 = cos(pkin(8));
t1001 = pkin(3) * t886;
t923 = -pkin(6) * t884 - t1001;
t896 = qJDD(1) * t923 + t781;
t758 = t890 * t896;
t874 = t886 * qJDD(1);
t865 = t874 - qJDD(4);
t958 = qJD(1) * t884;
t945 = qJD(5) * t958;
t907 = t865 * pkin(4) + 0.2e1 * t890 * t945 - t758;
t784 = -t892 * pkin(2) + qJDD(1) * qJ(3) + t796;
t838 = t923 * qJD(1);
t911 = t784 + (t1009 + t838) * qJD(1);
t940 = t884 * t966;
t738 = t911 * t886 - t940;
t879 = t884 ^ 2;
t967 = t890 * t892;
t912 = pkin(4) * t879 * t967 + t738;
t866 = qJD(1) * t886 - qJD(4);
t949 = t866 * t958;
t662 = t888 * (-qJ(5) * t949 + t912) + qJ(5) * t824 + t907;
t951 = t888 * t967;
t851 = t879 * t951;
t822 = -t851 - t865;
t1017 = pkin(4) * t822 - t662;
t894 = t886 ^ 2;
t836 = (t879 + t894) * t886 * t892;
t806 = -t836 * t885 + t887 * t874;
t808 = t836 * t887 + t885 * t874;
t1014 = t806 * t891 - t808 * t889;
t1013 = t806 * t889 + t808 * t891;
t869 = t886 * t966;
t937 = qJD(1) * t1009 + t784;
t755 = t937 * t884 + t869;
t756 = t937 * t886 - t940;
t708 = t884 * t755 + t886 * t756;
t863 = t866 ^ 2;
t954 = qJDD(1) * t888;
t956 = qJD(1) * t890;
t791 = (t954 + (qJD(4) + t866) * t956) * t884;
t948 = t866 * t957;
t953 = qJDD(1) * t890;
t793 = -t857 + (-t948 + t953) * t884;
t747 = -t791 * t890 + t793 * t888;
t881 = t888 ^ 2;
t972 = t879 * t892;
t864 = t881 * t972;
t882 = t890 ^ 2;
t952 = t882 * t972;
t830 = t864 + t952;
t718 = t747 * t884 + t830 * t886;
t1008 = pkin(2) * t718;
t811 = -t952 - t863;
t821 = -t851 + t865;
t975 = t821 * t890;
t767 = -t811 * t888 + t975;
t899 = -t857 + (t948 + t953) * t884;
t725 = t767 * t884 - t886 * t899;
t1007 = pkin(2) * t725;
t828 = -t864 - t863;
t974 = t822 * t888;
t780 = t828 * t890 - t974;
t790 = (t954 + (qJD(4) - t866) * t956) * t884;
t730 = t780 * t884 - t790 * t886;
t1006 = pkin(2) * t730;
t745 = -t791 * t888 - t793 * t890;
t1005 = pkin(3) * t745;
t976 = t821 * t888;
t766 = t811 * t890 + t976;
t1004 = pkin(3) * t766;
t973 = t822 * t890;
t777 = t828 * t888 + t973;
t1003 = pkin(3) * t777;
t1002 = pkin(3) * t884;
t1000 = pkin(4) * t662;
t999 = pkin(4) * t793;
t720 = t747 * t886 - t830 * t884;
t672 = t720 * t885 - t745 * t887;
t674 = t720 * t887 + t745 * t885;
t997 = pkin(5) * (-t672 * t889 + t674 * t891);
t726 = t767 * t886 + t884 * t899;
t683 = t726 * t885 - t766 * t887;
t684 = t726 * t887 + t766 * t885;
t996 = pkin(5) * (-t683 * t889 + t684 * t891);
t733 = t780 * t886 + t790 * t884;
t697 = t733 * t885 - t777 * t887;
t700 = t733 * t887 + t777 * t885;
t995 = pkin(5) * (-t697 * t889 + t700 * t891);
t993 = pkin(6) * t745;
t992 = pkin(6) * t766;
t991 = pkin(6) * t777;
t990 = qJ(2) * t672;
t989 = qJ(2) * t683;
t988 = qJ(2) * t697;
t985 = qJ(3) * t718;
t984 = qJ(3) * t725;
t983 = qJ(3) * t730;
t982 = t662 * t888;
t981 = t662 * t890;
t737 = t884 * t911 + t869;
t980 = t737 * t888;
t979 = t737 * t890;
t770 = t884 * t781;
t971 = t884 * t865;
t970 = t884 * t885;
t969 = t884 * t886;
t968 = t884 * t887;
t771 = t886 * t781;
t965 = -pkin(2) * t745 + qJ(3) * t720;
t964 = -pkin(2) * t766 + qJ(3) * t726;
t963 = -pkin(2) * t777 + qJ(3) * t733;
t691 = t890 * t738 + t888 * t896;
t962 = pkin(3) * t830 + pkin(6) * t747;
t961 = -pkin(2) * t781 + qJ(3) * t708;
t960 = pkin(3) * t790 - pkin(6) * t780;
t959 = pkin(3) * t899 - pkin(6) * t767;
t862 = t892 * t969;
t950 = pkin(2) * t874 - qJ(3) * t836 - t771;
t946 = t884 * t956;
t944 = t884 * t874;
t943 = -pkin(1) * t718 + qJ(2) * t674;
t942 = -pkin(1) * t725 + qJ(2) * t684;
t941 = -pkin(1) * t730 + qJ(2) * t700;
t690 = t738 * t888 - t758;
t640 = t690 * t888 + t890 * t691;
t820 = -pkin(4) * t866 - qJ(5) * t946;
t938 = -t820 * t890 - t838;
t878 = t884 * t879;
t936 = t878 * t951;
t926 = t888 * t945;
t853 = -0.2e1 * t926;
t823 = (-qJD(4) * t956 - t954) * t884;
t918 = pkin(4) * t864 - t823 * qJ(5) - t866 * t820 - t691;
t663 = t853 - t918;
t619 = t663 * t888 - t981;
t925 = -t823 * pkin(4) - qJ(5) * t864 + qJDD(5) + t869;
t701 = (t784 + (t1009 - t938) * qJD(1)) * t884 + t925;
t634 = -pkin(4) * t701 + qJ(5) * t663;
t588 = -pkin(6) * t619 + qJ(5) * t981 - t634 * t888;
t605 = -pkin(3) * t619 + t1000;
t620 = t663 * t890 + t982;
t613 = t620 * t886 + t701 * t884;
t935 = -pkin(2) * t619 + qJ(3) * t613 + t884 * t588 + t886 * t605;
t655 = pkin(4) * t830 - qJ(5) * t791 + t663;
t927 = t866 * t947;
t657 = t912 * t888 + (t793 + t824 - t927) * qJ(5) + t907;
t609 = -t655 * t888 + t657 * t890 - t993;
t710 = t999 - t1005;
t934 = t884 * t609 + t886 * t710 + t965;
t903 = pkin(4) * t811 + t918;
t641 = t853 - t903 - t1004;
t680 = -qJ(5) * t811 + t701;
t759 = -pkin(4) * t899 + qJ(5) * t821;
t649 = t680 * t890 - t759 * t888 - t992;
t933 = t886 * t641 + t884 * t649 + t964;
t651 = -t1003 - t1017;
t666 = -pkin(4) * t790 + qJ(5) * t828 - t925 + (t938 * qJD(1) - t937) * t884;
t654 = -qJ(5) * t973 - t666 * t888 - t991;
t932 = t886 * t651 + t884 * t654 + t963;
t665 = t691 - t1004;
t702 = t979 - t992;
t931 = t886 * t665 + t884 * t702 + t964;
t671 = t690 - t1003;
t705 = t980 - t991;
t930 = t886 * t671 + t884 * t705 + t963;
t871 = t879 * qJDD(1);
t873 = t894 * qJDD(1);
t841 = t873 + t871;
t876 = t894 * t892;
t847 = t876 + t972;
t929 = pkin(2) * t847 + qJ(3) * t841 + t708;
t928 = t866 * t946;
t924 = -pkin(3) * t737 + pkin(6) * t640;
t849 = qJDD(1) * t889 + t891 * t892;
t922 = pkin(5) * t849 - g(1) * t891;
t921 = -t959 + t980;
t920 = -t960 - t979;
t919 = t886 * t851;
t639 = -t690 * t890 + t691 * t888;
t707 = t755 * t886 - t756 * t884;
t812 = t844 * t969;
t813 = -t885 * t862 + t887 * t944;
t917 = t812 * t891 + t813 * t889;
t916 = t812 * t889 - t813 * t891;
t914 = t855 * t891 - t856 * t889;
t913 = -t855 * t889 - t856 * t891;
t835 = (t884 * t894 + t878) * t892;
t910 = -pkin(2) * t872 + qJ(3) * t835 + t770;
t909 = t640 + t962;
t632 = -t639 - t993;
t908 = -t745 * t1001 + t884 * t632 + t965;
t905 = t655 * t890 + t657 * t888 + t962;
t904 = t680 * t888 + t759 * t890 - t959;
t902 = -qJ(5) * t974 + t666 * t890 - t960;
t630 = t640 * t886 + t737 * t884;
t901 = qJ(3) * t630 + (-pkin(2) + t923) * t639;
t897 = -pkin(3) * t701 + pkin(6) * t620 + qJ(5) * t982 + t634 * t890;
t859 = 0.2e1 * t944;
t850 = -qJDD(1) * t891 + t889 * t892;
t848 = -t876 + t972;
t843 = t886 * t865;
t842 = t873 - t871;
t831 = -t864 + t952;
t829 = t863 - t952;
t827 = t864 - t863;
t826 = -pkin(5) * t850 + g(1) * t889;
t807 = t835 * t887 + t885 * t872;
t804 = t835 * t885 - t887 * t872;
t801 = t842 * t887 + t848 * t885;
t800 = t841 * t887 - t847 * t885;
t799 = t842 * t885 - t848 * t887;
t798 = t841 * t885 + t847 * t887;
t797 = (-t881 - t882) * t949;
t786 = t824 * t888 - t882 * t949;
t785 = t823 * t890 - t881 * t949;
t783 = (t824 + t927) * t890;
t782 = (-t823 - t928) * t888;
t779 = t827 * t890 + t976;
t778 = -t829 * t888 + t973;
t776 = t827 * t888 - t975;
t775 = t829 * t890 + t974;
t769 = -pkin(1) * t844 - t796;
t768 = pkin(1) * t845 - t795;
t765 = -t797 * t885 - t865 * t968;
t764 = t797 * t887 - t865 * t970;
t761 = t783 * t886 + t936;
t760 = t782 * t886 - t936;
t754 = t783 * t884 - t919;
t753 = t782 * t884 + t919;
t750 = -t804 * t889 + t807 * t891;
t749 = -t804 * t891 - t807 * t889;
t748 = -t790 * t890 - t888 * t899;
t746 = -t790 * t888 + t890 * t899;
t736 = pkin(1) * t743;
t734 = pkin(1) * t966 + qJ(2) * t939;
t732 = t779 * t886 - t791 * t884;
t731 = t778 * t886 + t793 * t884;
t729 = t779 * t884 + t791 * t886;
t728 = t778 * t884 - t793 * t886;
t723 = pkin(1) * t806 + t950;
t722 = pkin(1) * t804 + t910;
t721 = t748 * t886 + t831 * t884;
t719 = t748 * t884 - t831 * t886;
t716 = t761 * t887 + t786 * t885;
t715 = t760 * t887 + t785 * t885;
t714 = t761 * t885 - t786 * t887;
t713 = t760 * t885 - t785 * t887;
t712 = -t764 * t889 + t765 * t891;
t711 = -t764 * t891 - t765 * t889;
t699 = t732 * t887 + t776 * t885;
t698 = t731 * t887 + t775 * t885;
t696 = t732 * t885 - t776 * t887;
t695 = t731 * t885 - t775 * t887;
t693 = pkin(1) * t697;
t689 = -qJ(2) * t804 - t756 * t885 + t887 * t771;
t688 = -qJ(2) * t806 - t755 * t885 + t781 * t968;
t687 = qJ(2) * t807 + t756 * t887 + t885 * t771;
t686 = -qJ(2) * t808 + t755 * t887 + t781 * t970;
t682 = pkin(1) * t683;
t679 = -qJ(2) * t798 + t707 * t887;
t678 = qJ(2) * t800 + t707 * t885;
t677 = t708 * t887 + t781 * t885;
t676 = t708 * t885 - t781 * t887;
t675 = t721 * t887 + t746 * t885;
t673 = t721 * t885 - t746 * t887;
t670 = pkin(1) * t798 + t929;
t669 = pkin(1) * t672;
t661 = -t714 * t889 + t716 * t891;
t660 = -t713 * t889 + t715 * t891;
t659 = -t714 * t891 - t716 * t889;
t658 = -t713 * t891 - t715 * t889;
t656 = -t920 - t1006;
t653 = -t921 - t1007;
t647 = -t696 * t889 + t699 * t891;
t646 = -t695 * t889 + t698 * t891;
t645 = -t696 * t891 - t699 * t889;
t644 = -t695 * t891 - t698 * t889;
t642 = pkin(5) * (-t697 * t891 - t700 * t889);
t635 = pkin(5) * (-t683 * t891 - t684 * t889);
t633 = pkin(1) * t676 + t961;
t629 = t640 * t884 - t737 * t886;
t627 = -t673 * t889 + t675 * t891;
t625 = -t673 * t891 - t675 * t889;
t624 = pkin(5) * (-t672 * t891 - t674 * t889);
t623 = -t902 - t1006;
t622 = -t671 * t884 + t705 * t886 - t983;
t621 = -t904 - t1007;
t617 = -t665 * t884 + t702 * t886 - t984;
t616 = -qJ(2) * t676 - (pkin(2) * t885 - qJ(3) * t887) * t707;
t615 = -t909 - t1008;
t614 = t745 * t1002 + t632 * t886 - t985;
t612 = t620 * t884 - t701 * t886;
t610 = qJ(2) * t677 - (-pkin(2) * t887 - qJ(3) * t885 - pkin(1)) * t707;
t608 = t693 + t930;
t606 = -t651 * t884 + t654 * t886 - t983;
t604 = t682 + t931;
t602 = -t641 * t884 + t649 * t886 - t984;
t601 = t630 * t887 + t639 * t885;
t600 = t630 * t885 - t639 * t887;
t599 = -t905 - t1008;
t598 = -pkin(2) * t629 - t924;
t597 = t622 * t887 - t656 * t885 - t988;
t596 = t609 * t886 - t710 * t884 - t985;
t595 = t693 + t932;
t594 = t669 + t908;
t593 = t617 * t887 - t653 * t885 - t989;
t592 = t682 + t933;
t591 = t622 * t885 + t656 * t887 + t941;
t590 = t617 * t885 + t653 * t887 + t942;
t589 = -qJ(3) * t629 + (-pkin(6) * t886 + t1002) * t639;
t586 = t613 * t887 + t619 * t885;
t585 = t613 * t885 - t619 * t887;
t584 = t669 + t934;
t583 = t606 * t887 - t623 * t885 - t988;
t582 = t614 * t887 - t615 * t885 - t990;
t581 = t602 * t887 - t621 * t885 - t989;
t580 = t606 * t885 + t623 * t887 + t941;
t579 = t602 * t885 + t621 * t887 + t942;
t578 = t614 * t885 + t615 * t887 + t943;
t577 = -pkin(2) * t612 - t897;
t576 = t596 * t887 - t599 * t885 - t990;
t575 = t596 * t885 + t599 * t887 + t943;
t574 = pkin(1) * t600 + t901;
t573 = -qJ(3) * t612 + t588 * t886 - t605 * t884;
t572 = -qJ(2) * t600 + t589 * t887 - t598 * t885;
t571 = -pkin(1) * t629 + qJ(2) * t601 + t589 * t885 + t598 * t887;
t570 = pkin(1) * t585 + t935;
t569 = -qJ(2) * t585 + t573 * t887 - t577 * t885;
t568 = -pkin(1) * t612 + qJ(2) * t586 + t573 * t885 + t577 * t887;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t856, -t855, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t768, t769, 0, -t736, t871, t859, 0, t873, 0, 0, t723, t722, t670, t633, t754, t719, t728, t753, t729, t843, t608, t604, t594, t574, t754, t719, t728, t753, t729, t843, t595, t592, t584, t570; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t849, 0, t850, 0, t922, t826, -t914, -pkin(5) * t914, 0, 0, -t915, 0, t802, 0, t1019, t1018, -t1020, -pkin(5) * t1020 - qJ(2) * t978 - t891 * t734, -t917, -t799 * t891 - t801 * t889, t749, t917, t1014, 0, pkin(5) * t1013 - t891 * t686 - t889 * t688, -pkin(5) * t750 - t687 * t891 - t689 * t889, -t889 * t679 - t891 * t678 - pkin(5) * (-t798 * t889 + t800 * t891), -t889 * t616 - t891 * t610 - pkin(5) * (-t676 * t889 + t677 * t891), t659, t625, t644, t658, t645, t711, -t591 * t891 - t597 * t889 - t995, -t590 * t891 - t593 * t889 - t996, -t578 * t891 - t582 * t889 - t997, -t889 * t572 - t891 * t571 - pkin(5) * (-t600 * t889 + t601 * t891), t659, t625, t644, t658, t645, t711, -t580 * t891 - t583 * t889 - t995, -t579 * t891 - t581 * t889 - t996, -t575 * t891 - t576 * t889 - t997, -t889 * t569 - t891 * t568 - pkin(5) * (-t585 * t889 + t586 * t891); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t850, 0, -t849, 0, -t826, t922, t913, pkin(5) * t913, 0, 0, -t802, 0, -t915, 0, -t1018, t1019, t1021, pkin(5) * t1021 + qJ(2) * t977 - t889 * t734, -t916, -t799 * t889 + t801 * t891, t750, t916, t1013, 0, -pkin(5) * t1014 - t889 * t686 + t891 * t688, pkin(5) * t749 - t687 * t889 + t689 * t891, t891 * t679 - t889 * t678 + pkin(5) * (-t798 * t891 - t800 * t889), t891 * t616 - t889 * t610 + pkin(5) * (-t676 * t891 - t677 * t889), t661, t627, t646, t660, t647, t712, -t591 * t889 + t597 * t891 + t642, -t590 * t889 + t593 * t891 + t635, -t578 * t889 + t582 * t891 + t624, t891 * t572 - t889 * t571 + pkin(5) * (-t600 * t891 - t601 * t889), t661, t627, t646, t660, t647, t712, -t580 * t889 + t583 * t891 + t642, -t579 * t889 + t581 * t891 + t635, -t575 * t889 + t576 * t891 + t624, t891 * t569 - t889 * t568 + pkin(5) * (-t585 * t891 - t586 * t889); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t892, 0, 0, -g(1), -t856, 0, 0, 0, t845, 0, -t844, 0, t1010, -t816, t743, qJ(2) * t743, t813, t801, t807, -t813, t808, 0, t688, t689, t679, t616, t716, t675, t698, t715, t699, t765, t597, t593, t582, t572, t716, t675, t698, t715, t699, t765, t583, t581, t576, t569; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t892, 0, qJDD(1), 0, g(1), 0, t855, 0, 0, 0, t844, 0, t845, 0, t816, t1010, t939, t734, t812, t799, t804, -t812, -t806, 0, t686, t687, t678, t610, t714, t673, t695, t713, t696, t764, t591, t590, t578, t571, t714, t673, t695, t713, t696, t764, t580, t579, t575, t568; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t856, -t855, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t768, t769, 0, -t736, t871, t859, 0, t873, 0, 0, t723, t722, t670, t633, t754, t719, t728, t753, t729, t843, t608, t604, t594, t574, t754, t719, t728, t753, t729, t843, t595, t592, t584, t570; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t892, 0, 0, -t966, t795, 0, t944, t842, t835, -t944, t836, 0, t770, t771, t707, qJ(3) * t707, t761, t721, t731, t760, t732, -t971, t622, t617, t614, t589, t761, t721, t731, t760, t732, -t971, t606, t602, t596, t573; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t892, 0, qJDD(1), 0, t966, 0, t796, 0, t862, -t848, -t872, -t862, -t874, 0, t755, t756, 0, pkin(2) * t707, -t786, -t746, -t775, -t785, -t776, t797, t656, t653, t615, t598, -t786, -t746, -t775, -t785, -t776, t797, t623, t621, t599, t577; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t795, -t796, 0, 0, t871, t859, 0, t873, 0, 0, t950, t910, t929, t961, t754, t719, t728, t753, t729, t843, t930, t931, t908, t901, t754, t719, t728, t753, t729, t843, t932, t933, t934, t935; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t872, t874, t862, 0, t876, 0, 0, t781, t755, 0, t783, t748, t778, t782, t779, 0, t705, t702, t632, -pkin(6) * t639, t783, t748, t778, t782, t779, 0, t654, t649, t609, t588; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t872, -t972, t874, -t862, 0, -t781, 0, t756, 0, -t851, -t831, -t793, t851, t791, t865, t671, t665, -t1005, -pkin(3) * t639, -t851, -t831, -t793, t851, t791, t865, t651, t641, t710, t605; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t862, t848, t872, t862, t874, 0, -t755, -t756, 0, 0, t786, t746, t775, t785, t776, -t797, t920, t921, t909, t924, t786, t746, t775, t785, t776, -t797, t902, t904, t905, t897; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t824, -t790, t822, -t927, t827, t927, 0, t737, t690, 0, t824, -t790, t822, -t927, t827, t927, -qJ(5) * t822, t680, t657, qJ(5) * t662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t928, t899, t829, t823, -t821, t928, -t737, 0, t691, 0, -t928, t899, t829, t823, -t821, t928, t666, t759, t655, t634; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t851, t831, t793, -t851, -t791, -t865, -t690, -t691, 0, 0, t851, t831, t793, -t851, -t791, -t865, t1017, t903 + 0.2e1 * t926, -t999, -t1000; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t824, -t790, t822, -t927, t827, t927, 0, t701, t662, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t928, t899, t829, t823, -t821, t928, -t701, 0, t663, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t851, t831, t793, -t851, -t791, -t865, -t662, -t663, 0, 0;];
m_new_reg = t1;

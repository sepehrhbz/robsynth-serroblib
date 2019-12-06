% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRRP5
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
% Datum: 2019-12-05 16:49
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRRP5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP5_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP5_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRP5_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP5_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:49:33
% EndTime: 2019-12-05 16:49:44
% DurationCPUTime: 10.98s
% Computational Cost: add. (36031->539), mult. (74931->675), div. (0->0), fcn. (50626->8), ass. (0->375)
t918 = sin(qJ(4));
t921 = cos(qJ(4));
t922 = cos(qJ(3));
t974 = qJD(2) * t922;
t919 = sin(qJ(3));
t975 = qJD(2) * t919;
t869 = t918 * t975 - t921 * t974;
t871 = t918 * t974 + t921 * t975;
t824 = t871 * t869;
t911 = qJDD(3) + qJDD(4);
t1030 = t824 - t911;
t1032 = t1030 * pkin(4);
t867 = t869 ^ 2;
t912 = qJD(3) + qJD(4);
t910 = t912 ^ 2;
t808 = -t910 - t867;
t987 = t921 * t1030;
t753 = t918 * t808 - t987;
t752 = pkin(3) * t753;
t969 = qJD(2) * qJD(3);
t904 = t922 * t969;
t968 = t919 * qJDD(2);
t881 = t904 + t968;
t960 = t919 * t969;
t966 = t922 * qJDD(2);
t941 = -t960 + t966;
t790 = -t869 * qJD(4) + t921 * t881 + t918 * t941;
t1023 = qJD(2) ^ 2;
t915 = sin(pkin(8));
t916 = cos(pkin(8));
t889 = t916 * g(1) + t915 * g(2);
t920 = sin(qJ(2));
t923 = cos(qJ(2));
t982 = g(3) - qJDD(1);
t859 = -t923 * t889 - t920 * t982;
t832 = -t1023 * pkin(2) + qJDD(2) * pkin(6) + t859;
t888 = t915 * g(1) - t916 * g(2);
t804 = t922 * t832 - t919 * t888;
t892 = qJD(3) * pkin(3) - pkin(7) * t975;
t1024 = t922 ^ 2;
t908 = t1024 * t1023;
t762 = -pkin(3) * t908 + t941 * pkin(7) - qJD(3) * t892 + t804;
t801 = t919 * t832 + t922 * t888;
t898 = t919 * t1023 * t922;
t890 = qJDD(3) + t898;
t925 = (-t881 + t904) * pkin(7) + t890 * pkin(3) - t801;
t714 = t918 * t762 - t921 * t925;
t861 = t912 * t869;
t929 = qJ(5) * t861 + 0.2e1 * qJD(5) * t871 + t1032 + t714;
t681 = t790 * qJ(5) + t929;
t926 = -t681 - t1032;
t1031 = t752 + t926;
t940 = 0.2e1 * t960 - t966;
t838 = t940 * t922;
t995 = t918 * t1030;
t1029 = t915 * t982;
t1028 = t916 * t982;
t1026 = -t861 + t790;
t873 = t916 * t888;
t1025 = -t915 * t889 + t873;
t951 = t918 * t881 - t921 * t941;
t771 = (qJD(4) - t912) * t871 + t951;
t868 = t871 ^ 2;
t775 = t861 + t790;
t727 = -t771 * t918 - t921 * t775;
t729 = -t771 * t921 + t918 * t775;
t679 = -t919 * t727 + t922 * t729;
t793 = -t867 - t868;
t667 = t920 * t679 - t923 * t793;
t1022 = pkin(1) * t667;
t754 = t921 * t808 + t995;
t712 = -t919 * t753 + t922 * t754;
t770 = (qJD(4) + t912) * t871 + t951;
t686 = t920 * t712 - t923 * t770;
t1021 = pkin(1) * t686;
t848 = -t868 - t910;
t818 = t824 + t911;
t996 = t918 * t818;
t776 = t921 * t848 - t996;
t988 = t921 * t818;
t777 = -t918 * t848 - t988;
t731 = -t919 * t776 + t922 * t777;
t689 = -t1026 * t923 + t920 * t731;
t1020 = pkin(1) * t689;
t711 = t922 * t753 + t919 * t754;
t1019 = pkin(2) * t711;
t730 = t922 * t776 + t919 * t777;
t1018 = pkin(2) * t730;
t717 = t921 * t762 + t918 * t925;
t672 = -t921 * t714 + t918 * t717;
t1017 = pkin(3) * t672;
t1016 = pkin(5) * t667;
t1015 = pkin(5) * t686;
t1014 = pkin(5) * t689;
t677 = t922 * t727 + t919 * t729;
t1013 = pkin(6) * t677;
t1012 = pkin(6) * t711;
t1011 = pkin(6) * t730;
t1010 = pkin(7) * t727;
t1009 = pkin(7) * t753;
t1008 = pkin(7) * t776;
t668 = t923 * t679 + t920 * t793;
t1007 = qJ(1) * (t915 * t668 - t916 * t677);
t687 = t923 * t712 + t920 * t770;
t1006 = qJ(1) * (t915 * t687 - t916 * t711);
t690 = t1026 * t920 + t923 * t731;
t1005 = qJ(1) * (t915 * t690 - t916 * t730);
t1003 = t871 * t912;
t1002 = t912 * t918;
t1001 = t912 * t921;
t1000 = t915 * t888;
t998 = t918 * t681;
t858 = -t920 * t889 + t923 * t982;
t831 = -qJDD(2) * pkin(2) - t1023 * pkin(6) + t858;
t783 = -t941 * pkin(3) - pkin(7) * t908 + t892 * t975 + t831;
t997 = t918 * t783;
t994 = t919 * t672;
t993 = t919 * t831;
t992 = t919 * t890;
t891 = qJDD(3) - t898;
t991 = t919 * t891;
t990 = t921 * t681;
t989 = t921 * t783;
t986 = t922 * t672;
t985 = t922 * t831;
t984 = t922 * t890;
t983 = t922 * t891;
t981 = -pkin(1) * t677 + pkin(5) * t668;
t980 = -pkin(2) * t793 + pkin(6) * t679;
t979 = -pkin(1) * t711 + pkin(5) * t687;
t978 = -pkin(1) * t730 + pkin(5) * t690;
t977 = -pkin(2) * t770 + pkin(6) * t712;
t976 = -pkin(2) * t1026 + pkin(6) * t731;
t973 = qJD(5) * t869;
t913 = t919 ^ 2;
t971 = t913 * t1023;
t967 = t920 * qJDD(2);
t965 = t923 * qJDD(2);
t964 = t913 + t1024;
t963 = t920 * t824;
t962 = t923 * t824;
t769 = pkin(3) * t776;
t961 = t769 - t717;
t722 = pkin(3) * t727;
t644 = -pkin(2) * t677 - t722;
t862 = -0.2e1 * t973;
t789 = -t871 * qJD(4) - t951;
t850 = t912 * pkin(4) - t871 * qJ(5);
t944 = t867 * pkin(4) - t789 * qJ(5) + t912 * t850 - t717;
t683 = t862 - t944;
t634 = t918 * t683 - t990;
t680 = pkin(4) * t681;
t959 = pkin(3) * t634 - t680;
t958 = -pkin(3) * t793 + pkin(7) * t729;
t957 = -pkin(3) * t770 + pkin(7) * t754;
t956 = -pkin(3) * t1026 + pkin(7) * t777;
t883 = t964 * qJDD(2);
t886 = t908 + t971;
t828 = t920 * t883 + t923 * t886;
t750 = t919 * t801 + t922 * t804;
t930 = pkin(2) * t886 + pkin(6) * t883 + t750;
t720 = -pkin(1) * t828 - t930;
t829 = t923 * t883 - t920 * t886;
t955 = qJ(1) * t829 + t720;
t885 = -t920 * t1023 + t965;
t822 = -pkin(1) * t885 + t858;
t884 = t923 * t1023 + t967;
t954 = qJ(1) * t884 - t822;
t823 = pkin(1) * t884 + t859;
t953 = qJ(1) * t885 - t823;
t673 = t918 * t714 + t921 * t717;
t952 = t920 * t858 + t923 * t859;
t950 = -t916 * t889 - t1000;
t949 = t920 * t898;
t948 = t923 * t898;
t947 = -pkin(2) * t831 + pkin(6) * t750;
t946 = t714 - t752;
t837 = pkin(5) * t884 - t923 * t888;
t945 = -pkin(5) * t885 - t920 * t888;
t749 = t922 * t801 - t919 * t804;
t796 = t923 * t858 - t920 * t859;
t943 = pkin(4) * t848 + t944;
t939 = t769 + t943;
t924 = qJD(3) ^ 2;
t896 = -t908 - t924;
t845 = t922 * t896 - t992;
t938 = -pkin(2) * t940 + pkin(6) * t845 - t985;
t894 = -t924 - t971;
t847 = -t919 * t894 - t983;
t880 = 0.2e1 * t904 + t968;
t937 = -pkin(2) * t880 + pkin(6) * t847 + t993;
t651 = -pkin(4) * t793 - qJ(5) * t771 + t683;
t665 = (t775 + t790) * qJ(5) + t929;
t621 = t921 * t651 + t918 * t665 + t958;
t622 = -t918 * t651 + t921 * t665 - t1010;
t936 = t922 * t621 + t919 * t622 + t980;
t637 = t673 + t958;
t642 = -t672 - t1010;
t935 = t922 * t637 + t919 * t642 + t980;
t708 = -t789 * pkin(4) - t867 * qJ(5) + t871 * t850 + qJDD(5) + t783;
t682 = -pkin(4) * t770 + qJ(5) * t808 - t708;
t641 = qJ(5) * t995 + t921 * t682 + t957;
t650 = qJ(5) * t987 - t918 * t682 - t1009;
t934 = t922 * t641 + t919 * t650 + t977;
t705 = -qJ(5) * t848 + t708;
t745 = -pkin(4) * t1026 - qJ(5) * t818;
t643 = t918 * t705 + t921 * t745 + t956;
t653 = t921 * t705 - t918 * t745 - t1008;
t933 = t922 * t643 + t919 * t653 + t976;
t693 = t957 - t989;
t723 = t997 - t1009;
t932 = t922 * t693 + t919 * t723 + t977;
t700 = t956 + t997;
t736 = t989 - t1008;
t931 = t922 * t700 + t919 * t736 + t976;
t635 = t921 * t683 + t998;
t645 = -pkin(4) * t708 + qJ(5) * t683;
t604 = -pkin(3) * t708 + pkin(7) * t635 + qJ(5) * t998 + t921 * t645;
t610 = -pkin(7) * t634 + qJ(5) * t990 - t918 * t645;
t616 = -t919 * t634 + t922 * t635;
t928 = -pkin(2) * t708 + pkin(6) * t616 + t922 * t604 + t919 * t610;
t630 = t922 * t673 - t994;
t652 = -pkin(3) * t783 + pkin(7) * t673;
t927 = -pkin(2) * t783 + pkin(6) * t630 - pkin(7) * t994 + t922 * t652;
t895 = t908 - t924;
t893 = t924 - t971;
t887 = -t908 + t971;
t879 = t964 * t969;
t863 = 0.2e1 * t973;
t856 = -t868 + t910;
t855 = t867 - t910;
t854 = t920 * qJDD(3) + t923 * t879;
t853 = t922 * t881 - t913 * t969;
t852 = -t923 * qJDD(3) + t920 * t879;
t851 = -t1024 * t969 - t919 * t941;
t846 = -t919 * t893 + t984;
t844 = t922 * t895 - t991;
t843 = t922 * t894 - t991;
t842 = t922 * t893 + t992;
t841 = t919 * t896 + t984;
t840 = t919 * t895 + t983;
t839 = (t881 + t904) * t919;
t826 = -t919 * t880 - t838;
t825 = t922 * t880 - t919 * t940;
t820 = t868 - t867;
t816 = t923 * t853 - t949;
t815 = t923 * t851 + t949;
t814 = t920 * t853 + t948;
t813 = t920 * t851 - t948;
t812 = t923 * t846 + t919 * t967;
t811 = t923 * t844 + t920 * t966;
t810 = t920 * t846 - t919 * t965;
t809 = t920 * t844 - t922 * t965;
t806 = t923 * t847 + t920 * t880;
t805 = t923 * t845 + t920 * t940;
t803 = t920 * t847 - t923 * t880;
t802 = t920 * t845 - t923 * t940;
t800 = (-t869 * t921 + t871 * t918) * t912;
t799 = (-t869 * t918 - t871 * t921) * t912;
t792 = t923 * t826 + t920 * t887;
t791 = t920 * t826 - t923 * t887;
t785 = -pkin(6) * t843 + t985;
t784 = -pkin(6) * t841 + t993;
t782 = pkin(1) * t888 + pkin(5) * t952;
t781 = t921 * t855 - t996;
t780 = -t918 * t856 - t987;
t779 = t918 * t855 + t988;
t778 = t921 * t856 - t995;
t765 = pkin(4) * t775;
t764 = -pkin(2) * t843 + t804;
t763 = -pkin(2) * t841 + t801;
t761 = -t871 * t1002 + t921 * t790;
t760 = t871 * t1001 + t918 * t790;
t759 = t869 * t1001 - t918 * t789;
t758 = t869 * t1002 + t921 * t789;
t747 = -t919 * t799 + t922 * t800;
t746 = t922 * t799 + t919 * t800;
t744 = t923 * t747 + t920 * t911;
t743 = t920 * t747 - t923 * t911;
t742 = -pkin(1) * t802 - t938;
t741 = -pkin(1) * t803 - t937;
t740 = -pkin(5) * t828 + t923 * t749;
t739 = pkin(5) * t829 + t920 * t749;
t738 = t923 * t750 + t920 * t831;
t737 = t920 * t750 - t923 * t831;
t735 = -t919 * t779 + t922 * t781;
t734 = -t919 * t778 + t922 * t780;
t733 = t922 * t779 + t919 * t781;
t732 = t922 * t778 + t919 * t780;
t728 = -t1026 * t918 - t921 * t770;
t726 = t1026 * t921 - t918 * t770;
t719 = -t919 * t760 + t922 * t761;
t718 = -t919 * t758 + t922 * t759;
t716 = t922 * t760 + t919 * t761;
t715 = t922 * t758 + t919 * t759;
t707 = -pkin(5) * t803 - t920 * t764 + t923 * t785;
t706 = -pkin(5) * t802 - t920 * t763 + t923 * t784;
t704 = t923 * t719 + t963;
t703 = t923 * t718 - t963;
t702 = t920 * t719 - t962;
t701 = t920 * t718 + t962;
t699 = -pkin(1) * t843 + pkin(5) * t806 + t923 * t764 + t920 * t785;
t698 = -pkin(1) * t841 + pkin(5) * t805 + t923 * t763 + t920 * t784;
t697 = t923 * t735 - t920 * t771;
t696 = t923 * t734 + t920 * t775;
t695 = t920 * t735 + t923 * t771;
t694 = t920 * t734 - t923 * t775;
t692 = t916 * t744 + t915 * t746;
t691 = t915 * t744 - t916 * t746;
t684 = -pkin(1) * t737 - t947;
t678 = -t919 * t726 + t922 * t728;
t676 = t922 * t726 + t919 * t728;
t671 = -pkin(5) * t737 - (pkin(2) * t920 - pkin(6) * t923) * t749;
t670 = t923 * t678 + t920 * t820;
t669 = t920 * t678 - t923 * t820;
t664 = t916 * t697 + t915 * t733;
t663 = t916 * t696 + t915 * t732;
t662 = t915 * t697 - t916 * t733;
t661 = t915 * t696 - t916 * t732;
t660 = t916 * t704 + t915 * t716;
t659 = t916 * t703 + t915 * t715;
t658 = t915 * t704 - t916 * t716;
t657 = t915 * t703 - t916 * t715;
t655 = -t961 - t1018;
t654 = qJ(1) * (t916 * t690 + t915 * t730);
t649 = t946 - t1019;
t647 = qJ(1) * (t916 * t687 + t915 * t711);
t646 = pkin(5) * t738 - (-pkin(2) * t923 - pkin(6) * t920 - pkin(1)) * t749;
t640 = -t919 * t700 + t922 * t736 - t1011;
t639 = t862 - t939 - t1018;
t638 = t644 + t765;
t636 = -t919 * t693 + t922 * t723 - t1012;
t633 = -t1019 - t1031;
t632 = t916 * t670 + t915 * t676;
t631 = t915 * t670 - t916 * t676;
t629 = t919 * t673 + t986;
t627 = qJ(1) * (t916 * t668 + t915 * t677);
t626 = t923 * t630 + t920 * t783;
t625 = t920 * t630 - t923 * t783;
t624 = -t931 - t1020;
t623 = -t932 - t1021;
t620 = -pkin(2) * t629 - t1017;
t619 = -t919 * t643 + t922 * t653 - t1011;
t618 = -t919 * t641 + t922 * t650 - t1012;
t617 = t923 * t640 - t920 * t655 - t1014;
t615 = t922 * t634 + t919 * t635;
t614 = t923 * t636 - t920 * t649 - t1015;
t613 = t920 * t640 + t923 * t655 + t978;
t612 = -t933 - t1020;
t611 = -t919 * t637 + t922 * t642 - t1013;
t609 = t923 * t616 + t920 * t708;
t608 = t920 * t616 - t923 * t708;
t607 = t920 * t636 + t923 * t649 + t979;
t606 = -t934 - t1021;
t605 = -pkin(6) * t629 - pkin(7) * t986 - t919 * t652;
t603 = -t935 - t1022;
t602 = t923 * t619 - t920 * t639 - t1014;
t601 = t920 * t619 + t923 * t639 + t978;
t600 = t923 * t618 - t920 * t633 - t1015;
t599 = -pkin(2) * t615 - t959;
t598 = t920 * t618 + t923 * t633 + t979;
t597 = t923 * t611 - t920 * t644 - t1016;
t596 = -t919 * t621 + t922 * t622 - t1013;
t595 = -pkin(1) * t625 - t927;
t594 = t920 * t611 + t923 * t644 + t981;
t593 = -t936 - t1022;
t592 = t923 * t596 - t920 * t638 - t1016;
t591 = -pkin(5) * t625 + t923 * t605 - t920 * t620;
t590 = t920 * t596 + t923 * t638 + t981;
t589 = -pkin(1) * t629 + pkin(5) * t626 + t920 * t605 + t923 * t620;
t588 = -pkin(6) * t615 - t919 * t604 + t922 * t610;
t587 = -pkin(1) * t608 - t928;
t586 = -pkin(5) * t608 + t923 * t588 - t920 * t599;
t585 = -pkin(1) * t615 + pkin(5) * t609 + t920 * t588 + t923 * t599;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1029, -t1028, -t1025, -qJ(1) * t1025, 0, 0, t916 * t885, 0, -t916 * t884, t915 * qJDD(2), t954 * t915 + t916 * t945, t916 * t837 + t953 * t915, t916 * t796, -qJ(1) * (t915 * t952 + t873) - (t915 * pkin(1) - t916 * pkin(5)) * t796, t916 * t816 + t915 * t839, t916 * t792 + t915 * t825, t916 * t812 + t915 * t842, t916 * t815 - t915 * t838, t916 * t811 + t915 * t840, t916 * t854, t916 * t706 - t915 * t742 - qJ(1) * (t915 * t805 - t916 * t841), t916 * t707 - t915 * t741 - qJ(1) * (t915 * t806 - t916 * t843), t916 * t740 - t915 * t955, t916 * t671 - t915 * t684 - qJ(1) * (t915 * t738 + t749 * t916), t660, t632, t663, t659, t664, t692, t916 * t614 - t915 * t623 - t1006, t916 * t617 - t915 * t624 - t1005, t916 * t597 - t915 * t603 - t1007, t916 * t591 - t915 * t595 - qJ(1) * (t915 * t626 - t916 * t629), t660, t632, t663, t659, t664, t692, t916 * t600 - t915 * t606 - t1006, t916 * t602 - t915 * t612 - t1005, t916 * t592 - t915 * t593 - t1007, t916 * t586 - t915 * t587 - qJ(1) * (t915 * t609 - t916 * t615); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1028, -t1029, t950, qJ(1) * t950, 0, 0, t915 * t885, 0, -t915 * t884, -t916 * qJDD(2), t915 * t945 - t954 * t916, t915 * t837 - t953 * t916, t915 * t796, qJ(1) * (t916 * t952 - t1000) - (-t916 * pkin(1) - t915 * pkin(5)) * t796, t915 * t816 - t916 * t839, t915 * t792 - t916 * t825, t915 * t812 - t916 * t842, t915 * t815 + t916 * t838, t915 * t811 - t916 * t840, t915 * t854, t915 * t706 + t916 * t742 + qJ(1) * (t916 * t805 + t915 * t841), t915 * t707 + t916 * t741 + qJ(1) * (t916 * t806 + t915 * t843), t915 * t740 + t916 * t955, t915 * t671 + t916 * t684 + qJ(1) * (t916 * t738 - t749 * t915), t658, t631, t661, t657, t662, t691, t915 * t614 + t916 * t623 + t647, t915 * t617 + t916 * t624 + t654, t915 * t597 + t916 * t603 + t627, t915 * t591 + t916 * t595 + qJ(1) * (t916 * t626 + t915 * t629), t658, t631, t661, t657, t662, t691, t915 * t600 + t916 * t606 + t647, t915 * t602 + t916 * t612 + t654, t915 * t592 + t916 * t593 + t627, t915 * t586 + t916 * t587 + qJ(1) * (t916 * t609 + t915 * t615); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t888, t889, 0, 0, 0, 0, t884, 0, t885, 0, -t837, t945, t952, t782, t814, t791, t810, t813, t809, t852, t698, t699, t739, t646, t702, t669, t694, t701, t695, t743, t607, t613, t594, t589, t702, t669, t694, t701, t695, t743, t598, t601, t590, t585; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t982, -t888, 0, 0, 0, t885, 0, -t884, 0, t945, t837, t796, pkin(5) * t796, t816, t792, t812, t815, t811, t854, t706, t707, t740, t671, t704, t670, t696, t703, t697, t744, t614, t617, t597, t591, t704, t670, t696, t703, t697, t744, t600, t602, t592, t586; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t982, 0, -t889, 0, 0, 0, 0, 0, 0, -qJDD(2), t822, t823, 0, pkin(1) * t796, -t839, -t825, -t842, t838, -t840, 0, t742, t741, t720, t684, -t716, -t676, -t732, -t715, -t733, -t746, t623, t624, t603, t595, -t716, -t676, -t732, -t715, -t733, -t746, t606, t612, t593, t587; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t888, t889, 0, 0, 0, 0, t884, 0, t885, 0, -t837, t945, t952, t782, t814, t791, t810, t813, t809, t852, t698, t699, t739, t646, t702, t669, t694, t701, t695, t743, t607, t613, t594, t589, t702, t669, t694, t701, t695, t743, t598, t601, t590, t585; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1023, 0, 0, -t888, t858, 0, t853, t826, t846, t851, t844, t879, t784, t785, t749, pkin(6) * t749, t719, t678, t734, t718, t735, t747, t636, t640, t611, t605, t719, t678, t734, t718, t735, t747, t618, t619, t596, t588; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1023, 0, qJDD(2), 0, t888, 0, t859, 0, t898, -t887, -t968, -t898, -t966, -qJDD(3), t763, t764, 0, pkin(2) * t749, -t824, -t820, -t775, t824, t771, -t911, t649, t655, t644, t620, -t824, -t820, -t775, t824, t771, -t911, t633, t639, t638, t599; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t858, -t859, 0, 0, t839, t825, t842, -t838, t840, 0, t938, t937, t930, t947, t716, t676, t732, t715, t733, t746, t932, t931, t935, t927, t716, t676, t732, t715, t733, t746, t934, t933, t936, t928; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t881, -t940, t890, -t904, t895, t904, 0, t831, t801, 0, t761, t728, t780, t759, t781, t800, t723, t736, t642, -pkin(7) * t672, t761, t728, t780, t759, t781, t800, t650, t653, t622, t610; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t960, t880, t893, t941, t891, -t960, -t831, 0, t804, 0, t760, t726, t778, t758, t779, t799, t693, t700, t637, t652, t760, t726, t778, t758, t779, t799, t641, t643, t621, t604; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t898, t887, t968, t898, t966, qJDD(3), -t801, -t804, 0, 0, t824, t820, t775, -t824, -t771, t911, -t946, t961, t722, t1017, t824, t820, t775, -t824, -t771, t911, t1031, t863 + t939, -t765 + t722, t959; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t790, -t770, -t1030, t861, t855, -t861, 0, t783, t714, 0, t790, -t770, -t1030, t861, t855, -t861, qJ(5) * t1030, t705, t665, qJ(5) * t681; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1003, t1026, t856, t789, t818, -t1003, -t783, 0, t717, 0, t1003, t1026, t856, t789, t818, -t1003, t682, t745, t651, t645; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t824, t820, t775, -t824, -t771, t911, -t714, -t717, 0, 0, t824, t820, t775, -t824, -t771, t911, t926, t863 + t943, -t765, -t680; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t790, -t770, -t1030, t861, t855, -t861, 0, t708, t681, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1003, t1026, t856, t789, t818, -t1003, -t708, 0, t683, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t824, t820, t775, -t824, -t771, t911, -t681, -t683, 0, 0;];
m_new_reg = t1;

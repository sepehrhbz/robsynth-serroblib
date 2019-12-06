% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPPPR1
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
%   pkin=[a2,a3,a4,a5,d1,d5,theta2,theta3,theta4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:29
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPPPR1_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPPR1_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPPR1_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPPR1_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPPR1_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPPPR1_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:29:27
% EndTime: 2019-12-05 17:29:43
% DurationCPUTime: 16.07s
% Computational Cost: add. (53224->618), mult. (128162->868), div. (0->0), fcn. (82460->10), ass. (0->434)
t1050 = sin(qJ(5));
t1048 = cos(pkin(8));
t1115 = t1048 * qJDD(1);
t1026 = -qJDD(5) + t1115;
t1045 = sin(pkin(8));
t1044 = sin(pkin(9));
t1047 = cos(pkin(9));
t1052 = cos(qJ(5));
t1076 = t1044 * t1052 + t1047 * t1050;
t1069 = t1076 * t1045;
t974 = qJD(1) * t1069;
t1124 = t1045 * t1047;
t1126 = t1044 * t1045;
t976 = (-t1050 * t1126 + t1052 * t1124) * qJD(1);
t1152 = t976 * t974;
t1169 = -t1026 - t1152;
t1177 = t1050 * t1169;
t1176 = t1052 * t1169;
t1051 = sin(qJ(1));
t1046 = sin(pkin(7));
t1049 = cos(pkin(7));
t1053 = cos(qJ(1));
t1019 = t1051 * g(2) - t1053 * g(3);
t1054 = qJD(1) ^ 2;
t1003 = -t1054 * pkin(1) + t1019;
t1020 = t1053 * g(2) + t1051 * g(3);
t1068 = qJDD(1) * pkin(1) + t1020;
t947 = t1046 * t1003 - t1049 * t1068;
t948 = t1049 * t1003 + t1046 * t1068;
t1100 = t1046 * t947 + t1049 * t948;
t878 = t1046 * t948 - t1049 * t947;
t1131 = t1053 * t878;
t1175 = -t1051 * t1100 - t1131;
t1134 = t1051 * t878;
t1174 = -t1053 * t1100 + t1134;
t1114 = t1049 * qJDD(1);
t1007 = -t1046 * t1054 + t1114;
t1151 = g(1) - qJDD(2);
t1161 = -qJ(2) * t1007 - t1046 * t1151;
t1116 = t1046 * qJDD(1);
t1006 = t1049 * t1054 + t1116;
t957 = t1051 * t1006 - t1053 * t1007;
t979 = -qJ(2) * t1006 + t1049 * t1151;
t1173 = -pkin(5) * t957 + t1051 * t979 - t1053 * t1161;
t1079 = t1053 * t1006 + t1051 * t1007;
t1172 = pkin(5) * t1079 - t1051 * t1161 - t1053 * t979;
t1154 = pkin(3) * t1048;
t1084 = -qJ(4) * t1045 - t1154;
t929 = -qJDD(1) * pkin(2) - t1054 * qJ(3) + qJDD(3) + t947;
t1171 = -0.2e1 * qJD(1) * qJD(4) * t1045 + qJDD(1) * t1084 + t929;
t1122 = t1048 * qJD(1);
t1027 = -qJD(5) + t1122;
t1130 = t974 * t1027;
t1033 = t1045 * qJDD(1);
t1103 = t1047 * t1033;
t1106 = t1044 * t1033;
t919 = -t974 * qJD(5) - t1050 * t1106 + t1052 * t1103;
t1170 = t919 + t1130;
t1102 = t1048 * t1114;
t1039 = t1045 ^ 2;
t1041 = t1048 ^ 2;
t1121 = t1048 * t1054;
t999 = (t1039 + t1041) * t1121;
t961 = -t1046 * t999 + t1102;
t1104 = t1046 * t1115;
t963 = t1049 * t999 + t1104;
t1166 = t1051 * t963 - t1053 * t961;
t1165 = t1051 * t961 + t1053 * t963;
t1030 = t1048 * t1151;
t1159 = 2 * qJD(3);
t932 = -t1054 * pkin(2) + qJDD(1) * qJ(3) + t948;
t1099 = qJD(1) * t1159 + t932;
t906 = t1045 * t1099 + t1030;
t1101 = t1045 * t1151;
t907 = t1099 * t1048 - t1101;
t839 = t1045 * t906 + t1048 * t907;
t1164 = (qJD(5) + t1027) * t976;
t972 = t974 ^ 2;
t973 = t976 ^ 2;
t1025 = t1027 ^ 2;
t1160 = t1044 ^ 2;
t1072 = t1171 * t1047;
t1074 = -pkin(4) * t1048 - pkin(6) * t1124;
t1123 = t1045 * t1048;
t1153 = pkin(4) * t1039;
t1120 = t1084 * qJD(1) + t1159;
t1081 = t1120 * qJD(1) + t932;
t873 = t1081 * t1048 - t1101;
t802 = t1074 * qJDD(1) + (-t873 + (pkin(6) * t1123 - t1047 * t1153) * t1054) * t1044 + t1072;
t1125 = t1044 * t1054;
t821 = t1171 * t1044 + t1047 * t873;
t993 = t1074 * qJD(1);
t803 = t993 * t1122 + (-pkin(6) * t1033 - t1125 * t1153) * t1044 + t821;
t752 = t1050 * t803 - t1052 * t802;
t753 = t1050 * t802 + t1052 * t803;
t704 = t1050 * t753 - t1052 * t752;
t1158 = pkin(4) * t704;
t1063 = qJDD(1) * t1069;
t867 = -t1063 - t1164;
t870 = t919 - t1130;
t812 = t1050 * t867 - t1052 * t870;
t1157 = pkin(4) * t812;
t1155 = pkin(3) * t1045;
t1150 = -pkin(2) * t929 + qJ(3) * t839;
t1147 = t1027 * t976;
t1146 = t1044 * t704;
t1113 = qJDD(4) + t1030;
t871 = t1045 * t1081 + t1113;
t1145 = t1044 * t871;
t1108 = t1047 * t1125;
t1008 = t1039 * t1108;
t985 = -t1008 + t1115;
t1144 = t1044 * t985;
t986 = -t1008 - t1115;
t1143 = t1044 * t986;
t924 = t1045 * t929;
t1142 = t1046 * t929;
t1141 = t1047 * t704;
t1140 = t1047 * t871;
t1139 = t1047 * t985;
t1138 = t1047 * t986;
t925 = t1048 * t929;
t1137 = t1049 * t929;
t1127 = t1039 * t1054;
t1023 = t1160 * t1127;
t1118 = qJDD(1) * t1044;
t840 = -pkin(6) * t1023 + (pkin(4) * t1118 + t932 + (t1047 * t993 + t1120) * qJD(1)) * t1045 + t1113;
t1136 = t1050 * t840;
t910 = t1026 - t1152;
t1135 = t1050 * t910;
t1133 = t1052 * t840;
t1132 = t1052 * t910;
t1129 = t1027 * t1050;
t1128 = t1027 * t1052;
t1117 = qJDD(1) * t1047;
t1112 = t1045 * t1152;
t1111 = t1048 * t1152;
t1110 = pkin(2) * t1115 - qJ(3) * t999 - t925;
t1040 = t1047 ^ 2;
t1109 = t1040 * t1127;
t1107 = t1047 * t1121;
t1024 = t1045 * t1121;
t1105 = t1045 * t1115;
t820 = t1044 * t873 - t1072;
t771 = t1044 * t820 + t1047 * t821;
t705 = t1050 * t752 + t1052 * t753;
t689 = t1044 * t705 + t1141;
t698 = -pkin(4) * t840 + pkin(6) * t705;
t671 = -pkin(6) * t1141 - qJ(4) * t689 - t1044 * t698;
t679 = -pkin(3) * t689 - t1158;
t690 = t1047 * t705 - t1146;
t687 = t1045 * t840 + t1048 * t690;
t1097 = -pkin(2) * t689 + qJ(3) * t687 + t1045 * t671 + t1048 * t679;
t814 = t1050 * t870 + t1052 * t867;
t889 = -t972 - t973;
t696 = -pkin(4) * t889 + pkin(6) * t814 + t705;
t697 = -pkin(6) * t812 - t704;
t759 = t1044 * t814 + t1047 * t812;
t681 = -qJ(4) * t759 - t1044 * t696 + t1047 * t697;
t729 = -pkin(3) * t759 - t1157;
t761 = -t1044 * t812 + t1047 * t814;
t743 = t1045 * t889 + t1048 * t761;
t1096 = -pkin(2) * t759 + qJ(3) * t743 + t1045 * t681 + t1048 * t729;
t908 = -t1025 - t972;
t850 = t1052 * t908 - t1177;
t1062 = t1076 * t1033;
t865 = (qJD(5) - t1027) * t976 + t1062;
t765 = -pkin(4) * t865 + pkin(6) * t850 - t1133;
t849 = t1050 * t908 + t1176;
t779 = -pkin(6) * t849 + t1136;
t781 = t1044 * t850 + t1047 * t849;
t700 = -qJ(4) * t781 - t1044 * t765 + t1047 * t779;
t1073 = pkin(4) * t849 - t752;
t711 = -pkin(3) * t781 - t1073;
t782 = -t1044 * t849 + t1047 * t850;
t764 = t1045 * t865 + t1048 * t782;
t1095 = -pkin(2) * t781 + qJ(3) * t764 + t1045 * t700 + t1048 * t711;
t941 = -t973 - t1025;
t852 = -t1050 * t941 + t1132;
t769 = -pkin(4) * t1170 + pkin(6) * t852 + t1136;
t851 = t1052 * t941 + t1135;
t787 = -pkin(6) * t851 + t1133;
t791 = t1044 * t852 + t1047 * t851;
t709 = -qJ(4) * t791 - t1044 * t769 + t1047 * t787;
t1065 = pkin(4) * t851 - t753;
t719 = -pkin(3) * t791 - t1065;
t792 = -t1044 * t851 + t1047 * t852;
t774 = t1045 * t1170 + t1048 * t792;
t1094 = -pkin(2) * t791 + qJ(3) * t774 + t1045 * t709 + t1048 * t719;
t1036 = t1041 * t1054;
t995 = -t1023 - t1036;
t934 = t1044 * t995 + t1138;
t800 = -pkin(3) * t934 + t820;
t835 = -qJ(4) * t934 + t1145;
t938 = t1047 * t995 - t1143;
t1070 = t1107 - t1118;
t982 = t1070 * t1045;
t895 = -t1045 * t982 + t1048 * t938;
t1093 = -pkin(2) * t934 + qJ(3) * t895 + t1045 * t835 + t1048 * t800;
t998 = -t1036 - t1109;
t935 = t1047 * t998 + t1144;
t801 = -pkin(3) * t935 + t821;
t836 = -qJ(4) * t935 + t1140;
t939 = -t1044 * t998 + t1139;
t1010 = t1044 * t1024;
t983 = t1010 + t1103;
t896 = t1045 * t983 + t1048 * t939;
t1092 = -pkin(2) * t935 + qJ(3) * t896 + t1045 * t836 + t1048 * t801;
t1032 = t1039 * qJDD(1);
t1034 = t1041 * qJDD(1);
t1004 = t1034 + t1032;
t1011 = t1036 + t1127;
t1091 = pkin(2) * t1011 + qJ(3) * t1004 + t839;
t1038 = t1045 * t1039;
t1090 = t1038 * t1108;
t1089 = t1044 * t1107;
t1088 = t1047 * t1024;
t1087 = t1045 * t1102;
t1086 = -pkin(3) * t871 + qJ(4) * t771;
t1015 = t1051 * qJDD(1) + t1053 * t1054;
t1085 = pkin(5) * t1015 - t1053 * g(1);
t770 = t1044 * t821 - t1047 * t820;
t837 = t1045 * t907 - t1048 * t906;
t968 = t1006 * t1123;
t969 = -t1046 * t1024 + t1087;
t1083 = t1051 * t969 + t1053 * t968;
t1082 = t1051 * t968 - t1053 * t969;
t1080 = t1039 * t1089;
t1078 = t1053 * t1019 - t1051 * t1020;
t1077 = -t1051 * t1019 - t1053 * t1020;
t996 = (t1041 * t1045 + t1038) * t1054;
t1075 = -pkin(2) * t1033 + qJ(3) * t996 + t924;
t981 = (t1107 + t1118) * t1045;
t984 = -t1010 + t1103;
t915 = -t1044 * t981 - t1047 * t984;
t755 = -qJ(4) * t915 - t770;
t917 = t1044 * t984 - t1047 * t981;
t987 = t1023 + t1109;
t880 = -t1045 * t987 + t1048 * t917;
t1071 = qJ(3) * t880 + t1045 * t755 + (-pkin(2) - t1154) * t915;
t1067 = -pkin(3) * t983 + qJ(4) * t939 + t1145;
t1066 = pkin(3) * t982 + qJ(4) * t938 - t1140;
t1064 = pkin(3) * t987 + qJ(4) * t917 + t771;
t750 = t1045 * t871 + t1048 * t771;
t1061 = qJ(3) * t750 + (-pkin(2) + t1084) * t770;
t1060 = -pkin(3) * t889 + qJ(4) * t761 + t1044 * t697 + t1047 * t696;
t1059 = -pkin(3) * t865 + qJ(4) * t782 + t1044 * t779 + t1047 * t765;
t1058 = -pkin(3) * t1170 + qJ(4) * t792 + t1044 * t787 + t1047 * t769;
t1057 = -pkin(3) * t840 - pkin(6) * t1146 + qJ(4) * t690 + t1047 * t698;
t1021 = 0.2e1 * t1105;
t1016 = -t1053 * qJDD(1) + t1051 * t1054;
t1012 = -t1036 + t1127;
t1005 = t1034 - t1032;
t997 = t1036 - t1109;
t994 = t1023 - t1036;
t989 = -pkin(5) * t1016 + t1051 * g(1);
t988 = -t1023 + t1109;
t971 = (t1040 + t1160) * t1024;
t970 = (qJDD(1) * t1040 + t1089) * t1045;
t967 = (-t1040 * t1121 + t1044 * t1117) * t1045;
t966 = (t1044 * t1121 + t1117) * t1126;
t965 = t1070 * t1126;
t962 = t1045 * t1116 + t1049 * t996;
t959 = -t1045 * t1114 + t1046 * t996;
t954 = t1049 * t1005 + t1046 * t1012;
t953 = t1049 * t1004 - t1046 * t1011;
t952 = t1046 * t1005 - t1049 * t1012;
t951 = t1046 * t1004 + t1049 * t1011;
t950 = -t973 + t1025;
t949 = t972 - t1025;
t945 = t1048 * t970 + t1090;
t944 = -t1048 * t965 - t1090;
t943 = t1046 * t971 - t1087;
t942 = -t1045 * t1104 - t1049 * t971;
t940 = -t1044 * t997 + t1138;
t937 = t1047 * t994 + t1144;
t936 = t1047 * t997 + t1143;
t933 = t1044 * t994 - t1139;
t928 = t1045 * t970 - t1080;
t927 = -t1045 * t965 + t1080;
t922 = -pkin(1) * t1006 - t948;
t921 = pkin(1) * t1007 - t947;
t920 = t973 - t972;
t918 = -t976 * qJD(5) - t1063;
t916 = -t1044 * t983 + t1047 * t982;
t914 = t1044 * t982 + t1047 * t983;
t901 = -t1051 * t959 + t1053 * t962;
t900 = -t1051 * t962 - t1053 * t959;
t899 = (-t1050 * t976 + t1052 * t974) * t1027;
t898 = (t1050 * t974 + t1052 * t976) * t1027;
t897 = t1045 * t984 + t1048 * t940;
t894 = -t1045 * t981 + t1048 * t937;
t893 = t1045 * t940 - t1048 * t984;
t892 = t1045 * t939 - t1048 * t983;
t891 = t1045 * t938 + t1048 * t982;
t890 = t1045 * t937 + t1048 * t981;
t886 = t1046 * t967 + t1049 * t945;
t885 = -t1046 * t966 + t1049 * t944;
t884 = t1046 * t945 - t1049 * t967;
t883 = t1046 * t944 + t1049 * t966;
t879 = t1045 * t988 + t1048 * t916;
t876 = t1045 * t917 + t1048 * t987;
t875 = t1045 * t916 - t1048 * t988;
t874 = pkin(1) * t878;
t866 = t1062 + t1164;
t863 = pkin(1) * t1151 + qJ(2) * t1100;
t862 = t1052 * t919 + t976 * t1129;
t861 = t1050 * t919 - t976 * t1128;
t860 = -t1050 * t918 - t974 * t1128;
t859 = t1052 * t918 - t974 * t1129;
t858 = t1052 * t949 + t1135;
t857 = -t1050 * t950 + t1176;
t856 = t1050 * t949 - t1132;
t855 = t1052 * t950 + t1177;
t854 = pkin(1) * t961 + t1110;
t853 = pkin(1) * t959 + t1075;
t848 = t1046 * t936 + t1049 * t897;
t847 = t1046 * t935 + t1049 * t896;
t846 = t1046 * t934 + t1049 * t895;
t845 = t1046 * t933 + t1049 * t894;
t844 = t1046 * t897 - t1049 * t936;
t843 = t1046 * t896 - t1049 * t935;
t842 = t1046 * t895 - t1049 * t934;
t841 = t1046 * t894 - t1049 * t933;
t831 = t1046 * t915 + t1049 * t880;
t830 = t1046 * t914 + t1049 * t879;
t829 = t1046 * t880 - t1049 * t915;
t828 = t1046 * t879 - t1049 * t914;
t827 = -qJ(2) * t959 - t1046 * t907 + t1048 * t1137;
t826 = -qJ(2) * t961 + t1045 * t1137 - t1046 * t906;
t825 = qJ(2) * t962 + t1046 * t925 + t1049 * t907;
t824 = -qJ(2) * t963 + t1045 * t1142 + t1049 * t906;
t823 = -t1044 * t898 + t1047 * t899;
t822 = t1044 * t899 + t1047 * t898;
t818 = -t1045 * t1026 + t1048 * t823;
t817 = t1048 * t1026 + t1045 * t823;
t816 = -qJ(2) * t951 - t1049 * t837;
t815 = qJ(2) * t953 - t1046 * t837;
t813 = -t1050 * t1170 - t1052 * t865;
t811 = -t1050 * t865 + t1052 * t1170;
t810 = t1049 * t839 + t1142;
t809 = t1046 * t839 - t1137;
t808 = -t1044 * t861 + t1047 * t862;
t807 = -t1044 * t859 + t1047 * t860;
t806 = t1044 * t862 + t1047 * t861;
t805 = t1044 * t860 + t1047 * t859;
t804 = pkin(1) * t951 + t1091;
t796 = -t1044 * t856 + t1047 * t858;
t795 = -t1044 * t855 + t1047 * t857;
t794 = t1044 * t858 + t1047 * t856;
t793 = t1044 * t857 + t1047 * t855;
t789 = -pkin(2) * t891 - t1066;
t788 = -pkin(2) * t892 - t1067;
t786 = t1048 * t808 + t1112;
t785 = t1048 * t807 - t1112;
t784 = t1045 * t808 - t1111;
t783 = t1045 * t807 + t1111;
t778 = -t1045 * t866 + t1048 * t796;
t777 = t1045 * t870 + t1048 * t795;
t776 = t1045 * t796 + t1048 * t866;
t775 = t1045 * t795 - t1048 * t870;
t773 = t1045 * t792 - t1048 * t1170;
t767 = t1046 * t822 + t1049 * t818;
t766 = t1046 * t818 - t1049 * t822;
t763 = t1045 * t782 - t1048 * t865;
t760 = -t1044 * t811 + t1047 * t813;
t758 = t1044 * t813 + t1047 * t811;
t756 = pkin(1) * t809 + t1150;
t749 = t1045 * t771 - t1048 * t871;
t748 = t1045 * t920 + t1048 * t760;
t747 = t1045 * t760 - t1048 * t920;
t746 = -qJ(3) * t892 - t1045 * t801 + t1048 * t836;
t745 = -qJ(3) * t891 - t1045 * t800 + t1048 * t835;
t742 = t1045 * t761 - t1048 * t889;
t740 = t1046 * t806 + t1049 * t786;
t739 = t1046 * t805 + t1049 * t785;
t738 = t1046 * t786 - t1049 * t806;
t737 = t1046 * t785 - t1049 * t805;
t736 = -qJ(2) * t809 + (pkin(2) * t1046 - qJ(3) * t1049) * t837;
t735 = -pkin(2) * t876 - t1064;
t734 = t1046 * t794 + t1049 * t778;
t733 = t1046 * t793 + t1049 * t777;
t732 = t1046 * t778 - t1049 * t794;
t731 = t1046 * t777 - t1049 * t793;
t730 = -qJ(3) * t876 + t1048 * t755 + t915 * t1155;
t727 = t1046 * t791 + t1049 * t774;
t726 = t1046 * t774 - t1049 * t791;
t725 = pkin(1) * t843 + t1092;
t724 = pkin(1) * t842 + t1093;
t723 = qJ(2) * t810 + (-pkin(2) * t1049 - qJ(3) * t1046 - pkin(1)) * t837;
t722 = t1046 * t781 + t1049 * t764;
t721 = t1046 * t764 - t1049 * t781;
t720 = pkin(1) * t829 + t1071;
t717 = t1046 * t770 + t1049 * t750;
t716 = t1046 * t750 - t1049 * t770;
t715 = -qJ(2) * t843 - t1046 * t788 + t1049 * t746;
t714 = -qJ(2) * t842 - t1046 * t789 + t1049 * t745;
t713 = t1046 * t758 + t1049 * t748;
t712 = t1046 * t748 - t1049 * t758;
t707 = t1046 * t759 + t1049 * t743;
t706 = t1046 * t743 - t1049 * t759;
t703 = -pkin(2) * t749 - t1086;
t702 = -pkin(1) * t892 + qJ(2) * t847 + t1046 * t746 + t1049 * t788;
t701 = -pkin(1) * t891 + qJ(2) * t846 + t1046 * t745 + t1049 * t789;
t695 = -qJ(3) * t749 + (-qJ(4) * t1048 + t1155) * t770;
t694 = -qJ(2) * t829 - t1046 * t735 + t1049 * t730;
t693 = -pkin(2) * t773 - t1058;
t692 = -pkin(1) * t876 + qJ(2) * t831 + t1046 * t730 + t1049 * t735;
t691 = -pkin(2) * t763 - t1059;
t686 = t1045 * t690 - t1048 * t840;
t684 = -qJ(3) * t773 - t1045 * t719 + t1048 * t709;
t683 = -qJ(3) * t763 - t1045 * t711 + t1048 * t700;
t682 = pkin(1) * t716 + t1061;
t677 = pkin(1) * t726 + t1094;
t676 = -qJ(2) * t716 - t1046 * t703 + t1049 * t695;
t675 = pkin(1) * t721 + t1095;
t674 = -pkin(2) * t742 - t1060;
t673 = -pkin(1) * t749 + qJ(2) * t717 + t1046 * t695 + t1049 * t703;
t672 = -qJ(3) * t742 - t1045 * t729 + t1048 * t681;
t669 = t1046 * t689 + t1049 * t687;
t668 = t1046 * t687 - t1049 * t689;
t667 = -qJ(2) * t726 - t1046 * t693 + t1049 * t684;
t666 = -qJ(2) * t721 - t1046 * t691 + t1049 * t683;
t665 = -pkin(1) * t773 + qJ(2) * t727 + t1046 * t684 + t1049 * t693;
t664 = -pkin(1) * t763 + qJ(2) * t722 + t1046 * t683 + t1049 * t691;
t663 = pkin(1) * t706 + t1096;
t662 = -pkin(2) * t686 - t1057;
t661 = -qJ(2) * t706 - t1046 * t674 + t1049 * t672;
t660 = -pkin(1) * t742 + qJ(2) * t707 + t1046 * t672 + t1049 * t674;
t659 = -qJ(3) * t686 - t1045 * t679 + t1048 * t671;
t658 = pkin(1) * t668 + t1097;
t657 = -qJ(2) * t668 - t1046 * t662 + t1049 * t659;
t656 = -pkin(1) * t686 + qJ(2) * t669 + t1046 * t659 + t1049 * t662;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t1020, -t1019, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t921, t922, 0, t874, t1032, t1021, 0, t1034, 0, 0, t854, t853, t804, t756, t928, t875, t893, t927, t890, t1034, t724, t725, t720, t682, t784, t747, t775, t783, t776, t817, t675, t677, t663, t658; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t1015, 0, t1016, 0, t1085, t989, -t1078, -pkin(5) * t1078, 0, 0, -t1079, 0, t957, 0, t1172, t1173, t1174, pkin(5) * t1174 + qJ(2) * t1134 - t1053 * t863, -t1083, -t1051 * t954 - t1053 * t952, t900, t1083, -t1166, 0, pkin(5) * t1165 - t1051 * t826 - t1053 * t824, -pkin(5) * t901 - t1051 * t827 - t1053 * t825, -t1051 * t816 - t1053 * t815 - pkin(5) * (-t1051 * t951 + t1053 * t953), -t1051 * t736 - t1053 * t723 - pkin(5) * (-t1051 * t809 + t1053 * t810), -t1051 * t886 - t1053 * t884, -t1051 * t830 - t1053 * t828, -t1051 * t848 - t1053 * t844, -t1051 * t885 - t1053 * t883, -t1051 * t845 - t1053 * t841, -t1051 * t943 - t1053 * t942, -t1051 * t714 - t1053 * t701 - pkin(5) * (-t1051 * t842 + t1053 * t846), -t1051 * t715 - t1053 * t702 - pkin(5) * (-t1051 * t843 + t1053 * t847), -t1051 * t694 - t1053 * t692 - pkin(5) * (-t1051 * t829 + t1053 * t831), -t1051 * t676 - t1053 * t673 - pkin(5) * (-t1051 * t716 + t1053 * t717), -t1051 * t740 - t1053 * t738, -t1051 * t713 - t1053 * t712, -t1051 * t733 - t1053 * t731, -t1051 * t739 - t1053 * t737, -t1051 * t734 - t1053 * t732, -t1051 * t767 - t1053 * t766, -t1051 * t666 - t1053 * t664 - pkin(5) * (-t1051 * t721 + t1053 * t722), -t1051 * t667 - t1053 * t665 - pkin(5) * (-t1051 * t726 + t1053 * t727), -t1051 * t661 - t1053 * t660 - pkin(5) * (-t1051 * t706 + t1053 * t707), -t1051 * t657 - t1053 * t656 - pkin(5) * (-t1051 * t668 + t1053 * t669); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t1016, 0, -t1015, 0, -t989, t1085, t1077, pkin(5) * t1077, 0, 0, -t957, 0, -t1079, 0, -t1173, t1172, t1175, pkin(5) * t1175 - qJ(2) * t1131 - t1051 * t863, -t1082, -t1051 * t952 + t1053 * t954, t901, t1082, t1165, 0, pkin(5) * t1166 - t1051 * t824 + t1053 * t826, pkin(5) * t900 - t1051 * t825 + t1053 * t827, t1053 * t816 - t1051 * t815 + pkin(5) * (-t1051 * t953 - t1053 * t951), t1053 * t736 - t1051 * t723 + pkin(5) * (-t1051 * t810 - t1053 * t809), -t1051 * t884 + t1053 * t886, -t1051 * t828 + t1053 * t830, -t1051 * t844 + t1053 * t848, -t1051 * t883 + t1053 * t885, -t1051 * t841 + t1053 * t845, -t1051 * t942 + t1053 * t943, t1053 * t714 - t1051 * t701 + pkin(5) * (-t1051 * t846 - t1053 * t842), t1053 * t715 - t1051 * t702 + pkin(5) * (-t1051 * t847 - t1053 * t843), t1053 * t694 - t1051 * t692 + pkin(5) * (-t1051 * t831 - t1053 * t829), t1053 * t676 - t1051 * t673 + pkin(5) * (-t1051 * t717 - t1053 * t716), -t1051 * t738 + t1053 * t740, -t1051 * t712 + t1053 * t713, -t1051 * t731 + t1053 * t733, -t1051 * t737 + t1053 * t739, -t1051 * t732 + t1053 * t734, -t1051 * t766 + t1053 * t767, t1053 * t666 - t1051 * t664 + pkin(5) * (-t1051 * t722 - t1053 * t721), t1053 * t667 - t1051 * t665 + pkin(5) * (-t1051 * t727 - t1053 * t726), t1053 * t661 - t1051 * t660 + pkin(5) * (-t1051 * t707 - t1053 * t706), t1053 * t657 - t1051 * t656 + pkin(5) * (-t1051 * t669 - t1053 * t668); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1054, 0, 0, -g(1), -t1020, 0, 0, 0, t1007, 0, -t1006, 0, t1161, -t979, -t878, -qJ(2) * t878, t969, t954, t962, -t969, t963, 0, t826, t827, t816, t736, t886, t830, t848, t885, t845, t943, t714, t715, t694, t676, t740, t713, t733, t739, t734, t767, t666, t667, t661, t657; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1054, 0, qJDD(1), 0, g(1), 0, t1019, 0, 0, 0, t1006, 0, t1007, 0, t979, t1161, t1100, t863, t968, t952, t959, -t968, -t961, 0, t824, t825, t815, t723, t884, t828, t844, t883, t841, t942, t701, t702, t692, t673, t738, t712, t731, t737, t732, t766, t664, t665, t660, t656; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1020, -t1019, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t921, t922, 0, t874, t1032, t1021, 0, t1034, 0, 0, t854, t853, t804, t756, t928, t875, t893, t927, t890, t1034, t724, t725, t720, t682, t784, t747, t775, t783, t776, t817, t675, t677, t663, t658; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1054, 0, 0, -t1151, t947, 0, t1105, t1005, t996, -t1105, t999, 0, t924, t925, -t837, -qJ(3) * t837, t945, t879, t897, t944, t894, -t1105, t745, t746, t730, t695, t786, t748, t777, t785, t778, t818, t683, t684, t672, t659; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1054, 0, qJDD(1), 0, t1151, 0, t948, 0, t1024, -t1012, -t1033, -t1024, -t1115, 0, t906, t907, 0, -pkin(2) * t837, -t967, -t914, -t936, t966, -t933, -t971, t789, t788, t735, t703, -t806, -t758, -t793, -t805, -t794, -t822, t691, t693, t674, t662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t947, -t948, 0, 0, t1032, t1021, 0, t1034, 0, 0, t1110, t1075, t1091, t1150, t928, t875, t893, t927, t890, t1034, t1093, t1092, t1071, t1061, t784, t747, t775, t783, t776, t817, t1095, t1094, t1096, t1097; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1033, t1115, t1024, 0, t1036, 0, 0, t929, t906, 0, t970, t916, t940, -t965, t937, 0, t835, t836, t755, -qJ(4) * t770, t808, t760, t795, t807, t796, t823, t700, t709, t681, t671; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1033, -t1127, t1115, -t1024, 0, -t929, 0, t907, 0, -t1008, -t988, -t984, t1008, t981, t1115, t800, t801, -pkin(3) * t915, -pkin(3) * t770, -t1152, -t920, -t870, t1152, t866, t1026, t711, t719, t729, t679; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1024, t1012, t1033, t1024, t1115, 0, -t906, -t907, 0, 0, t967, t914, t936, -t966, t933, t971, t1066, t1067, t1064, t1086, t806, t758, t793, t805, t794, t822, t1059, t1058, t1060, t1057; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1103, t982, t986, -t1010, t994, t1010, 0, t871, t820, 0, t862, t813, t857, t860, t858, t899, t779, t787, t697, -pkin(6) * t704; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1088, t983, t997, -t1106, -t985, t1088, -t871, 0, t821, 0, t861, t811, t855, t859, t856, t898, t765, t769, t696, t698; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1008, t988, t984, -t1008, -t981, -t1115, -t820, -t821, 0, 0, t1152, t920, t870, -t1152, -t866, -t1026, t1073, t1065, t1157, t1158; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t919, -t865, t1169, -t1130, t949, t1130, 0, t840, t752, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1147, t1170, t950, t918, -t910, t1147, -t840, 0, t753, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1152, t920, t870, -t1152, -t866, -t1026, -t752, -t753, 0, 0;];
m_new_reg = t1;

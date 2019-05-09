% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPPRRR4
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta3]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 15:42
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPPRRR4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR4_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR4_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRR4_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRR4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRR4_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 15:42:06
% EndTime: 2019-05-05 15:42:26
% DurationCPUTime: 21.36s
% Computational Cost: add. (143254->817), mult. (264357->1004), div. (0->0), fcn. (154339->10), ass. (0->492)
t1160 = sin(pkin(10));
t1161 = cos(pkin(10));
t1172 = qJD(1) ^ 2;
t1125 = -t1160 * qJDD(1) + t1161 * t1172;
t1126 = qJDD(1) * t1161 + t1160 * t1172;
t1167 = sin(qJ(1));
t1171 = cos(qJ(1));
t1067 = -t1125 * t1167 + t1171 * t1126;
t1275 = g(3) + qJDD(3);
t1098 = qJ(3) * t1125 + t1161 * t1275;
t1290 = qJ(3) * t1126 + t1160 * t1275;
t1307 = pkin(6) * t1067 + t1167 * t1098 - t1171 * t1290;
t1291 = t1171 * t1125 + t1126 * t1167;
t1306 = -pkin(6) * t1291 + t1171 * t1098 + t1167 * t1290;
t1164 = sin(qJ(6));
t1165 = sin(qJ(5));
t1169 = cos(qJ(5));
t1166 = sin(qJ(4));
t1263 = qJD(1) * t1166;
t1117 = qJD(4) * t1169 + t1165 * t1263;
t1118 = -t1165 * qJD(4) + t1169 * t1263;
t1168 = cos(qJ(6));
t1062 = -t1168 * t1117 - t1118 * t1164;
t1064 = t1117 * t1164 - t1118 * t1168;
t1014 = t1064 * t1062;
t1148 = qJD(4) * t1263;
t1170 = cos(qJ(4));
t1241 = t1170 * qJDD(1);
t1124 = t1148 - t1241;
t1115 = qJDD(5) - t1124;
t1109 = qJDD(6) + t1115;
t1293 = -t1014 + t1109;
t1305 = t1164 * t1293;
t1073 = t1117 * t1118;
t1292 = -t1073 + t1115;
t1304 = t1165 * t1292;
t1302 = t1168 * t1293;
t1301 = t1169 * t1292;
t1282 = pkin(4) * t1170;
t1300 = pkin(8) * t1166 + t1282;
t1261 = qJD(2) * qJD(1);
t1154 = 0.2e1 * t1261;
t1135 = t1171 * g(1) + t1167 * g(2);
t1156 = qJDD(1) * qJ(2);
t1217 = -t1135 + t1156;
t1287 = pkin(1) + pkin(2);
t1091 = -t1172 * t1287 + t1154 + t1217;
t1134 = t1167 * g(1) - t1171 * g(2);
t1227 = -qJDD(2) + t1134;
t1201 = -t1172 * qJ(2) - t1227;
t1173 = -qJDD(1) * t1287 + t1201;
t1029 = t1160 * t1091 - t1161 * t1173;
t1030 = t1161 * t1091 + t1160 * t1173;
t1223 = t1029 * t1160 + t1030 * t1161;
t973 = t1029 * t1161 - t1030 * t1160;
t1299 = t1167 * t973 - t1171 * t1223;
t1298 = t1167 * t1223 + t1171 * t973;
t1262 = qJD(1) * t1170;
t1144 = qJD(5) + t1262;
t1137 = qJD(6) + t1144;
t1041 = t1137 * t1062;
t1236 = qJD(4) * t1262;
t1242 = t1166 * qJDD(1);
t1122 = -t1236 - t1242;
t1219 = -t1165 * qJDD(4) - t1169 * t1122;
t1058 = qJD(5) * t1117 - t1219;
t1220 = t1169 * qJDD(4) - t1165 * t1122;
t1185 = qJD(5) * t1118 + t1220;
t970 = -t1062 * qJD(6) + t1168 * t1058 + t1164 * t1185;
t1296 = -t1041 + t970;
t1100 = t1144 * t1117;
t1026 = t1058 - t1100;
t1234 = t1164 * t1058 - t1168 * t1185;
t935 = (qJD(6) - t1137) * t1064 + t1234;
t1289 = qJD(4) ^ 2;
t1060 = t1062 ^ 2;
t1061 = t1064 ^ 2;
t1288 = t1117 ^ 2;
t1114 = t1118 ^ 2;
t1136 = t1137 ^ 2;
t1142 = t1144 ^ 2;
t1021 = -pkin(3) * t1172 - qJDD(1) * pkin(7) + t1030;
t1012 = t1166 * t1021 - t1170 * t1275;
t1013 = t1170 * t1021 + t1166 * t1275;
t946 = t1012 * t1170 - t1013 * t1166;
t1286 = pkin(3) * t946;
t1020 = qJDD(1) * pkin(3) - t1172 * pkin(7) + t1029;
t1225 = t1124 + t1148;
t1226 = -t1122 + t1236;
t978 = -pkin(4) * t1225 + pkin(8) * t1226 + t1020;
t1205 = t1172 * t1300;
t989 = -pkin(4) * t1289 + qJDD(4) * pkin(8) - t1170 * t1205 + t1013;
t913 = t1165 * t989 - t1169 * t978;
t879 = pkin(5) * t1292 - pkin(9) * t1026 - t913;
t1087 = pkin(5) * t1144 + pkin(9) * t1118;
t914 = t1165 * t978 + t1169 * t989;
t889 = -pkin(5) * t1288 + pkin(9) * t1185 - t1144 * t1087 + t914;
t838 = t1164 * t889 - t1168 * t879;
t839 = t1164 * t879 + t1168 * t889;
t798 = t1164 * t839 - t1168 * t838;
t1285 = pkin(5) * t798;
t938 = t1041 + t970;
t875 = -t1164 * t935 - t1168 * t938;
t1284 = pkin(5) * t875;
t1283 = pkin(4) * t1166;
t1280 = pkin(7) * t1161;
t947 = t1166 * t1012 + t1170 * t1013;
t911 = t1020 * t1160 + t1161 * t947;
t1278 = qJ(3) * t911;
t1277 = qJ(3) * t973;
t1276 = qJDD(1) * pkin(1);
t988 = -qJDD(4) * pkin(4) - t1289 * pkin(8) - t1166 * t1205 + t1012;
t917 = -pkin(5) * t1185 - pkin(9) * t1288 - t1118 * t1087 + t988;
t1272 = t1164 * t917;
t997 = t1014 + t1109;
t1271 = t1164 * t997;
t1270 = t1165 * t798;
t1269 = t1165 * t988;
t1268 = t1168 * t917;
t1267 = t1168 * t997;
t1266 = t1169 * t798;
t1265 = t1169 * t988;
t1264 = qJD(1) * qJD(4);
t1046 = t1073 + t1115;
t1260 = t1046 * t1165;
t1259 = t1046 * t1169;
t1143 = t1170 * t1172 * t1166;
t1132 = qJDD(4) + t1143;
t1256 = t1132 * t1166;
t1255 = t1132 * t1170;
t1133 = qJDD(4) - t1143;
t1254 = t1133 * t1166;
t1253 = t1133 * t1170;
t1252 = t1137 * t1064;
t1251 = t1137 * t1164;
t1250 = t1137 * t1168;
t1249 = t1144 * t1165;
t1248 = t1144 * t1169;
t1157 = t1166 ^ 2;
t1247 = t1157 * t1172;
t1246 = t1166 * t1020;
t1245 = t1170 * t1020;
t1158 = t1170 ^ 2;
t1243 = -t1157 - t1158;
t1240 = t1166 * t1014;
t1239 = t1170 * t1014;
t1238 = t1166 * t1073;
t1237 = t1170 * t1073;
t910 = -t1020 * t1161 + t1160 * t947;
t1235 = -qJ(3) * t910 - t1160 * t1286;
t799 = t1164 * t838 + t1168 * t839;
t862 = t1165 * t913 + t1169 * t914;
t1102 = pkin(1) * t1172 - t1217 - 0.2e1 * t1261;
t1103 = -t1201 + t1276;
t1233 = -t1171 * t1102 - t1103 * t1167;
t1232 = -t1134 * t1167 - t1171 * t1135;
t1231 = t1160 * t1143;
t1230 = t1161 * t1143;
t1229 = -pkin(4) * t988 + pkin(8) * t862;
t1228 = pkin(3) * t1020 - pkin(7) * t947;
t1128 = qJDD(1) * t1167 + t1171 * t1172;
t1105 = -pkin(6) * t1128 + g(3) * t1171;
t1129 = qJDD(1) * t1171 - t1167 * t1172;
t1104 = pkin(6) * t1129 + g(3) * t1167;
t861 = t1165 * t914 - t1169 * t913;
t1224 = -pkin(3) * t1161 - pkin(7) * t1160 - pkin(2);
t1222 = t1102 * t1167 - t1103 * t1171;
t1221 = t1134 * t1171 - t1135 * t1167;
t1001 = -t1136 - t1060;
t928 = t1001 * t1164 + t1302;
t1218 = pkin(5) * t928 - t838;
t775 = t1165 * t799 + t1266;
t792 = -pkin(5) * t917 + pkin(9) * t799;
t762 = -pkin(8) * t775 - pkin(9) * t1266 - t1165 * t792;
t768 = -pkin(4) * t775 - t1285;
t776 = t1169 * t799 - t1270;
t773 = t1166 * t776 - t1170 * t917;
t749 = -pkin(7) * t773 - t1166 * t768 + t1170 * t762;
t1174 = -pkin(4) * t917 + pkin(8) * t776 - pkin(9) * t1270 + t1169 * t792;
t751 = -pkin(3) * t773 - t1174;
t774 = t1166 * t917 + t1170 * t776;
t760 = t1160 * t774 - t1161 * t775;
t1216 = -qJ(3) * t760 - t1160 * t751 + t1161 * t749;
t877 = t1164 * t938 - t1168 * t935;
t975 = -t1060 - t1061;
t782 = -pkin(5) * t975 + pkin(9) * t877 + t799;
t784 = -pkin(9) * t875 - t798;
t830 = t1165 * t877 + t1169 * t875;
t766 = -pkin(8) * t830 - t1165 * t782 + t1169 * t784;
t804 = -pkin(4) * t830 - t1284;
t832 = -t1165 * t875 + t1169 * t877;
t813 = t1166 * t832 - t1170 * t975;
t758 = -pkin(7) * t813 - t1166 * t804 + t1170 * t766;
t1178 = -pkin(4) * t975 + pkin(8) * t832 + t1165 * t784 + t1169 * t782;
t763 = -pkin(3) * t813 - t1178;
t814 = t1166 * t975 + t1170 * t832;
t786 = t1160 * t814 - t1161 * t830;
t1215 = -qJ(3) * t786 - t1160 * t763 + t1161 * t758;
t929 = t1001 * t1168 - t1305;
t934 = (qJD(6) + t1137) * t1064 + t1234;
t841 = -pkin(5) * t934 + pkin(9) * t929 - t1268;
t865 = -pkin(9) * t928 + t1272;
t866 = t1165 * t929 + t1169 * t928;
t797 = -pkin(8) * t866 - t1165 * t841 + t1169 * t865;
t801 = -pkin(4) * t866 - t1218;
t867 = -t1165 * t928 + t1169 * t929;
t842 = t1166 * t867 - t1170 * t934;
t770 = -pkin(7) * t842 - t1166 * t801 + t1170 * t797;
t1177 = -pkin(4) * t934 + pkin(8) * t867 + t1165 * t865 + t1169 * t841;
t779 = -pkin(3) * t842 - t1177;
t843 = t1166 * t934 + t1170 * t867;
t807 = t1160 * t843 - t1161 * t866;
t1214 = -qJ(3) * t807 - t1160 * t779 + t1161 * t770;
t1028 = -t1061 - t1136;
t949 = -t1028 * t1164 - t1267;
t846 = -pkin(5) * t1296 + pkin(9) * t949 + t1272;
t948 = t1028 * t1168 - t1271;
t873 = -pkin(9) * t948 + t1268;
t882 = t1165 * t949 + t1169 * t948;
t800 = -pkin(8) * t882 - t1165 * t846 + t1169 * t873;
t1198 = pkin(5) * t948 - t839;
t802 = -pkin(4) * t882 - t1198;
t883 = -t1165 * t948 + t1169 * t949;
t847 = t1166 * t883 - t1170 * t1296;
t772 = -pkin(7) * t847 - t1166 * t802 + t1170 * t800;
t1176 = -pkin(4) * t1296 + pkin(8) * t883 + t1165 * t873 + t1169 * t846;
t781 = -pkin(3) * t847 - t1176;
t848 = t1166 * t1296 + t1170 * t883;
t815 = t1160 * t848 - t1161 * t882;
t1213 = -qJ(3) * t815 - t1160 * t781 + t1161 * t772;
t844 = t1166 * t862 - t1170 * t988;
t796 = -pkin(7) * t844 + (-pkin(8) * t1170 + t1283) * t861;
t803 = -pkin(3) * t844 - t1229;
t845 = t1166 * t988 + t1170 * t862;
t805 = t1160 * t845 - t1161 * t861;
t1212 = -qJ(3) * t805 - t1160 * t803 + t1161 * t796;
t1023 = (qJD(5) - t1144) * t1118 + t1220;
t964 = t1023 * t1165 - t1026 * t1169;
t840 = -pkin(8) * t964 - t861;
t1043 = t1114 + t1288;
t966 = t1023 * t1169 + t1026 * t1165;
t922 = t1043 * t1170 + t1166 * t966;
t811 = -pkin(7) * t922 + t1170 * t840 + t1283 * t964;
t1186 = pkin(4) * t1043 + pkin(8) * t966 + t862;
t821 = -pkin(3) * t922 - t1186;
t923 = -t1043 * t1166 + t1170 * t966;
t880 = t1160 * t923 - t1161 * t964;
t1211 = -qJ(3) * t880 - t1160 * t821 + t1161 * t811;
t1059 = -t1142 - t1288;
t999 = t1059 * t1165 + t1301;
t888 = -pkin(4) * t999 + t913;
t918 = -pkin(8) * t999 + t1269;
t1000 = t1059 * t1169 - t1304;
t1101 = t1144 * t1118;
t1024 = t1101 + t1185;
t943 = t1000 * t1166 + t1024 * t1170;
t834 = -pkin(7) * t943 - t1166 * t888 + t1170 * t918;
t1203 = pkin(4) * t1024 + pkin(8) * t1000 - t1265;
t863 = -pkin(3) * t943 - t1203;
t944 = t1000 * t1170 - t1024 * t1166;
t900 = t1160 * t944 - t1161 * t999;
t1210 = -qJ(3) * t900 - t1160 * t863 + t1161 * t834;
t1071 = -t1114 - t1142;
t1002 = t1071 * t1169 - t1260;
t890 = -pkin(4) * t1002 + t914;
t921 = -pkin(8) * t1002 + t1265;
t1003 = -t1071 * t1165 - t1259;
t1027 = (-qJD(5) - t1144) * t1117 + t1219;
t950 = t1003 * t1166 + t1027 * t1170;
t836 = -pkin(7) * t950 - t1166 * t890 + t1170 * t921;
t1202 = pkin(4) * t1027 + pkin(8) * t1003 + t1269;
t864 = -pkin(3) * t950 - t1202;
t951 = t1003 * t1170 - t1027 * t1166;
t902 = -t1002 * t1161 + t1160 * t951;
t1209 = -qJ(3) * t902 - t1160 * t864 + t1161 * t836;
t1208 = -pkin(2) * t1275 + qJ(3) * t1223;
t1153 = t1158 * t1172;
t1141 = -t1153 - t1289;
t1082 = t1141 * t1170 - t1256;
t1123 = 0.2e1 * t1148 - t1241;
t1035 = t1082 * t1160 + t1123 * t1161;
t1078 = t1141 * t1166 + t1255;
t983 = -pkin(3) * t1078 + t1012;
t994 = -pkin(7) * t1078 + t1246;
t1207 = -qJ(3) * t1035 - t1160 * t983 + t1161 * t994;
t1139 = -t1247 - t1289;
t1084 = -t1139 * t1166 - t1253;
t1121 = 0.2e1 * t1236 + t1242;
t1036 = t1084 * t1160 + t1121 * t1161;
t1080 = t1139 * t1170 - t1254;
t984 = -pkin(3) * t1080 + t1013;
t995 = -pkin(7) * t1080 + t1245;
t1206 = -qJ(3) * t1036 - t1160 * t984 + t1161 * t995;
t1204 = -pkin(7) * t845 + (pkin(3) + t1300) * t861;
t1200 = pkin(3) * t1123 + pkin(7) * t1082 - t1245;
t1199 = pkin(3) * t1121 + pkin(7) * t1084 + t1246;
t761 = t1160 * t775 + t1161 * t774;
t1197 = -qJ(3) * t761 - t1160 * t749 - t1161 * t751;
t787 = t1160 * t830 + t1161 * t814;
t1196 = -qJ(3) * t787 - t1160 * t758 - t1161 * t763;
t808 = t1160 * t866 + t1161 * t843;
t1195 = -qJ(3) * t808 - t1160 * t770 - t1161 * t779;
t816 = t1160 * t882 + t1161 * t848;
t1194 = -qJ(3) * t816 - t1160 * t772 - t1161 * t781;
t806 = t1160 * t861 + t1161 * t845;
t1193 = -qJ(3) * t806 - t1160 * t796 - t1161 * t803;
t881 = t1160 * t964 + t1161 * t923;
t1192 = -qJ(3) * t881 - t1160 * t811 - t1161 * t821;
t901 = t1160 * t999 + t1161 * t944;
t1191 = -qJ(3) * t901 - t1160 * t834 - t1161 * t863;
t903 = t1002 * t1160 + t1161 * t951;
t1190 = -qJ(3) * t903 - t1160 * t836 - t1161 * t864;
t1037 = t1082 * t1161 - t1123 * t1160;
t1189 = -qJ(3) * t1037 - t1160 * t994 - t1161 * t983;
t1038 = t1084 * t1161 - t1121 * t1160;
t1188 = -qJ(3) * t1038 - t1160 * t995 - t1161 * t984;
t1187 = -pkin(7) * t923 - t1166 * t840 + (pkin(3) + t1282) * t964;
t1127 = t1243 * qJDD(1);
t1130 = t1153 + t1247;
t1184 = pkin(3) * t1130 + pkin(7) * t1127 + t947;
t1183 = pkin(3) * t775 - pkin(7) * t774 - t1166 * t762 - t1170 * t768;
t1182 = pkin(3) * t830 - pkin(7) * t814 - t1166 * t766 - t1170 * t804;
t1181 = pkin(3) * t866 - pkin(7) * t843 - t1166 * t797 - t1170 * t801;
t1180 = pkin(3) * t882 - pkin(7) * t848 - t1166 * t800 - t1170 * t802;
t1179 = pkin(3) * t999 - pkin(7) * t944 - t1166 * t918 - t1170 * t888;
t1175 = pkin(3) * t1002 - pkin(7) * t951 - t1166 * t921 - t1170 * t890;
t1140 = t1153 - t1289;
t1138 = -t1247 + t1289;
t1131 = -t1153 + t1247;
t1116 = t1243 * t1264;
t1113 = t1227 + 0.2e1 * t1276;
t1107 = -t1135 + t1154 + 0.2e1 * t1156;
t1095 = -t1114 + t1142;
t1094 = -t1142 + t1288;
t1093 = t1122 * t1170 + t1157 * t1264;
t1092 = -t1124 * t1166 + t1158 * t1264;
t1089 = qJDD(4) * t1160 + t1116 * t1161;
t1088 = -t1161 * qJDD(4) + t1116 * t1160;
t1083 = -t1138 * t1166 + t1255;
t1081 = t1140 * t1170 - t1254;
t1079 = t1138 * t1170 + t1256;
t1077 = t1140 * t1166 + t1253;
t1076 = t1225 * t1170;
t1075 = t1226 * t1166;
t1072 = t1114 - t1288;
t1070 = t1127 * t1161 - t1130 * t1160;
t1069 = t1127 * t1160 + t1130 * t1161;
t1066 = t1121 * t1166 + t1123 * t1170;
t1065 = -t1121 * t1170 + t1123 * t1166;
t1057 = t1093 * t1161 - t1231;
t1056 = t1092 * t1161 + t1231;
t1055 = t1093 * t1160 + t1230;
t1054 = t1092 * t1160 - t1230;
t1053 = t1083 * t1161 - t1160 * t1242;
t1052 = t1081 * t1161 - t1160 * t1241;
t1051 = t1083 * t1160 + t1161 * t1242;
t1050 = t1081 * t1160 + t1161 * t1241;
t1044 = pkin(1) * t1103 - qJ(2) * t1102;
t1040 = -t1061 + t1136;
t1039 = t1060 - t1136;
t1034 = (t1117 * t1169 - t1118 * t1165) * t1144;
t1033 = (t1117 * t1165 + t1118 * t1169) * t1144;
t1032 = t1066 * t1161 + t1131 * t1160;
t1031 = t1066 * t1160 - t1131 * t1161;
t1025 = t1058 + t1100;
t1022 = t1101 - t1185;
t1018 = t1058 * t1169 + t1118 * t1249;
t1017 = t1058 * t1165 - t1118 * t1248;
t1016 = -t1117 * t1248 - t1165 * t1185;
t1015 = t1117 * t1249 - t1169 * t1185;
t1011 = t1034 * t1170 + t1115 * t1166;
t1010 = t1034 * t1166 - t1115 * t1170;
t1009 = t1061 - t1060;
t1008 = t1094 * t1169 - t1260;
t1007 = -t1095 * t1165 + t1301;
t1006 = t1094 * t1165 + t1259;
t1005 = t1095 * t1169 + t1304;
t993 = -qJ(2) * t1125 + t1126 * t1287 + t1029;
t992 = qJ(2) * t1126 + t1125 * t1287 + t1030;
t991 = (-t1062 * t1168 + t1064 * t1164) * t1137;
t990 = (-t1062 * t1164 - t1064 * t1168) * t1137;
t982 = t1018 * t1170 + t1238;
t981 = t1016 * t1170 - t1238;
t980 = -t1018 * t1166 + t1237;
t979 = -t1016 * t1166 - t1237;
t969 = -qJD(6) * t1064 - t1234;
t968 = qJ(2) * t1275 + t1277;
t967 = t1024 * t1169 - t1025 * t1165;
t965 = t1024 * t1165 + t1025 * t1169;
t963 = pkin(1) * t1275 - t1208;
t962 = t1011 * t1161 + t1033 * t1160;
t961 = t1011 * t1160 - t1033 * t1161;
t959 = t1008 * t1170 - t1022 * t1166;
t958 = t1007 * t1170 + t1026 * t1166;
t957 = t1008 * t1166 + t1022 * t1170;
t956 = t1007 * t1166 - t1026 * t1170;
t955 = t1039 * t1168 - t1271;
t954 = -t1040 * t1164 + t1302;
t953 = t1039 * t1164 + t1267;
t952 = t1040 * t1168 + t1305;
t941 = t1072 * t1166 + t1170 * t967;
t940 = -t1072 * t1170 + t1166 * t967;
t933 = -t1064 * t1251 + t1168 * t970;
t932 = t1064 * t1250 + t1164 * t970;
t931 = t1062 * t1250 - t1164 * t969;
t930 = t1062 * t1251 + t1168 * t969;
t927 = t1017 * t1160 + t1161 * t982;
t926 = -t1015 * t1160 + t1161 * t981;
t925 = -t1017 * t1161 + t1160 * t982;
t924 = t1015 * t1161 + t1160 * t981;
t920 = -qJ(3) * t1069 + t1161 * t946;
t919 = qJ(3) * t1070 + t1160 * t946;
t916 = -t1165 * t990 + t1169 * t991;
t915 = t1165 * t991 + t1169 * t990;
t909 = t1006 * t1160 + t1161 * t959;
t908 = t1005 * t1160 + t1161 * t958;
t907 = -t1006 * t1161 + t1160 * t959;
t906 = -t1005 * t1161 + t1160 * t958;
t905 = t1109 * t1166 + t1170 * t916;
t904 = -t1109 * t1170 + t1166 * t916;
t899 = qJ(2) * t1038 - t1036 * t1287 - t1199;
t898 = qJ(2) * t1037 - t1035 * t1287 - t1200;
t897 = qJ(2) * t1070 - t1069 * t1287 - t1184;
t896 = qJ(2) * t1080 + t1206;
t895 = qJ(2) * t1078 + t1207;
t894 = -t1165 * t953 + t1169 * t955;
t893 = -t1165 * t952 + t1169 * t954;
t892 = t1165 * t955 + t1169 * t953;
t891 = t1165 * t954 + t1169 * t952;
t887 = t1160 * t965 + t1161 * t941;
t886 = t1160 * t941 - t1161 * t965;
t885 = t1080 * t1287 + t1188;
t884 = t1078 * t1287 + t1189;
t876 = -t1164 * t1296 - t1168 * t934;
t874 = -t1164 * t934 + t1168 * t1296;
t872 = -t1165 * t932 + t1169 * t933;
t871 = -t1165 * t930 + t1169 * t931;
t870 = t1165 * t933 + t1169 * t932;
t869 = t1165 * t931 + t1169 * t930;
t868 = qJ(2) * t1223 + t1287 * t973;
t858 = t1160 * t915 + t1161 * t905;
t857 = t1160 * t905 - t1161 * t915;
t856 = t1170 * t872 + t1240;
t855 = t1170 * t871 - t1240;
t854 = -t1166 * t872 + t1239;
t853 = -t1166 * t871 - t1239;
t852 = -t1166 * t935 + t1170 * t894;
t851 = t1166 * t938 + t1170 * t893;
t850 = t1166 * t894 + t1170 * t935;
t849 = t1166 * t893 - t1170 * t938;
t831 = -t1165 * t874 + t1169 * t876;
t829 = t1165 * t876 + t1169 * t874;
t828 = -(qJ(2) - t1280) * t946 + t1235;
t827 = t1160 * t892 + t1161 * t852;
t826 = t1160 * t891 + t1161 * t851;
t825 = t1160 * t852 - t1161 * t892;
t824 = t1160 * t851 - t1161 * t891;
t823 = t1009 * t1166 + t1170 * t831;
t822 = -t1009 * t1170 + t1166 * t831;
t820 = t1160 * t870 + t1161 * t856;
t819 = t1160 * t869 + t1161 * t855;
t818 = t1160 * t856 - t1161 * t870;
t817 = t1160 * t855 - t1161 * t869;
t812 = -t1278 - (pkin(1) - t1224) * t946;
t809 = qJ(2) * t911 - t1287 * t910 + t1228;
t794 = qJ(2) * t950 + t1209;
t793 = qJ(2) * t903 - t1287 * t902 + t1175;
t791 = t1160 * t829 + t1161 * t823;
t790 = t1160 * t823 - t1161 * t829;
t789 = qJ(2) * t943 + t1210;
t788 = qJ(2) * t901 - t1287 * t900 + t1179;
t785 = t1287 * t950 + t1190;
t783 = t1287 * t943 + t1191;
t780 = qJ(2) * t881 - t1287 * t880 + t1187;
t778 = qJ(2) * t922 + t1211;
t777 = t1287 * t922 + t1192;
t767 = qJ(2) * t844 + t1212;
t765 = t1287 * t844 + t1193;
t764 = qJ(2) * t806 - t1287 * t805 + t1204;
t759 = qJ(2) * t816 - t1287 * t815 + t1180;
t756 = qJ(2) * t847 + t1213;
t755 = qJ(2) * t808 - t1287 * t807 + t1181;
t754 = t1287 * t847 + t1194;
t753 = qJ(2) * t842 + t1214;
t752 = t1287 * t842 + t1195;
t750 = qJ(2) * t787 - t1287 * t786 + t1182;
t747 = qJ(2) * t813 + t1215;
t746 = t1287 * t813 + t1196;
t745 = qJ(2) * t773 + t1216;
t744 = qJ(2) * t761 - t1287 * t760 + t1183;
t743 = t1287 * t773 + t1197;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1129, 0, -t1128, 0, -t1104, -t1105, -t1221, -pkin(6) * t1221, 0, t1129, 0, 0, t1128, 0, -t1104, t1222, t1105, pkin(6) * t1222 + (-pkin(1) * t1167 + qJ(2) * t1171) * g(3), 0, 0, -t1067, 0, -t1291, 0, -t1307, t1306, t1298, -pkin(6) * t1298 - t1167 * t963 + t1171 * t968, t1055 * t1167 + t1057 * t1171, t1031 * t1167 + t1032 * t1171, t1051 * t1167 + t1053 * t1171, t1054 * t1167 + t1056 * t1171, t1050 * t1167 + t1052 * t1171, t1088 * t1167 + t1089 * t1171, t1171 * t895 - t1167 * t884 - pkin(6) * (-t1035 * t1171 + t1037 * t1167), t1171 * t896 - t1167 * t885 - pkin(6) * (-t1036 * t1171 + t1038 * t1167), t1171 * t920 + t1167 * t919 - pkin(6) * (-t1069 * t1171 + t1070 * t1167), t1171 * t828 - t1167 * t812 - pkin(6) * (t1167 * t911 - t1171 * t910), t1167 * t925 + t1171 * t927, t1167 * t886 + t1171 * t887, t1167 * t906 + t1171 * t908, t1167 * t924 + t1171 * t926, t1167 * t907 + t1171 * t909, t1167 * t961 + t1171 * t962, t1171 * t789 - t1167 * t783 - pkin(6) * (t1167 * t901 - t1171 * t900), t1171 * t794 - t1167 * t785 - pkin(6) * (t1167 * t903 - t1171 * t902), t1171 * t778 - t1167 * t777 - pkin(6) * (t1167 * t881 - t1171 * t880), t1171 * t767 - t1167 * t765 - pkin(6) * (t1167 * t806 - t1171 * t805), t1167 * t818 + t1171 * t820, t1167 * t790 + t1171 * t791, t1167 * t824 + t1171 * t826, t1167 * t817 + t1171 * t819, t1167 * t825 + t1171 * t827, t1167 * t857 + t1171 * t858, t1171 * t753 - t1167 * t752 - pkin(6) * (t1167 * t808 - t1171 * t807), t1171 * t756 - t1167 * t754 - pkin(6) * (t1167 * t816 - t1171 * t815), t1171 * t747 - t1167 * t746 - pkin(6) * (t1167 * t787 - t1171 * t786), t1171 * t745 - t1167 * t743 - pkin(6) * (t1167 * t761 - t1171 * t760); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1128, 0, t1129, 0, t1105, -t1104, t1232, pkin(6) * t1232, 0, t1128, 0, 0, -t1129, 0, t1105, t1233, t1104, pkin(6) * t1233 + (pkin(1) * t1171 + qJ(2) * t1167) * g(3), 0, 0, -t1291, 0, t1067, 0, t1306, t1307, t1299, -pkin(6) * t1299 + t1167 * t968 + t1171 * t963, -t1055 * t1171 + t1057 * t1167, -t1031 * t1171 + t1032 * t1167, -t1051 * t1171 + t1053 * t1167, -t1054 * t1171 + t1056 * t1167, -t1050 * t1171 + t1052 * t1167, -t1088 * t1171 + t1089 * t1167, t1167 * t895 + t1171 * t884 + pkin(6) * (t1035 * t1167 + t1037 * t1171), t1167 * t896 + t1171 * t885 + pkin(6) * (t1036 * t1167 + t1038 * t1171), t1167 * t920 - t1171 * t919 + pkin(6) * (t1069 * t1167 + t1070 * t1171), t1167 * t828 + t1171 * t812 + pkin(6) * (t1167 * t910 + t1171 * t911), t1167 * t927 - t1171 * t925, t1167 * t887 - t1171 * t886, t1167 * t908 - t1171 * t906, t1167 * t926 - t1171 * t924, t1167 * t909 - t1171 * t907, t1167 * t962 - t1171 * t961, t1167 * t789 + t1171 * t783 + pkin(6) * (t1167 * t900 + t1171 * t901), t1167 * t794 + t1171 * t785 + pkin(6) * (t1167 * t902 + t1171 * t903), t1167 * t778 + t1171 * t777 + pkin(6) * (t1167 * t880 + t1171 * t881), t1167 * t767 + t1171 * t765 + pkin(6) * (t1167 * t805 + t1171 * t806), t1167 * t820 - t1171 * t818, t1167 * t791 - t1171 * t790, t1167 * t826 - t1171 * t824, t1167 * t819 - t1171 * t817, t1167 * t827 - t1171 * t825, t1167 * t858 - t1171 * t857, t1167 * t753 + t1171 * t752 + pkin(6) * (t1167 * t807 + t1171 * t808), t1167 * t756 + t1171 * t754 + pkin(6) * (t1167 * t815 + t1171 * t816), t1167 * t747 + t1171 * t746 + pkin(6) * (t1167 * t786 + t1171 * t787), t1167 * t745 + t1171 * t743 + pkin(6) * (t1167 * t760 + t1171 * t761); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1134, t1135, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t1113, 0, t1107, t1044, 0, 0, 0, 0, 0, qJDD(1), t993, t992, 0, t868, t1075, -t1065, -t1079, -t1076, -t1077, 0, t898, t899, t897, t809, t980, -t940, -t956, t979, -t957, -t1010, t788, t793, t780, t764, t854, -t822, -t849, t853, -t850, -t904, t755, t759, t750, t744; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1172, 0, 0, -g(3), -t1134, 0, 0, qJDD(1), 0, 0, t1172, 0, 0, -t1103, g(3), qJ(2) * g(3), 0, 0, -t1126, 0, -t1125, 0, t1290, t1098, t973, t968, t1057, t1032, t1053, t1056, t1052, t1089, t895, t896, t920, t828, t927, t887, t908, t926, t909, t962, t789, t794, t778, t767, t820, t791, t826, t819, t827, t858, t753, t756, t747, t745; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1172, 0, qJDD(1), 0, g(3), 0, -t1135, 0, 0, t1172, 0, 0, -qJDD(1), 0, g(3), -t1102, 0, pkin(1) * g(3), 0, 0, -t1125, 0, t1126, 0, t1098, -t1290, -t1223, t963, -t1055, -t1031, -t1051, -t1054, -t1050, -t1088, t884, t885, -t919, t812, -t925, -t886, -t906, -t924, -t907, -t961, t783, t785, t777, t765, -t818, -t790, -t824, -t817, -t825, -t857, t752, t754, t746, t743; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1134, t1135, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t1113, 0, t1107, t1044, 0, 0, 0, 0, 0, qJDD(1), t993, t992, 0, t868, t1075, -t1065, -t1079, -t1076, -t1077, 0, t898, t899, t897, t809, t980, -t940, -t956, t979, -t957, -t1010, t788, t793, t780, t764, t854, -t822, -t849, t853, -t850, -t904, t755, t759, t750, t744; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t1172, 0, 0, -t1103, g(3), 0, 0, 0, -t1126, 0, -t1125, 0, t1290, t1098, t973, t1277, t1057, t1032, t1053, t1056, t1052, t1089, t1207, t1206, t920, t1280 * t946 + t1235, t927, t887, t908, t926, t909, t962, t1210, t1209, t1211, t1212, t820, t791, t826, t819, t827, t858, t1214, t1213, t1215, t1216; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t1103, 0, -t1102, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(2) * t1126 + t1029, pkin(2) * t1125 + t1030, 0, pkin(2) * t973, t1075, -t1065, -t1079, -t1076, -t1077, 0, -pkin(2) * t1035 - t1200, -pkin(2) * t1036 - t1199, -pkin(2) * t1069 - t1184, -pkin(2) * t910 + t1228, t980, -t940, -t956, t979, -t957, -t1010, -pkin(2) * t900 + t1179, -pkin(2) * t902 + t1175, -pkin(2) * t880 + t1187, -pkin(2) * t805 + t1204, t854, -t822, -t849, t853, -t850, -t904, -pkin(2) * t807 + t1181, -pkin(2) * t815 + t1180, -pkin(2) * t786 + t1182, -pkin(2) * t760 + t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1172, 0, 0, qJDD(1), 0, -g(3), t1102, 0, 0, 0, 0, t1125, 0, -t1126, 0, -t1098, t1290, t1223, t1208, t1055, t1031, t1051, t1054, t1050, t1088, -pkin(2) * t1078 - t1189, -pkin(2) * t1080 - t1188, t919, -t1224 * t946 + t1278, t925, t886, t906, t924, t907, t961, -pkin(2) * t943 - t1191, -pkin(2) * t950 - t1190, -pkin(2) * t922 - t1192, -pkin(2) * t844 - t1193, t818, t790, t824, t817, t825, t857, -pkin(2) * t842 - t1195, -pkin(2) * t847 - t1194, -pkin(2) * t813 - t1196, -pkin(2) * t773 - t1197; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), 0, -t1172, 0, 0, t1275, t1029, 0, t1093, t1066, t1083, t1092, t1081, t1116, t994, t995, t946, pkin(7) * t946, t982, t941, t958, t981, t959, t1011, t834, t836, t811, t796, t856, t823, t851, t855, t852, t905, t770, t772, t758, t749; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1172, 0, -qJDD(1), 0, -t1275, 0, t1030, 0, t1143, -t1131, t1242, -t1143, t1241, -qJDD(4), t983, t984, 0, t1286, -t1017, -t965, -t1005, t1015, -t1006, -t1033, t863, t864, t821, t803, -t870, -t829, -t891, -t869, -t892, -t915, t779, t781, t763, t751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), -t1029, -t1030, 0, 0, -t1075, t1065, t1079, t1076, t1077, 0, t1200, t1199, t1184, -t1228, -t980, t940, t956, -t979, t957, t1010, -t1179, -t1175, -t1187, -t1204, -t854, t822, t849, -t853, t850, t904, -t1181, -t1180, -t1182, -t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1122, t1123, t1132, t1236, t1140, -t1236, 0, t1020, t1012, 0, t1018, t967, t1007, t1016, t1008, t1034, t918, t921, t840, -pkin(8) * t861, t872, t831, t893, t871, t894, t916, t797, t800, t766, t762; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1148, -t1121, t1138, t1124, t1133, t1148, -t1020, 0, t1013, 0, -t1073, -t1072, -t1026, t1073, t1022, -t1115, t888, t890, -pkin(4) * t964, -pkin(4) * t861, -t1014, -t1009, -t938, t1014, t935, -t1109, t801, t802, t804, t768; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1143, t1131, -t1242, t1143, -t1241, qJDD(4), -t1012, -t1013, 0, 0, t1017, t965, t1005, -t1015, t1006, t1033, t1203, t1202, t1186, t1229, t870, t829, t891, t869, t892, t915, t1177, t1176, t1178, t1174; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1058, t1024, t1292, -t1100, t1094, t1100, 0, t988, t913, 0, t933, t876, t954, t931, t955, t991, t865, t873, t784, -pkin(9) * t798; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1101, t1025, t1095, t1185, t1046, t1101, -t988, 0, t914, 0, t932, t874, t952, t930, t953, t990, t841, t846, t782, t792; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1073, t1072, t1026, -t1073, -t1022, t1115, -t913, -t914, 0, 0, t1014, t1009, t938, -t1014, -t935, t1109, t1218, t1198, t1284, t1285; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t970, -t934, t1293, t1041, t1039, -t1041, 0, t917, t838, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1252, t1296, t1040, t969, t997, -t1252, -t917, 0, t839, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1014, t1009, t938, -t1014, -t935, t1109, -t838, -t839, 0, 0;];
m_new_reg  = t1;

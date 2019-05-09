% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6PRPPRR2
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d5,d6,theta1,theta3]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 21:53
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6PRPPRR2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPPRR2_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPPRR2_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPPRR2_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPPRR2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPPRR2_invdynm_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 21:53:11
% EndTime: 2019-05-04 21:53:39
% DurationCPUTime: 29.32s
% Computational Cost: add. (96914->772), mult. (176208->1086), div. (0->0), fcn. (125535->12), ass. (0->529)
t1204 = sin(pkin(11));
t1207 = cos(pkin(11));
t1219 = qJD(2) ^ 2;
t1166 = qJDD(2) * t1207 - t1204 * t1219;
t1167 = qJDD(2) * t1204 + t1207 * t1219;
t1215 = sin(qJ(2));
t1218 = cos(qJ(2));
t1111 = t1166 * t1215 + t1167 * t1218;
t1205 = sin(pkin(10));
t1208 = cos(pkin(10));
t1109 = t1166 * t1218 - t1167 * t1215;
t1209 = cos(pkin(6));
t1385 = t1109 * t1209;
t1035 = t1111 * t1208 + t1205 * t1385;
t1206 = sin(pkin(6));
t1173 = g(1) * t1205 - t1208 * g(2);
t1356 = g(3) - qJDD(1);
t1141 = t1173 * t1206 + t1209 * t1356;
t1134 = -qJDD(3) + t1141;
t1075 = qJ(3) * t1166 + t1134 * t1204;
t1307 = -qJ(3) * t1167 + t1207 * t1134;
t1374 = t1218 * t1075 + t1215 * t1307;
t1386 = t1109 * t1206;
t929 = t1374 + pkin(7) * (t1206 * t1386 + t1209 * t1385);
t1417 = qJ(1) * t1035 + t1205 * t929;
t1383 = t1111 * t1209;
t1033 = t1109 * t1208 - t1205 * t1383;
t1371 = -t1215 * t1075 + t1218 * t1307;
t1384 = t1111 * t1206;
t930 = t1371 - pkin(7) * (t1206 * t1384 + t1209 * t1383);
t1416 = qJ(1) * t1033 + t1205 * t930;
t1031 = t1111 * t1205 - t1208 * t1385;
t1415 = -qJ(1) * t1031 + t1208 * t929;
t1029 = t1109 * t1205 + t1208 * t1383;
t1414 = -qJ(1) * t1029 + t1208 * t930;
t1230 = -pkin(7) * t1111 + t1371;
t1413 = -pkin(1) * t1385 - t1206 * t1230;
t1231 = pkin(7) * t1109 + t1374;
t1412 = pkin(1) * t1383 + t1206 * t1231;
t1411 = pkin(1) * t1386 - t1209 * t1230;
t1410 = -pkin(1) * t1384 + t1209 * t1231;
t1174 = g(1) * t1208 + g(2) * t1205;
t1392 = -t1209 * t1173 + t1206 * t1356;
t1085 = -t1218 * t1174 - t1215 * t1392;
t1072 = -t1219 * pkin(2) + t1085;
t1084 = -t1174 * t1215 + t1218 * t1392;
t1237 = qJDD(2) * pkin(2) - t1084;
t1011 = t1072 * t1204 - t1207 * t1237;
t1012 = t1207 * t1072 + t1204 * t1237;
t1303 = t1011 * t1204 + t1207 * t1012;
t921 = t1011 * t1207 - t1012 * t1204;
t1350 = t1215 * t921;
t1403 = t1218 * t1303 + t1350;
t1349 = t1218 * t921;
t861 = -t1215 * t1303 + t1349;
t1213 = sin(qJ(6));
t1216 = cos(qJ(6));
t1217 = cos(qJ(5));
t1344 = qJD(2) * t1217;
t1156 = -t1216 * qJD(5) + t1213 * t1344;
t1158 = qJD(5) * t1213 + t1216 * t1344;
t1120 = t1158 * t1156;
t1311 = qJD(5) * t1344;
t1214 = sin(qJ(5));
t1319 = t1214 * qJDD(2);
t1163 = -t1311 - t1319;
t1154 = qJDD(6) - t1163;
t1376 = -t1120 + t1154;
t1396 = t1213 * t1376;
t1394 = t1216 * t1376;
t1360 = pkin(5) * t1214;
t1391 = -pkin(9) * t1217 + t1360;
t1343 = qJDD(2) * qJ(4);
t1221 = -t1219 * pkin(3) + t1012 + t1343;
t1369 = 2 * qJD(4);
t1318 = qJD(2) * t1369;
t1001 = t1221 + t1318;
t1203 = qJDD(2) * pkin(3);
t1287 = qJDD(4) + t1011;
t1003 = -t1219 * qJ(4) - t1203 + t1287;
t1305 = t1207 * t1001 + t1003 * t1204;
t910 = t1001 * t1204 - t1003 * t1207;
t1390 = -t1215 * t910 + t1218 * t1305;
t1279 = t1215 * t1305 + t1218 * t910;
t1161 = t1391 * qJD(2);
t1345 = qJD(2) * t1214;
t1222 = -qJDD(2) * pkin(8) + t1003;
t1347 = t1217 * t1134 - t1214 * t1222;
t1370 = qJD(5) ^ 2;
t942 = -pkin(5) * t1370 + qJDD(5) * pkin(9) - t1161 * t1345 - t1347;
t1192 = t1217 * qJDD(2);
t1312 = qJD(5) * t1345;
t1164 = t1192 - t1312;
t1211 = t1219 * pkin(8);
t1359 = pkin(5) * t1217;
t1293 = pkin(9) * t1214 + t1359;
t946 = -t1211 - t1164 * pkin(9) - t1163 * pkin(5) + (qJD(5) * t1293 + t1369) * qJD(2) + t1221;
t876 = t1213 * t942 - t1216 * t946;
t877 = t1213 * t946 + t1216 * t942;
t826 = t1213 * t876 + t1216 * t877;
t825 = t1213 * t877 - t1216 * t876;
t1387 = (pkin(4) + t1293) * t825;
t1304 = t1134 * t1214 + t1217 * t1222;
t889 = -t1214 * t1347 + t1217 * t1304;
t1382 = t1205 * t1356;
t1381 = t1208 * t1356;
t1185 = qJD(6) + t1345;
t1301 = t1216 * qJDD(5) - t1213 * t1164;
t1058 = (-qJD(6) + t1185) * t1158 + t1301;
t1254 = -t1213 * qJDD(5) - t1216 * t1164;
t1095 = -qJD(6) * t1156 - t1254;
t1143 = t1185 * t1156;
t1060 = t1095 + t1143;
t972 = t1058 * t1213 - t1060 * t1216;
t816 = -pkin(9) * t972 - t825;
t1375 = -(pkin(4) + t1359) * t972 + t1214 * t816;
t1152 = t1156 ^ 2;
t1153 = t1158 ^ 2;
t1183 = t1185 ^ 2;
t1368 = -pkin(3) - pkin(8);
t1367 = pkin(2) * t921;
t1366 = pkin(4) * t889;
t992 = -t1211 + t1001;
t1365 = pkin(4) * t992;
t1364 = pkin(8) * t889;
t1363 = pkin(2) * t1166;
t1362 = pkin(2) * t1167;
t1200 = t1214 ^ 2;
t1201 = t1217 ^ 2;
t1321 = t1200 + t1201;
t1168 = t1321 * qJDD(2);
t1361 = pkin(4) * t1168;
t1016 = t1084 * t1215 + t1085 * t1218;
t1358 = pkin(7) * t1016;
t941 = -qJDD(5) * pkin(5) - pkin(9) * t1370 + t1161 * t1344 - t1304;
t1355 = -pkin(5) * t941 + pkin(9) * t826;
t938 = t1213 * t941;
t1351 = t1214 * t992;
t939 = t1216 * t941;
t987 = t1217 * t992;
t1348 = -pkin(3) * t1003 + qJ(4) * t1001;
t1346 = qJD(2) * qJD(5);
t1082 = t1120 + t1154;
t1342 = t1082 * t1213;
t1341 = t1082 * t1216;
t1340 = t1168 * t1204;
t1339 = t1168 * t1207;
t1184 = t1217 * t1219 * t1214;
t1175 = qJDD(5) + t1184;
t1338 = t1175 * t1214;
t1337 = t1175 * t1217;
t1176 = qJDD(5) - t1184;
t1336 = t1176 * t1214;
t1335 = t1176 * t1217;
t1334 = t1185 * t1213;
t1333 = t1185 * t1216;
t1332 = t1200 * t1219;
t1331 = t1201 * t1219;
t1330 = t1206 * t1134;
t1325 = t1215 * t1141;
t1322 = t1218 * t1141;
t1320 = t1206 * qJDD(2);
t1115 = -t1153 - t1183;
t1028 = -t1115 * t1213 - t1341;
t1061 = (qJD(6) + t1185) * t1156 + t1254;
t1316 = pkin(5) * t1061 + pkin(9) * t1028 + t938;
t1106 = -t1183 - t1152;
t1020 = t1106 * t1216 - t1396;
t1142 = t1158 * t1185;
t1245 = qJD(6) * t1158 - t1301;
t1057 = -t1142 - t1245;
t1315 = pkin(5) * t1057 + pkin(9) * t1020 - t939;
t1314 = t1214 * t1120;
t1313 = t1217 * t1120;
t1182 = -t1331 - t1370;
t1128 = t1182 * t1217 - t1338;
t1310 = -pkin(8) * t1128 + t987;
t1309 = t1208 * t1320;
t1302 = -t1173 * t1205 - t1208 * t1174;
t1074 = t1152 + t1153;
t974 = t1058 * t1216 + t1060 * t1213;
t1300 = pkin(5) * t1074 + pkin(9) * t974 + t826;
t810 = t1214 * t826 - t1217 * t941;
t1299 = -pkin(4) * t810 - t1355;
t932 = t1074 * t1217 + t1214 * t974;
t1298 = -pkin(8) * t932 + t1217 * t816 + t972 * t1360;
t1297 = -pkin(3) * t889 + qJ(4) * t992 - t1364;
t1296 = t1204 * t1184;
t1295 = t1207 * t1184;
t1294 = -pkin(4) * t1128 - t1347;
t1162 = 0.2e1 * t1311 + t1319;
t1292 = pkin(4) * t1162 + t987;
t1165 = t1192 - 0.2e1 * t1312;
t1291 = pkin(4) * t1165 - t1351;
t1180 = -t1332 - t1370;
t1126 = t1180 * t1214 + t1335;
t1290 = -pkin(8) * t1126 + t1351;
t1169 = qJDD(2) * t1218 - t1215 * t1219;
t1289 = -pkin(7) * t1169 - t1325;
t1255 = qJDD(2) * t1215 + t1218 * t1219;
t1288 = -pkin(7) * t1255 + t1322;
t890 = -t1214 * t1304 - t1217 * t1347;
t788 = t1204 * t825 - t1207 * t810;
t789 = t1204 * t810 + t1207 * t825;
t1286 = t1215 * t789 + t1218 * t788;
t864 = t1204 * t992 - t1207 * t889;
t865 = t1204 * t889 + t1207 * t992;
t1285 = t1215 * t865 + t1218 * t864;
t878 = t1204 * t972 - t1207 * t932;
t879 = t1204 * t932 + t1207 * t972;
t1284 = t1215 * t879 + t1218 * t878;
t1116 = t1153 - t1152;
t1059 = t1095 - t1143;
t973 = t1057 * t1216 - t1059 * t1213;
t943 = -t1116 * t1217 + t1214 * t973;
t971 = t1057 * t1213 + t1059 * t1216;
t882 = t1204 * t971 - t1207 * t943;
t883 = t1204 * t943 + t1207 * t971;
t1283 = t1215 * t883 + t1218 * t882;
t1019 = t1106 * t1213 + t1394;
t950 = t1020 * t1214 + t1057 * t1217;
t902 = t1019 * t1204 - t1207 * t950;
t903 = t1019 * t1207 + t1204 * t950;
t1282 = t1215 * t903 + t1218 * t902;
t1027 = t1115 * t1216 - t1342;
t953 = t1028 * t1214 + t1061 * t1217;
t904 = t1027 * t1204 - t1207 * t953;
t905 = t1027 * t1207 + t1204 * t953;
t1281 = t1215 * t905 + t1218 * t904;
t1140 = -t1153 + t1183;
t1039 = t1140 * t1216 + t1396;
t1041 = -t1140 * t1213 + t1394;
t958 = t1041 * t1214 - t1060 * t1217;
t915 = t1039 * t1204 - t1207 * t958;
t917 = t1039 * t1207 + t1204 * t958;
t1278 = t1215 * t917 + t1218 * t915;
t1139 = t1152 - t1183;
t1040 = t1139 * t1213 + t1341;
t1042 = t1139 * t1216 - t1342;
t1056 = -t1142 + t1245;
t959 = t1042 * t1214 + t1056 * t1217;
t916 = t1040 * t1204 - t1207 * t959;
t918 = t1040 * t1207 + t1204 * t959;
t1277 = t1215 * t918 + t1218 * t916;
t1049 = t1156 * t1333 + t1213 * t1245;
t1007 = t1049 * t1214 + t1313;
t1048 = -t1156 * t1334 + t1216 * t1245;
t934 = -t1007 * t1207 - t1048 * t1204;
t936 = t1007 * t1204 - t1048 * t1207;
t1274 = t1215 * t936 + t1218 * t934;
t1051 = t1095 * t1216 - t1158 * t1334;
t1008 = t1051 * t1214 - t1313;
t1050 = t1095 * t1213 + t1158 * t1333;
t935 = -t1008 * t1207 + t1050 * t1204;
t937 = t1008 * t1204 + t1050 * t1207;
t1273 = t1215 * t937 + t1218 * t935;
t1066 = (-t1156 * t1216 + t1158 * t1213) * t1185;
t1043 = t1066 * t1214 - t1154 * t1217;
t1065 = (-t1156 * t1213 - t1158 * t1216) * t1185;
t967 = -t1043 * t1207 + t1065 * t1204;
t968 = t1043 * t1204 + t1065 * t1207;
t1272 = t1215 * t968 + t1218 * t967;
t1270 = -pkin(4) * t950 - t1315;
t1269 = -pkin(4) * t953 - t1316;
t1107 = -t1162 * t1214 + t1165 * t1217;
t1172 = (-t1200 + t1201) * t1219;
t1063 = -t1107 * t1207 + t1172 * t1204;
t1064 = t1107 * t1204 + t1172 * t1207;
t1268 = t1063 * t1218 + t1064 * t1215;
t1068 = -t1126 * t1207 + t1162 * t1204;
t1070 = t1126 * t1204 + t1162 * t1207;
t1267 = t1068 * t1218 + t1070 * t1215;
t1069 = -t1128 * t1207 + t1165 * t1204;
t1071 = t1128 * t1204 + t1165 * t1207;
t1266 = t1069 * t1218 + t1071 * t1215;
t1015 = t1084 * t1218 - t1085 * t1215;
t1179 = t1332 - t1370;
t1125 = t1179 * t1214 + t1337;
t1087 = -t1125 * t1207 - t1204 * t1319;
t1089 = t1125 * t1204 - t1207 * t1319;
t1265 = t1087 * t1218 + t1089 * t1215;
t1181 = -t1331 + t1370;
t1127 = t1181 * t1217 + t1336;
t1088 = -t1127 * t1207 + t1192 * t1204;
t1090 = t1127 * t1204 + t1192 * t1207;
t1264 = t1088 * t1218 + t1090 * t1215;
t1138 = t1164 * t1214 + t1201 * t1346;
t1091 = -t1138 * t1207 + t1296;
t1093 = t1138 * t1204 + t1295;
t1263 = t1091 * t1218 + t1093 * t1215;
t1137 = t1163 * t1217 + t1200 * t1346;
t1092 = -t1137 * t1207 - t1296;
t1094 = t1137 * t1204 - t1295;
t1262 = t1092 * t1218 + t1094 * t1215;
t1171 = t1321 * t1219;
t1113 = -t1171 * t1204 + t1339;
t1114 = -t1171 * t1207 - t1340;
t1261 = t1113 * t1218 + t1114 * t1215;
t1155 = t1321 * t1346;
t1135 = qJDD(5) * t1204 + t1155 * t1207;
t1136 = qJDD(5) * t1207 - t1155 * t1204;
t1260 = t1135 * t1218 + t1136 * t1215;
t1146 = t1255 * t1209;
t1259 = t1146 * t1208 + t1169 * t1205;
t1258 = t1146 * t1205 - t1169 * t1208;
t1257 = t1173 * t1208 - t1174 * t1205;
t1256 = -pkin(3) * t1128 + qJ(4) * t1165 + t1310;
t863 = -pkin(5) * t1019 + t876;
t898 = -pkin(9) * t1019 + t938;
t1253 = -pkin(8) * t950 - t1214 * t863 + t1217 * t898;
t866 = -pkin(5) * t1027 + t877;
t901 = -pkin(9) * t1027 + t939;
t1252 = -pkin(8) * t953 - t1214 * t866 + t1217 * t901;
t1251 = pkin(8) * t1168 - t889;
t1250 = -pkin(4) * t1126 - t1304;
t1249 = -pkin(3) * t932 + qJ(4) * t972 + t1298;
t1248 = -0.2e1 * t1203 + t1287;
t1247 = -pkin(4) * t932 - t1300;
t1246 = -pkin(8) * t810 + t1391 * t825;
t1244 = -pkin(3) * t1126 + qJ(4) * t1162 + t1290;
t811 = t1214 * t941 + t1217 * t826;
t771 = t1368 * t811 + t1387;
t775 = -qJ(4) * t811 - t1299;
t756 = -pkin(2) * t811 + qJ(3) * t789 + t1204 * t775 + t1207 * t771;
t757 = -qJ(3) * t788 - t1204 * t771 + t1207 * t775;
t773 = -t1215 * t788 + t1218 * t789;
t1243 = pkin(7) * t773 + t1215 * t757 + t1218 * t756;
t933 = -t1074 * t1214 + t1217 * t974;
t790 = t1368 * t933 - t1375;
t802 = -qJ(4) * t933 - t1247;
t772 = -pkin(2) * t933 + qJ(3) * t879 + t1204 * t802 + t1207 * t790;
t774 = -qJ(3) * t878 - t1204 * t790 + t1207 * t802;
t829 = -t1215 * t878 + t1218 * t879;
t1242 = pkin(7) * t829 + t1215 * t774 + t1218 * t772;
t1236 = pkin(4) * t1019 - t1214 * t898 - t1217 * t863;
t951 = t1020 * t1217 - t1057 * t1214;
t806 = t1368 * t951 + t1236;
t830 = -qJ(4) * t951 - t1270;
t776 = -pkin(2) * t951 + qJ(3) * t903 + t1204 * t830 + t1207 * t806;
t781 = -qJ(3) * t902 - t1204 * t806 + t1207 * t830;
t838 = -t1215 * t902 + t1218 * t903;
t1241 = pkin(7) * t838 + t1215 * t781 + t1218 * t776;
t1235 = pkin(4) * t1027 - t1214 * t901 - t1217 * t866;
t954 = t1028 * t1217 - t1061 * t1214;
t807 = t1368 * t954 + t1235;
t831 = -qJ(4) * t954 - t1269;
t777 = -pkin(2) * t954 + qJ(3) * t905 + t1204 * t831 + t1207 * t807;
t782 = -qJ(3) * t904 - t1204 * t807 + t1207 * t831;
t841 = -t1215 * t904 + t1218 * t905;
t1240 = pkin(7) * t841 + t1215 * t782 + t1218 * t777;
t819 = t1368 * t890 + t1365;
t837 = -qJ(4) * t890 + t1366;
t780 = -pkin(2) * t890 + qJ(3) * t865 + t1204 * t837 + t1207 * t819;
t784 = -qJ(3) * t864 - t1204 * t819 + t1207 * t837;
t812 = -t1215 * t864 + t1218 * t865;
t1239 = pkin(7) * t812 + t1215 * t784 + t1218 * t780;
t880 = qJ(3) * t1305 + (pkin(3) * t1207 + qJ(4) * t1204 + pkin(2)) * t1134;
t895 = -qJ(3) * t910 + (-pkin(3) * t1204 + qJ(4) * t1207) * t1134;
t1238 = pkin(7) * t1390 + t1215 * t895 + t1218 * t880;
t1005 = -t1068 * t1215 + t1070 * t1218;
t1130 = t1180 * t1217 - t1336;
t923 = -qJ(4) * t1130 - t1250;
t926 = t1130 * t1368 + t1292;
t846 = -pkin(2) * t1130 + qJ(3) * t1070 + t1204 * t923 + t1207 * t926;
t857 = -qJ(3) * t1068 - t1204 * t926 + t1207 * t923;
t1234 = pkin(7) * t1005 + t1215 * t857 + t1218 * t846;
t1006 = -t1069 * t1215 + t1071 * t1218;
t1133 = -t1182 * t1214 - t1337;
t924 = -qJ(4) * t1133 - t1294;
t925 = t1133 * t1368 + t1291;
t847 = -pkin(2) * t1133 + qJ(3) * t1071 + t1204 * t924 + t1207 * t925;
t858 = -qJ(3) * t1069 - t1204 * t925 + t1207 * t924;
t1233 = pkin(7) * t1006 + t1215 * t858 + t1218 * t847;
t1047 = -t1113 * t1215 + t1114 * t1218;
t881 = pkin(4) * t1171 + t890;
t870 = -pkin(4) * t1340 + qJ(3) * t1114 - t1207 * t881;
t871 = -pkin(4) * t1339 - qJ(3) * t1113 + t1204 * t881;
t1232 = pkin(7) * t1047 + t1215 * t871 + t1218 * t870;
t1227 = -pkin(3) * t950 + qJ(4) * t1019 + t1253;
t1226 = -pkin(3) * t953 + qJ(4) * t1027 + t1252;
t1225 = pkin(3) * t1168 - qJ(4) * t1171 + t1251;
t908 = pkin(2) * t1134 + qJ(3) * t1303;
t1224 = pkin(7) * t1403 + qJ(3) * t1350 + t1218 * t908;
t1223 = -pkin(3) * t810 + qJ(4) * t825 + t1246;
t1220 = t1012 + 0.2e1 * t1343 + t1318;
t1189 = t1209 * qJDD(2);
t1178 = t1205 * t1320;
t1147 = t1169 * t1209;
t1145 = t1169 * t1206;
t1144 = t1255 * t1206;
t1132 = -t1181 * t1214 + t1335;
t1131 = (t1164 - t1312) * t1217;
t1129 = t1179 * t1217 - t1338;
t1124 = (-t1163 + t1311) * t1214;
t1119 = t1209 * t1134;
t1108 = -t1162 * t1217 - t1165 * t1214;
t1105 = -t1147 * t1205 - t1208 * t1255;
t1104 = t1147 * t1208 - t1205 * t1255;
t1062 = -t1135 * t1215 + t1136 * t1218;
t1053 = t1260 * t1209;
t1052 = t1260 * t1206;
t1046 = -t1322 + (t1144 * t1206 + t1146 * t1209) * pkin(7);
t1045 = -t1325 + (-t1145 * t1206 - t1147 * t1209) * pkin(7);
t1044 = t1066 * t1217 + t1154 * t1214;
t1038 = t1261 * t1209;
t1037 = t1261 * t1206;
t1024 = -t1092 * t1215 + t1094 * t1218;
t1023 = -t1091 * t1215 + t1093 * t1218;
t1022 = -t1088 * t1215 + t1090 * t1218;
t1021 = -t1087 * t1215 + t1089 * t1218;
t1014 = t1016 * t1209;
t1013 = t1016 * t1206;
t1010 = t1051 * t1217 + t1314;
t1009 = t1049 * t1217 - t1314;
t1000 = -pkin(1) * t1145 + t1206 * t1084 + t1209 * t1288;
t999 = pkin(1) * t1144 + t1206 * t1085 + t1209 * t1289;
t998 = pkin(1) * t1147 - t1209 * t1084 + t1206 * t1288;
t997 = -pkin(1) * t1146 - t1209 * t1085 + t1206 * t1289;
t995 = -t1063 * t1215 + t1064 * t1218;
t994 = -t1012 - t1362;
t993 = -t1011 + t1363;
t986 = t1248 - t1363;
t985 = t1220 + t1362;
t984 = -t1206 * t1124 + t1209 * t1262;
t983 = -t1206 * t1131 + t1209 * t1263;
t982 = t1209 * t1124 + t1206 * t1262;
t981 = t1209 * t1131 + t1206 * t1263;
t980 = -t1206 * t1132 + t1209 * t1264;
t979 = -t1206 * t1129 + t1209 * t1265;
t978 = t1209 * t1132 + t1206 * t1264;
t977 = t1209 * t1129 + t1206 * t1265;
t976 = -t1015 * t1209 + t1206 * t1141;
t975 = -t1015 * t1206 - t1209 * t1141;
t965 = -t1206 * t1133 + t1209 * t1266;
t964 = -t1206 * t1130 + t1209 * t1267;
t963 = t1209 * t1133 + t1206 * t1266;
t962 = t1209 * t1130 + t1206 * t1267;
t961 = t1042 * t1217 - t1056 * t1214;
t960 = t1041 * t1217 + t1060 * t1214;
t949 = -t1206 * t1108 + t1209 * t1268;
t948 = t1209 * t1108 + t1206 * t1268;
t944 = t1116 * t1214 + t1217 * t973;
t914 = pkin(1) * t976 + t1206 * t1358;
t913 = -pkin(1) * t975 + t1209 * t1358;
t907 = pkin(2) * t1069 + t1256;
t906 = pkin(2) * t1068 + t1244;
t899 = (-t1206 * t975 - t1209 * t976) * pkin(7);
t896 = -t1215 * t967 + t1218 * t968;
t894 = -t1206 * t994 - t1410;
t893 = -t1206 * t993 - t1411;
t892 = t1209 * t994 - t1412;
t891 = t1209 * t993 - t1413;
t887 = -t1206 * t986 + t1411;
t886 = t1209 * t986 + t1413;
t885 = -t1206 * t985 + t1410;
t884 = t1209 * t985 + t1412;
t873 = -t1206 * t1044 + t1209 * t1272;
t872 = t1209 * t1044 + t1206 * t1272;
t869 = -t1215 * t935 + t1218 * t937;
t868 = -t1215 * t934 + t1218 * t936;
t867 = pkin(2) * t1113 + t1225;
t860 = t1403 * t1209;
t859 = t1403 * t1206;
t856 = pkin(2) * t910 + t1348;
t855 = -t1215 * t916 + t1218 * t918;
t854 = -t1215 * t915 + t1218 * t917;
t853 = -t1209 * t861 + t1330;
t852 = -t1206 * t861 - t1119;
t849 = t1390 * t1209;
t848 = t1390 * t1206;
t845 = -t1206 * t1010 + t1209 * t1273;
t844 = -t1206 * t1009 + t1209 * t1274;
t843 = t1209 * t1010 + t1206 * t1273;
t842 = t1209 * t1009 + t1206 * t1274;
t840 = t1209 * t1279 + t1330;
t839 = t1206 * t1279 - t1119;
t836 = -t1206 * t961 + t1209 * t1277;
t835 = -t1206 * t960 + t1209 * t1278;
t834 = t1206 * t1277 + t1209 * t961;
t833 = t1206 * t1278 + t1209 * t960;
t832 = -t1215 * t882 + t1218 * t883;
t828 = -t1206 * t954 + t1209 * t1281;
t827 = t1206 * t1281 + t1209 * t954;
t824 = -t1206 * t951 + t1209 * t1282;
t823 = t1206 * t1282 + t1209 * t951;
t818 = -t1206 * t944 + t1209 * t1283;
t817 = t1206 * t1283 + t1209 * t944;
t814 = -t1206 * t933 + t1209 * t1284;
t813 = t1206 * t1284 + t1209 * t933;
t808 = -t1215 * t870 + t1218 * t871 + (-t1037 * t1206 - t1038 * t1209) * pkin(7);
t805 = pkin(2) * t864 + t1297;
t804 = -t1206 * t890 + t1209 * t1285;
t803 = t1206 * t1285 + t1209 * t890;
t801 = -t1215 * t847 + t1218 * t858 + (-t1206 * t963 - t1209 * t965) * pkin(7);
t800 = -t1215 * t846 + t1218 * t857 + (-t1206 * t962 - t1209 * t964) * pkin(7);
t799 = -pkin(1) * t1037 - t1206 * t867 + t1209 * t1232;
t798 = pkin(1) * t1038 + t1206 * t1232 + t1209 * t867;
t797 = pkin(2) * t904 + t1226;
t796 = pkin(2) * t902 + t1227;
t795 = qJ(3) * t1349 - t1215 * t908 + (-t1206 * t852 - t1209 * t853) * pkin(7);
t794 = -pkin(1) * t963 - t1206 * t907 + t1209 * t1233;
t793 = -pkin(1) * t962 - t1206 * t906 + t1209 * t1234;
t792 = pkin(1) * t965 + t1206 * t1233 + t1209 * t907;
t791 = pkin(1) * t964 + t1206 * t1234 + t1209 * t906;
t787 = -pkin(1) * t852 + t1206 * t1367 + t1209 * t1224;
t786 = pkin(1) * t853 + t1206 * t1224 - t1209 * t1367;
t785 = -t1215 * t880 + t1218 * t895 + (-t1206 * t839 - t1209 * t840) * pkin(7);
t783 = pkin(2) * t878 + t1249;
t779 = -pkin(1) * t839 - t1206 * t856 + t1209 * t1238;
t778 = pkin(1) * t840 + t1206 * t1238 + t1209 * t856;
t770 = -t1206 * t811 + t1209 * t1286;
t769 = t1206 * t1286 + t1209 * t811;
t768 = pkin(2) * t788 + t1223;
t767 = -t1215 * t777 + t1218 * t782 + (-t1206 * t827 - t1209 * t828) * pkin(7);
t766 = -t1215 * t776 + t1218 * t781 + (-t1206 * t823 - t1209 * t824) * pkin(7);
t765 = -t1215 * t780 + t1218 * t784 + (-t1206 * t803 - t1209 * t804) * pkin(7);
t764 = -pkin(1) * t827 - t1206 * t797 + t1209 * t1240;
t763 = pkin(1) * t828 + t1206 * t1240 + t1209 * t797;
t762 = -pkin(1) * t823 - t1206 * t796 + t1209 * t1241;
t761 = pkin(1) * t824 + t1206 * t1241 + t1209 * t796;
t760 = -pkin(1) * t803 - t1206 * t805 + t1209 * t1239;
t759 = pkin(1) * t804 + t1206 * t1239 + t1209 * t805;
t758 = -t1215 * t772 + t1218 * t774 + (-t1206 * t813 - t1209 * t814) * pkin(7);
t755 = -pkin(1) * t813 - t1206 * t783 + t1209 * t1242;
t754 = pkin(1) * t814 + t1206 * t1242 + t1209 * t783;
t753 = -t1215 * t756 + t1218 * t757 + (-t1206 * t769 - t1209 * t770) * pkin(7);
t752 = -pkin(1) * t769 - t1206 * t768 + t1209 * t1243;
t751 = pkin(1) * t770 + t1206 * t1243 + t1209 * t768;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1382, -t1381, -t1257, -qJ(1) * t1257, 0, 0, -t1258, 0, t1105, t1178, -qJ(1) * t1104 - t1000 * t1205 + t1045 * t1208, qJ(1) * t1259 + t1208 * t1046 - t1205 * t999, -t1014 * t1205 + t1015 * t1208, t1208 * t899 - t1205 * t913 - qJ(1) * (t1016 * t1205 + t1208 * t976), 0, 0, t1033, 0, -t1035, t1178, -t1205 * t893 - t1415, -t1205 * t894 - t1414, -t1205 * t860 + t1208 * t861, t1208 * t795 - t1205 * t787 - qJ(1) * (t1205 * t1403 + t1208 * t853), t1178, -t1033, t1035, 0, 0, 0, -t1205 * t849 - t1208 * t1279, -t1205 * t887 + t1415, -t1205 * t885 + t1414, t1208 * t785 - t1205 * t779 - qJ(1) * (t1205 * t1390 + t1208 * t840), t1023 * t1208 - t1205 * t983, -t1205 * t949 + t1208 * t995, t1022 * t1208 - t1205 * t980, t1024 * t1208 - t1205 * t984, t1021 * t1208 - t1205 * t979, -t1053 * t1205 + t1062 * t1208, t1208 * t800 - t1205 * t793 - qJ(1) * (t1005 * t1205 + t1208 * t964), t1208 * t801 - t1205 * t794 - qJ(1) * (t1006 * t1205 + t1208 * t965), t1208 * t808 - t1205 * t799 - qJ(1) * (t1038 * t1208 + t1047 * t1205), t1208 * t765 - t1205 * t760 - qJ(1) * (t1205 * t812 + t1208 * t804), -t1205 * t845 + t1208 * t869, -t1205 * t818 + t1208 * t832, -t1205 * t835 + t1208 * t854, -t1205 * t844 + t1208 * t868, -t1205 * t836 + t1208 * t855, -t1205 * t873 + t1208 * t896, t1208 * t766 - t1205 * t762 - qJ(1) * (t1205 * t838 + t1208 * t824), t1208 * t767 - t1205 * t764 - qJ(1) * (t1205 * t841 + t1208 * t828), t1208 * t758 - t1205 * t755 - qJ(1) * (t1205 * t829 + t1208 * t814), t1208 * t753 - t1205 * t752 - qJ(1) * (t1205 * t773 + t1208 * t770); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1381, -t1382, t1302, qJ(1) * t1302, 0, 0, t1259, 0, t1104, -t1309, qJ(1) * t1105 + t1000 * t1208 + t1045 * t1205, qJ(1) * t1258 + t1205 * t1046 + t1208 * t999, t1014 * t1208 + t1015 * t1205, t1205 * t899 + t1208 * t913 + qJ(1) * (t1016 * t1208 - t1205 * t976), 0, 0, t1029, 0, -t1031, -t1309, t1208 * t893 - t1417, t1208 * t894 - t1416, t1205 * t861 + t1208 * t860, t1205 * t795 + t1208 * t787 + qJ(1) * (-t1205 * t853 + t1208 * t1403), -t1309, -t1029, t1031, 0, 0, 0, -t1205 * t1279 + t1208 * t849, t1208 * t887 + t1417, t1208 * t885 + t1416, t1205 * t785 + t1208 * t779 + qJ(1) * (-t1205 * t840 + t1208 * t1390), t1023 * t1205 + t1208 * t983, t1205 * t995 + t1208 * t949, t1022 * t1205 + t1208 * t980, t1024 * t1205 + t1208 * t984, t1021 * t1205 + t1208 * t979, t1053 * t1208 + t1062 * t1205, t1205 * t800 + t1208 * t793 + qJ(1) * (t1005 * t1208 - t1205 * t964), t1205 * t801 + t1208 * t794 + qJ(1) * (t1006 * t1208 - t1205 * t965), t1205 * t808 + t1208 * t799 + qJ(1) * (-t1038 * t1205 + t1047 * t1208), t1205 * t765 + t1208 * t760 + qJ(1) * (-t1205 * t804 + t1208 * t812), t1205 * t869 + t1208 * t845, t1205 * t832 + t1208 * t818, t1205 * t854 + t1208 * t835, t1205 * t868 + t1208 * t844, t1205 * t855 + t1208 * t836, t1205 * t896 + t1208 * t873, t1205 * t766 + t1208 * t762 + qJ(1) * (-t1205 * t824 + t1208 * t838), t1205 * t767 + t1208 * t764 + qJ(1) * (-t1205 * t828 + t1208 * t841), t1205 * t758 + t1208 * t755 + qJ(1) * (-t1205 * t814 + t1208 * t829), t1205 * t753 + t1208 * t752 + qJ(1) * (-t1205 * t770 + t1208 * t773); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1173, t1174, 0, 0, 0, 0, t1144, 0, t1145, t1189, t998, t997, t1013, t914, 0, 0, t1384, 0, t1386, t1189, t891, t892, t859, t786, t1189, -t1384, -t1386, 0, 0, 0, t848, t886, t884, t778, t981, t948, t978, t982, t977, t1052, t791, t792, t798, t759, t843, t817, t833, t842, t834, t872, t761, t763, t754, t751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1356, -t1173, 0, 0, 0, t1169, 0, -t1255, 0, t1045, t1046, t1015, t899, 0, 0, t1109, 0, -t1111, 0, -t929, -t930, t861, t795, 0, -t1109, t1111, 0, 0, 0, -t1279, t929, t930, t785, t1023, t995, t1022, t1024, t1021, t1062, t800, t801, t808, t765, t869, t832, t854, t868, t855, t896, t766, t767, t758, t753; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1356, 0, -t1174, 0, 0, 0, t1146, 0, t1147, -t1320, t1000, t999, t1014, t913, 0, 0, t1383, 0, t1385, -t1320, t893, t894, t860, t787, -t1320, -t1383, -t1385, 0, 0, 0, t849, t887, t885, t779, t983, t949, t980, t984, t979, t1053, t793, t794, t799, t760, t845, t818, t835, t844, t836, t873, t762, t764, t755, t752; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1173, t1174, 0, 0, 0, 0, t1144, 0, t1145, t1189, t998, t997, t1013, t914, 0, 0, t1384, 0, t1386, t1189, t891, t892, t859, t786, t1189, -t1384, -t1386, 0, 0, 0, t848, t886, t884, t778, t981, t948, t978, t982, t977, t1052, t791, t792, t798, t759, t843, t817, t833, t842, t834, t872, t761, t763, t754, t751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1219, 0, 0, -t1141, t1084, 0, 0, 0, t1166, 0, -t1167, 0, -t1075, -t1307, t921, qJ(3) * t921, 0, -t1166, t1167, 0, 0, 0, -t910, t1075, t1307, t895, t1093, t1064, t1090, t1094, t1089, t1136, t857, t858, t871, t784, t937, t883, t917, t936, t918, t968, t781, t782, t774, t757; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1219, 0, qJDD(2), 0, t1141, 0, t1085, 0, 0, 0, t1167, 0, t1166, 0, t1307, -t1075, t1303, t908, 0, -t1167, -t1166, 0, 0, 0, t1305, -t1307, t1075, t880, t1091, t1063, t1088, t1092, t1087, t1135, t846, t847, t870, t780, t935, t882, t915, t934, t916, t967, t776, t777, t772, t756; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1084, -t1085, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t993, t994, 0, -t1367, qJDD(2), 0, 0, 0, 0, 0, 0, t986, t985, t856, t1131, t1108, t1132, t1124, t1129, 0, t906, t907, t867, t805, t1010, t944, t960, t1009, t961, t1044, t796, t797, t783, t768; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1219, 0, 0, -t1134, t1011, 0, 0, -qJDD(2), t1219, 0, 0, 0, t1003, 0, t1134, qJ(4) * t1134, t1184, t1172, t1192, -t1184, -t1319, qJDD(5), t923, t924, -t1361, t837, t1050, t971, t1039, -t1048, t1040, t1065, t830, t831, t802, t775; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1219, 0, qJDD(2), 0, t1134, 0, t1012, 0, 0, -t1219, -qJDD(2), 0, 0, 0, t1001, -t1134, 0, pkin(3) * t1134, -t1138, -t1107, -t1127, -t1137, -t1125, t1155, t926, t925, -t881, t819, -t1008, -t943, -t958, -t1007, -t959, -t1043, t806, t807, t790, t771; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1011, -t1012, 0, 0, qJDD(2), 0, 0, 0, 0, 0, 0, t1248, t1220, t1348, t1131, t1108, t1132, t1124, t1129, 0, t1244, t1256, t1225, t1297, t1010, t944, t960, t1009, t961, t1044, t1227, t1226, t1249, t1223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, 0, 0, 0, 0, 0, t1003, t1001, 0, t1131, t1108, t1132, t1124, t1129, 0, t1290, t1310, t1251, -t1364, t1010, t944, t960, t1009, t961, t1044, t1253, t1252, t1298, t1246; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1219, 0, 0, 0, -t1003, 0, -t1134, 0, -t1184, -t1172, -t1192, t1184, t1319, -qJDD(5), t1250, t1294, t1361, -t1366, -t1050, -t971, -t1039, t1048, -t1040, -t1065, t1270, t1269, t1247, t1299; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1219, qJDD(2), 0, 0, 0, -t1001, t1134, 0, 0, t1138, t1107, t1127, t1137, t1125, -t1155, pkin(8) * t1130 - t1292, pkin(8) * t1133 - t1291, t881, pkin(8) * t890 - t1365, t1008, t943, t958, t1007, t959, t1043, pkin(8) * t951 - t1236, pkin(8) * t954 - t1235, pkin(8) * t933 + t1375, pkin(8) * t811 - t1387; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1164, -t1162, t1176, t1312, t1179, -t1312, 0, t992, -t1304, 0, t1051, t973, t1041, t1049, t1042, t1066, t898, t901, t816, -pkin(9) * t825; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1311, t1165, t1181, t1163, t1175, -t1311, -t992, 0, -t1347, 0, -t1120, -t1116, -t1060, t1120, t1056, -t1154, t863, t866, -pkin(5) * t972, -pkin(5) * t825; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1184, t1172, t1192, -t1184, -t1319, qJDD(5), t1304, t1347, 0, 0, t1050, t971, t1039, -t1048, t1040, t1065, t1315, t1316, t1300, t1355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1095, t1057, t1376, t1143, t1139, -t1143, 0, t941, t876, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1142, t1059, t1140, -t1245, t1082, -t1142, -t941, 0, t877, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1120, t1116, t1060, -t1120, -t1056, t1154, -t876, -t877, 0, 0;];
m_new_reg  = t1;

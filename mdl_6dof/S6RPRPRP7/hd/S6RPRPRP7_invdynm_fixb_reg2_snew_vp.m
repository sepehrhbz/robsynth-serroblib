% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPRPRP7
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta4]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 17:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPRPRP7_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP7_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP7_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRP7_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP7_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP7_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 17:58:56
% EndTime: 2019-05-05 17:59:15
% DurationCPUTime: 20.07s
% Computational Cost: add. (98732->764), mult. (218529->873), div. (0->0), fcn. (147250->8), ass. (0->517)
t1235 = sin(pkin(9));
t1236 = cos(pkin(9));
t1239 = sin(qJ(3));
t1242 = cos(qJ(3));
t1195 = (t1235 * t1242 + t1236 * t1239) * qJD(1);
t1382 = qJD(1) * t1242;
t1383 = qJD(1) * t1239;
t1197 = -t1235 * t1383 + t1236 * t1382;
t1363 = t1197 * t1195;
t1431 = qJDD(3) - t1363;
t1433 = t1235 * t1431;
t1432 = t1236 * t1431;
t1225 = t1242 * qJDD(1);
t1334 = qJD(3) * t1383;
t1204 = t1225 - t1334;
t1333 = qJD(3) * t1382;
t1344 = t1239 * qJDD(1);
t1275 = -t1333 - t1344;
t1144 = t1236 * t1204 + t1235 * t1275;
t1380 = qJD(3) * t1195;
t1124 = -t1380 + t1144;
t1238 = sin(qJ(5));
t1241 = cos(qJ(5));
t1157 = qJD(3) * t1241 - t1238 * t1197;
t1158 = t1238 * qJD(3) + t1241 * t1197;
t1120 = t1157 * t1158;
t1316 = t1204 * t1235 - t1236 * t1275;
t1298 = qJDD(5) + t1316;
t1423 = t1120 + t1298;
t1430 = pkin(5) * t1423;
t1374 = t1423 * t1238;
t1373 = t1423 * t1241;
t1186 = qJD(5) + t1195;
t1318 = -t1241 * qJDD(3) + t1238 * t1144;
t1062 = (qJD(5) - t1186) * t1158 + t1318;
t1154 = t1157 ^ 2;
t1155 = t1158 ^ 2;
t1090 = -t1154 - t1155;
t1377 = qJD(6) * t1157;
t1149 = 0.2e1 * t1377;
t1126 = pkin(5) * t1186 - qJ(6) * t1158;
t1277 = qJD(5) * t1158 + t1318;
t1379 = qJD(4) * t1195;
t1180 = -0.2e1 * t1379;
t1244 = qJD(1) ^ 2;
t1240 = sin(qJ(1));
t1243 = cos(qJ(1));
t1213 = t1240 * g(1) - t1243 * g(2);
t1304 = qJDD(2) - t1213;
t1270 = -t1244 * qJ(2) + t1304;
t1420 = pkin(7) + pkin(1);
t1252 = -qJDD(1) * t1420 + t1270;
t1148 = t1242 * g(3) - t1239 * t1252;
t1232 = t1239 ^ 2;
t1354 = t1232 * t1244;
t1421 = qJD(3) ^ 2;
t1217 = -t1354 - t1421;
t1111 = pkin(3) * t1217 - qJ(4) * t1344 - t1148;
t1250 = t1242 * t1252;
t1350 = t1242 * t1244;
t1384 = qJD(1) * qJD(3);
t1246 = t1250 - t1204 * qJ(4) + qJDD(3) * pkin(3) + (-pkin(3) * t1350 - qJ(4) * t1384 + g(3)) * t1239;
t1346 = t1236 * t1111 + t1235 * t1246;
t1033 = t1180 + t1346;
t1135 = pkin(4) * t1195 - pkin(8) * t1197;
t1006 = -pkin(4) * t1421 + qJDD(3) * pkin(8) - t1135 * t1195 + t1033;
t1184 = qJD(3) * t1197;
t1121 = t1184 + t1316;
t1381 = qJD(2) * qJD(1);
t1229 = 0.2e1 * t1381;
t1214 = t1243 * g(1) + t1240 * g(2);
t1231 = qJDD(1) * qJ(2);
t1282 = t1214 - t1231;
t1422 = -(qJ(4) * t1232 + t1420) * t1244 - pkin(3) * t1275 + qJDD(4) + (qJD(3) * pkin(3) - qJ(4) * t1382) * t1382 - t1282;
t1245 = t1121 * pkin(4) - pkin(8) * t1124 + t1229 + t1422;
t956 = t1241 * t1006 + t1238 * t1245;
t1294 = t1154 * pkin(5) + t1277 * qJ(6) + t1186 * t1126 - t956;
t925 = t1149 - t1294;
t895 = -pkin(5) * t1090 - qJ(6) * t1062 + t925;
t1096 = qJD(5) * t1157 + qJDD(3) * t1238 + t1144 * t1241;
t1132 = t1186 * t1157;
t1065 = t1096 - t1132;
t955 = t1238 * t1006 - t1241 * t1245;
t1253 = -qJ(6) * t1132 + 0.2e1 * qJD(6) * t1158 - t1430 + t955;
t901 = (t1065 + t1096) * qJ(6) + t1253;
t1429 = t1238 * t901 + t1241 * t895;
t893 = t1238 * t955 + t1241 * t956;
t996 = -t1062 * t1241 + t1065 * t1238;
t969 = -t1090 * t1236 + t1235 * t996;
t970 = t1090 * t1235 + t1236 * t996;
t911 = t1239 * t970 + t1242 * t969;
t994 = -t1062 * t1238 - t1065 * t1241;
t1428 = -pkin(1) * t911 + qJ(2) * t994;
t1082 = -t1120 + t1298;
t1424 = t1096 + t1132;
t1008 = -pkin(5) * t1424 - qJ(6) * t1082;
t1185 = t1186 ^ 2;
t1110 = -t1155 - t1185;
t1320 = t1235 * t1111 - t1236 * t1246;
t1281 = -qJDD(3) * pkin(4) - pkin(8) * t1421 + t1320;
t1251 = t1277 * pkin(5) - t1154 * qJ(6) + t1158 * t1126 + qJDD(6) + t1281;
t1323 = (0.2e1 * qJD(4) + t1135) * t1197;
t954 = t1323 + t1251;
t948 = -qJ(6) * t1110 + t954;
t1427 = t1241 * t1008 + t1238 * t948;
t1093 = -t1185 - t1154;
t1022 = t1093 * t1238 + t1373;
t1023 = t1093 * t1241 - t1374;
t1061 = (qJD(5) + t1186) * t1158 + t1318;
t978 = t1023 * t1235 - t1061 * t1236;
t979 = t1023 * t1236 + t1061 * t1235;
t923 = t1239 * t979 + t1242 * t978;
t1426 = -pkin(1) * t923 + qJ(2) * t1022;
t1376 = t1082 * t1238;
t1029 = t1110 * t1241 - t1376;
t1375 = t1082 * t1241;
t1030 = -t1110 * t1238 - t1375;
t984 = t1030 * t1235 - t1236 * t1424;
t985 = t1030 * t1236 + t1235 * t1424;
t933 = t1239 * t985 + t1242 * t984;
t1425 = -pkin(1) * t933 + qJ(2) * t1029;
t1147 = t1239 * g(3) + t1250;
t1100 = t1242 * t1147 - t1239 * t1148;
t1123 = -t1316 + t1184;
t1192 = t1195 ^ 2;
t1193 = t1197 ^ 2;
t912 = -t1239 * t969 + t1242 * t970;
t1419 = pkin(1) * t912;
t924 = -t1239 * t978 + t1242 * t979;
t1418 = pkin(1) * t924;
t934 = -t1239 * t984 + t1242 * t985;
t1417 = pkin(1) * t934;
t1416 = pkin(4) * t994;
t917 = qJ(6) * t1096 + t1253;
t1415 = pkin(5) * t917;
t1414 = pkin(6) * (t1240 * t994 - t1243 * t911);
t1413 = pkin(6) * (t1022 * t1240 - t1243 * t923);
t1412 = pkin(6) * (t1029 * t1240 - t1243 * t933);
t1411 = pkin(7) * t911;
t1410 = pkin(7) * t923;
t1409 = pkin(7) * t933;
t1408 = pkin(8) * t994;
t1407 = pkin(2) * t1100;
t1343 = -0.2e1 * t1381;
t1256 = t1282 + t1343;
t1171 = t1244 * t1420 + t1256;
t1406 = pkin(2) * t1171;
t1233 = t1242 ^ 2;
t1345 = t1232 + t1233;
t1206 = t1345 * qJDD(1);
t1405 = pkin(2) * t1206;
t1404 = pkin(4) * t1022;
t1403 = pkin(4) * t1029;
t1402 = pkin(4) * t1235;
t1401 = pkin(5) * t1065;
t1400 = pkin(8) * t1022;
t1399 = pkin(8) * t1029;
t1398 = qJ(2) * t924;
t1397 = qJ(4) * t969;
t1396 = qJ(4) * t978;
t1395 = qJ(4) * t984;
t1394 = qJDD(1) * pkin(1);
t1393 = -pkin(2) * t994 + pkin(7) * t912;
t1392 = t1238 * t917;
t1378 = qJD(4) * t1197;
t1342 = 0.2e1 * t1378;
t1032 = t1320 + t1342;
t972 = -t1032 * t1236 + t1033 * t1235;
t1391 = t1239 * t972;
t1390 = t1241 * t917;
t1389 = t1242 * t972;
t1005 = t1323 + t1281;
t1388 = -pkin(4) * t1005 + pkin(8) * t893;
t1387 = -pkin(2) * t1022 + pkin(7) * t924;
t1386 = -pkin(2) * t1029 + pkin(7) * t934;
t1385 = -pkin(4) * t1090 + pkin(8) * t996;
t1112 = t1343 - t1422;
t1372 = t1112 * t1235;
t1371 = t1112 * t1236;
t1138 = qJDD(3) + t1363;
t1370 = t1138 * t1235;
t1369 = t1138 * t1236;
t1368 = t1186 * t1158;
t1367 = t1186 * t1238;
t1366 = t1186 * t1241;
t1365 = t1195 * t1235;
t1364 = t1195 * t1236;
t1362 = t1197 * t1235;
t1361 = t1197 * t1236;
t1203 = 0.2e1 * t1333 + t1344;
t1159 = t1203 * t1239;
t1360 = t1206 * t1240;
t1359 = t1206 * t1243;
t1220 = t1239 * t1350;
t1211 = qJDD(3) + t1220;
t1358 = t1211 * t1239;
t1357 = t1211 * t1242;
t1212 = qJDD(3) - t1220;
t1356 = t1212 * t1239;
t1355 = t1212 * t1242;
t1353 = t1233 * t1244;
t1001 = t1238 * t1005;
t1351 = t1239 * t1171;
t1002 = t1241 * t1005;
t1156 = t1242 * t1171;
t1348 = -pkin(4) * t1424 + pkin(8) * t1030;
t1347 = pkin(4) * t1061 - pkin(8) * t1023;
t879 = -t1005 * t1236 + t1235 * t893;
t1341 = pkin(3) * t879 + t1388;
t1340 = -pkin(4) * t1236 - pkin(3);
t973 = t1032 * t1235 + t1236 * t1033;
t915 = t1239 * t973 + t1389;
t971 = pkin(3) * t972;
t1339 = -pkin(2) * t915 - t971;
t1338 = t1235 * t1120;
t1337 = t1236 * t1120;
t1336 = t1240 * t1363;
t1335 = t1243 * t1363;
t1332 = t1001 + t1348;
t1331 = -t1002 - t1347;
t1176 = -t1193 - t1421;
t1106 = t1176 * t1236 - t1370;
t1330 = pkin(3) * t1106 - t1346;
t1125 = t1380 + t1144;
t1069 = t1123 * t1235 - t1125 * t1236;
t1067 = pkin(3) * t1069;
t1071 = t1123 * t1236 + t1125 * t1235;
t998 = t1069 * t1242 + t1071 * t1239;
t1329 = -pkin(2) * t998 - t1067;
t1328 = -pkin(3) * t1022 + qJ(4) * t979;
t1327 = -pkin(3) * t1029 + qJ(4) * t985;
t875 = t1238 * t925 - t1390;
t882 = -pkin(5) * t954 + qJ(6) * t925;
t836 = -pkin(8) * t875 + qJ(6) * t1390 - t1238 * t882;
t857 = -pkin(4) * t875 + t1415;
t876 = t1241 * t925 + t1392;
t862 = t1235 * t954 + t1236 * t876;
t816 = -pkin(3) * t875 + qJ(4) * t862 + t1235 * t836 + t1236 * t857;
t861 = t1235 * t876 - t1236 * t954;
t820 = -qJ(4) * t861 - t1235 * t857 + t1236 * t836;
t1326 = -t1239 * t816 + t1242 * t820;
t880 = t1005 * t1235 + t1236 * t893;
t892 = t1238 * t956 - t1241 * t955;
t833 = qJ(4) * t880 + (-pkin(8) * t1235 + t1340) * t892;
t840 = -qJ(4) * t879 + (-pkin(8) * t1236 + t1402) * t892;
t1325 = -t1239 * t833 + t1242 * t840;
t1119 = -t1192 - t1193;
t946 = -pkin(3) * t1119 + qJ(4) * t1071 + t973;
t950 = -qJ(4) * t1069 - t972;
t1324 = -t1239 * t946 + t1242 * t950;
t1136 = -t1192 - t1421;
t1088 = t1136 * t1236 - t1433;
t1009 = -pkin(3) * t1121 + qJ(4) * t1088 + t1371;
t1087 = t1136 * t1235 + t1432;
t1035 = -qJ(4) * t1087 - t1372;
t1322 = -t1239 * t1009 + t1242 * t1035;
t1109 = -t1176 * t1235 - t1369;
t1010 = -pkin(3) * t1124 + qJ(4) * t1109 - t1372;
t1050 = -qJ(4) * t1106 - t1371;
t1321 = -t1239 * t1010 + t1242 * t1050;
t1179 = t1244 * pkin(1) + t1256;
t1187 = -t1270 + t1394;
t1317 = -t1243 * t1179 - t1187 * t1240;
t1315 = -t1213 * t1240 - t1243 * t1214;
t1314 = t1385 + t1429;
t1313 = t1385 + t893;
t983 = pkin(3) * t984;
t1311 = t983 + t1332;
t977 = pkin(3) * t978;
t1310 = t977 + t1331;
t1309 = t1348 + t1427;
t1308 = t1240 * t1220;
t1307 = t1243 * t1220;
t1207 = qJDD(1) * t1243 - t1240 * t1244;
t1306 = pkin(6) * t1207 + g(3) * t1240;
t1208 = qJDD(1) * t1240 + t1243 * t1244;
t1305 = -pkin(6) * t1208 + g(3) * t1243;
t968 = pkin(3) * t969;
t1303 = t968 + t1314;
t1302 = t968 + t1313;
t1301 = pkin(3) * t1087 - t1320;
t1300 = pkin(2) * t1203 - t1156;
t1205 = t1225 - 0.2e1 * t1334;
t1299 = pkin(2) * t1205 + t1351;
t921 = pkin(2) * t923;
t1297 = -t921 - t1310;
t1296 = t983 + t1309;
t851 = t1239 * t880 + t1242 * t879;
t1295 = -pkin(2) * t851 - t1341;
t1101 = -t1147 * t1239 - t1148 * t1242;
t1293 = t1179 * t1240 - t1187 * t1243;
t1292 = t1213 * t1243 - t1214 * t1240;
t1044 = t1106 * t1242 + t1109 * t1239;
t1290 = -pkin(2) * t1044 - t1330;
t1219 = -t1353 - t1421;
t1163 = t1219 * t1242 - t1358;
t1289 = -pkin(2) * t1163 - t1148;
t859 = -t1238 * t895 + t1241 * t901 - t1408;
t966 = t1401 - t1416;
t967 = qJ(4) * t970;
t838 = -pkin(3) * t994 + t1235 * t859 + t1236 * t966 + t967;
t842 = -t1235 * t966 + t1236 * t859 - t1397;
t1288 = -t1239 * t838 + t1242 * t842 - t1411;
t1249 = -t917 + t1430;
t885 = -t1249 - t1404;
t1182 = -0.2e1 * t1378;
t928 = -pkin(5) * t1061 + qJ(6) * t1093 - t1135 * t1197 + t1182 - t1251;
t888 = -qJ(6) * t1373 - t1238 * t928 - t1400;
t845 = t1235 * t888 + t1236 * t885 + t1328;
t850 = -t1235 * t885 + t1236 * t888 - t1396;
t1287 = -t1239 * t845 + t1242 * t850 - t1410;
t889 = -t1008 * t1238 + t1241 * t948 - t1399;
t1258 = pkin(5) * t1110 + t1294;
t890 = t1149 - t1258 - t1403;
t846 = t1235 * t889 + t1236 * t890 + t1327;
t855 = -t1235 * t890 + t1236 * t889 - t1395;
t1286 = -t1239 * t846 + t1242 * t855 - t1409;
t877 = -t892 - t1408;
t858 = t1235 * t877 + t1340 * t994 + t967;
t864 = t1236 * t877 + t1402 * t994 - t1397;
t1285 = -t1239 * t858 + t1242 * t864 - t1411;
t935 = t955 - t1404;
t959 = t1001 - t1400;
t868 = t1235 * t959 + t1236 * t935 + t1328;
t871 = -t1235 * t935 + t1236 * t959 - t1396;
t1284 = -t1239 * t868 + t1242 * t871 - t1410;
t936 = t956 - t1403;
t960 = t1002 - t1399;
t869 = t1235 * t960 + t1236 * t936 + t1327;
t873 = -t1235 * t936 + t1236 * t960 - t1395;
t1283 = -t1239 * t869 + t1242 * t873 - t1409;
t961 = pkin(3) * t1112 + qJ(4) * t973;
t1280 = -qJ(4) * t1389 - t1239 * t961;
t1279 = -pkin(4) * t954 + pkin(8) * t876 + qJ(6) * t1392 + t1241 * t882;
t909 = pkin(2) * t911;
t1278 = -qJ(2) * t912 + t1385 + t909 + t968;
t931 = pkin(2) * t933;
t1276 = -qJ(2) * t934 + t1348 + t931 + t983;
t1274 = -qJ(6) * t1374 + t1241 * t928 - t1347;
t1273 = t1239 * t842 + t1242 * t838 + t1393;
t1272 = t1239 * t864 + t1242 * t858 + t1393;
t1015 = t1087 * t1242 + t1088 * t1239;
t1271 = -pkin(2) * t1015 - t1301;
t1269 = t1239 * t850 + t1242 * t845 + t1387;
t1268 = t1239 * t871 + t1242 * t868 + t1387;
t1267 = t1239 * t855 + t1242 * t846 + t1386;
t1266 = t1239 * t873 + t1242 * t869 + t1386;
t1265 = pkin(2) * t875 - t1239 * t820 - t1242 * t816;
t1264 = pkin(2) * t892 - t1239 * t840 - t1242 * t833;
t1263 = pkin(3) * t861 + t1279;
t1262 = pkin(2) * t1119 - t1239 * t950 - t1242 * t946;
t1261 = pkin(2) * t1121 - t1242 * t1009 - t1239 * t1035;
t1260 = pkin(2) * t1124 - t1242 * t1010 - t1239 * t1050;
t1259 = t1274 + t977;
t1257 = -pkin(2) * t1112 + qJ(4) * t1391 - t1242 * t961;
t1255 = -t1259 - t921;
t834 = t1239 * t862 + t1242 * t861;
t1254 = -pkin(2) * t834 - t1263;
t1161 = t1217 * t1239 + t1355;
t1247 = -pkin(2) * t1161 - t1147;
t1226 = t1243 * qJDD(3);
t1223 = t1240 * qJDD(3);
t1218 = -t1353 + t1421;
t1216 = t1354 - t1421;
t1210 = (-t1232 + t1233) * t1244;
t1209 = t1345 * t1244;
t1201 = t1345 * t1384;
t1200 = t1304 - 0.2e1 * t1394;
t1194 = -t1214 + t1229 + 0.2e1 * t1231;
t1181 = 0.2e1 * t1379;
t1175 = -t1193 + t1421;
t1174 = t1192 - t1421;
t1173 = t1204 * t1239 + t1233 * t1384;
t1172 = t1232 * t1384 + t1242 * t1275;
t1168 = -t1219 * t1239 - t1357;
t1167 = -t1218 * t1239 + t1355;
t1166 = (t1204 - t1334) * t1242;
t1165 = t1217 * t1242 - t1356;
t1164 = t1216 * t1242 - t1358;
t1162 = t1218 * t1242 + t1356;
t1160 = t1216 * t1239 + t1357;
t1146 = -t1203 * t1242 - t1205 * t1239;
t1145 = t1205 * t1242 - t1159;
t1141 = t1193 - t1192;
t1134 = pkin(1) * t1187 - qJ(2) * t1179;
t1131 = (t1362 - t1364) * qJD(3);
t1130 = (-t1361 - t1365) * qJD(3);
t1128 = -t1155 + t1185;
t1127 = t1154 - t1185;
t1117 = t1155 - t1154;
t1116 = -qJD(3) * t1362 + t1144 * t1236;
t1115 = qJD(3) * t1361 + t1144 * t1235;
t1114 = qJD(3) * t1364 + t1235 * t1316;
t1113 = qJD(3) * t1365 - t1236 * t1316;
t1108 = -t1175 * t1235 + t1432;
t1107 = t1174 * t1236 - t1370;
t1105 = t1175 * t1236 + t1433;
t1104 = t1174 * t1235 + t1369;
t1091 = pkin(2) * t1209 + t1101;
t1085 = -qJ(2) * t1168 - t1289;
t1084 = -qJ(2) * t1165 - t1247;
t1080 = -t1165 * t1420 + t1300;
t1079 = -t1168 * t1420 + t1299;
t1078 = qJ(2) * t1205 - t1163 * t1420 - t1156;
t1077 = qJ(2) * t1203 - t1161 * t1420 - t1351;
t1076 = (t1157 * t1241 + t1158 * t1238) * t1186;
t1075 = (t1157 * t1238 - t1158 * t1241) * t1186;
t1074 = -t1130 * t1239 + t1131 * t1242;
t1073 = t1130 * t1242 + t1131 * t1239;
t1072 = -qJ(2) * t1209 + t1206 * t1420 - t1100;
t1070 = -t1121 * t1236 - t1124 * t1235;
t1068 = -t1121 * t1235 + t1124 * t1236;
t1058 = t1096 * t1241 - t1158 * t1367;
t1057 = t1096 * t1238 + t1158 * t1366;
t1056 = -t1157 * t1366 + t1238 * t1277;
t1055 = t1157 * t1367 + t1241 * t1277;
t1054 = -t1115 * t1239 + t1116 * t1242;
t1053 = -t1113 * t1239 + t1114 * t1242;
t1052 = t1115 * t1242 + t1116 * t1239;
t1051 = t1113 * t1242 + t1114 * t1239;
t1048 = -qJ(2) * t1101 + t1407;
t1047 = -t1106 * t1239 + t1109 * t1242;
t1046 = -t1105 * t1239 + t1108 * t1242;
t1045 = -t1104 * t1239 + t1107 * t1242;
t1043 = t1105 * t1242 + t1108 * t1239;
t1042 = t1104 * t1242 + t1107 * t1239;
t1041 = t1236 * t1076 + t1235 * t1298;
t1040 = t1235 * t1076 - t1236 * t1298;
t1039 = t1127 * t1241 - t1376;
t1038 = -t1128 * t1238 + t1373;
t1037 = t1127 * t1238 + t1375;
t1036 = t1128 * t1241 + t1374;
t1025 = -t1101 * t1420 - t1406;
t1024 = -qJ(2) * t1171 - t1100 * t1420;
t1016 = -t1087 * t1239 + t1088 * t1242;
t1014 = t1058 * t1236 - t1338;
t1013 = t1056 * t1236 + t1338;
t1012 = t1058 * t1235 + t1337;
t1011 = t1056 * t1235 - t1337;
t1000 = -t1069 * t1239 + t1071 * t1242;
t999 = -t1068 * t1239 + t1070 * t1242;
t997 = t1068 * t1242 + t1070 * t1239;
t995 = -t1061 * t1241 - t1238 * t1424;
t993 = -t1061 * t1238 + t1241 * t1424;
t989 = t1039 * t1236 - t1062 * t1235;
t988 = t1038 * t1236 + t1065 * t1235;
t987 = t1039 * t1235 + t1062 * t1236;
t986 = t1038 * t1235 - t1065 * t1236;
t981 = -t1040 * t1239 + t1041 * t1242;
t980 = t1040 * t1242 + t1041 * t1239;
t975 = t1117 * t1235 + t1236 * t995;
t974 = -t1117 * t1236 + t1235 * t995;
t965 = -t1012 * t1239 + t1014 * t1242;
t964 = -t1011 * t1239 + t1013 * t1242;
t963 = t1012 * t1242 + t1014 * t1239;
t962 = t1011 * t1242 + t1013 * t1239;
t958 = t1075 * t1243 + t1240 * t980;
t957 = t1075 * t1240 - t1243 * t980;
t945 = -qJ(2) * t1047 + t1181 - t1290;
t944 = t1057 * t1243 + t1240 * t963;
t943 = -t1055 * t1243 + t1240 * t962;
t942 = t1057 * t1240 - t1243 * t963;
t941 = -t1055 * t1240 - t1243 * t962;
t940 = -t1239 * t987 + t1242 * t989;
t939 = -t1239 * t986 + t1242 * t988;
t938 = t1239 * t989 + t1242 * t987;
t937 = t1239 * t988 + t1242 * t986;
t929 = -qJ(2) * t1000 - t1329;
t927 = -qJ(2) * t1016 + t1182 - t1271;
t919 = -t1239 * t974 + t1242 * t975;
t918 = t1239 * t975 + t1242 * t974;
t916 = t1242 * t973 - t1391;
t914 = -t1047 * t1420 + t1260;
t913 = qJ(2) * t1124 - t1044 * t1420 + t1321;
t907 = t1037 * t1243 + t1240 * t938;
t906 = t1036 * t1243 + t1240 * t937;
t905 = t1037 * t1240 - t1243 * t938;
t904 = t1036 * t1240 - t1243 * t937;
t902 = pkin(6) * (t1029 * t1243 + t1240 * t933);
t899 = -t1016 * t1420 + t1261;
t898 = qJ(2) * t1121 - t1015 * t1420 + t1322;
t896 = pkin(6) * (t1022 * t1243 + t1240 * t923);
t887 = t1240 * t918 + t1243 * t993;
t886 = t1240 * t993 - t1243 * t918;
t883 = pkin(6) * (t1240 * t911 + t1243 * t994);
t867 = -t1000 * t1420 + t1262;
t866 = qJ(2) * t1119 - t1420 * t998 + t1324;
t865 = -qJ(2) * t916 - t1339;
t856 = t1001 + t1276;
t853 = -t1297 - t1398;
t852 = -t1239 * t879 + t1242 * t880;
t848 = -t1420 * t916 + t1257;
t847 = -qJ(2) * t1112 - t1420 * t915 + t1280;
t844 = t1276 + t1427;
t843 = -t1255 - t1398;
t837 = t1278 + t893;
t835 = -t1239 * t861 + t1242 * t862;
t832 = t1278 + t1429;
t831 = -t1266 - t1417;
t830 = t1283 + t1425;
t829 = -t1268 - t1418;
t828 = t1284 + t1426;
t827 = -t1272 - t1419;
t826 = t1285 + t1428;
t825 = -t1267 - t1417;
t824 = t1286 + t1425;
t823 = -t1269 - t1418;
t822 = t1287 + t1426;
t821 = -qJ(2) * t852 - t1295;
t818 = -t1273 - t1419;
t817 = t1288 + t1428;
t815 = -t1420 * t852 + t1264;
t814 = qJ(2) * t892 - t1420 * t851 + t1325;
t813 = -qJ(2) * t835 - t1254;
t812 = -t1420 * t835 + t1265;
t811 = qJ(2) * t875 - t1420 * t834 + t1326;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1207, 0, -t1208, 0, -t1306, -t1305, -t1292, -pkin(6) * t1292, 0, -t1207, t1208, 0, 0, 0, t1293, t1306, t1305, pkin(6) * t1293 + (-pkin(1) * t1240 + qJ(2) * t1243) * g(3), t1173 * t1240 + t1307, t1145 * t1240 + t1210 * t1243, t1162 * t1240 + t1225 * t1243, t1172 * t1240 - t1307, t1160 * t1240 - t1243 * t1344, -t1201 * t1240 + t1226, t1243 * t1084 - t1240 * t1080 - pkin(6) * (-t1161 * t1243 + t1203 * t1240), t1243 * t1085 - t1240 * t1079 - pkin(6) * (-t1163 * t1243 + t1205 * t1240), -pkin(2) * t1359 + t1240 * t1091 - pkin(6) * (-t1209 * t1240 + t1359), t1243 * t1048 - t1240 * t1025 - pkin(6) * (-t1100 * t1243 - t1171 * t1240), t1052 * t1240 + t1335, t1141 * t1243 + t1240 * t997, t1043 * t1240 + t1125 * t1243, t1051 * t1240 - t1335, t1042 * t1240 + t1123 * t1243, t1073 * t1240 + t1226, t1243 * t927 - t1240 * t899 - pkin(6) * (-t1015 * t1243 + t1121 * t1240), t1243 * t945 - t1240 * t914 - pkin(6) * (-t1044 * t1243 + t1124 * t1240), t1243 * t929 - t1240 * t867 - pkin(6) * (t1119 * t1240 - t1243 * t998), t1243 * t865 - t1240 * t848 - pkin(6) * (-t1112 * t1240 - t1243 * t915), t944, t887, t906, t943, t907, t958, -t1240 * t829 + t1243 * t853 - t1413, -t1240 * t831 + t1243 * t856 - t1412, -t1240 * t827 + t1243 * t837 - t1414, t1243 * t821 - t1240 * t815 - pkin(6) * (t1240 * t892 - t1243 * t851), t944, t887, t906, t943, t907, t958, -t1240 * t823 + t1243 * t843 - t1413, -t1240 * t825 + t1243 * t844 - t1412, -t1240 * t818 + t1243 * t832 - t1414, t1243 * t813 - t1240 * t812 - pkin(6) * (t1240 * t875 - t1243 * t834); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1208, 0, t1207, 0, t1305, -t1306, t1315, pkin(6) * t1315, 0, -t1208, -t1207, 0, 0, 0, t1317, -t1305, t1306, pkin(6) * t1317 + (pkin(1) * t1243 + qJ(2) * t1240) * g(3), -t1173 * t1243 + t1308, -t1145 * t1243 + t1210 * t1240, -t1162 * t1243 + t1225 * t1240, -t1172 * t1243 - t1308, -t1160 * t1243 - t1240 * t1344, t1201 * t1243 + t1223, t1240 * t1084 + t1243 * t1080 + pkin(6) * (t1161 * t1240 + t1203 * t1243), t1240 * t1085 + t1243 * t1079 + pkin(6) * (t1163 * t1240 + t1205 * t1243), -pkin(2) * t1360 - t1243 * t1091 + pkin(6) * (-t1209 * t1243 - t1360), t1240 * t1048 + t1243 * t1025 + pkin(6) * (t1100 * t1240 - t1171 * t1243), -t1052 * t1243 + t1336, t1141 * t1240 - t1243 * t997, -t1043 * t1243 + t1125 * t1240, -t1051 * t1243 - t1336, -t1042 * t1243 + t1123 * t1240, -t1073 * t1243 + t1223, t1240 * t927 + t1243 * t899 + pkin(6) * (t1015 * t1240 + t1121 * t1243), t1240 * t945 + t1243 * t914 + pkin(6) * (t1044 * t1240 + t1124 * t1243), t1240 * t929 + t1243 * t867 + pkin(6) * (t1119 * t1243 + t1240 * t998), t1240 * t865 + t1243 * t848 + pkin(6) * (-t1112 * t1243 + t1240 * t915), t942, t886, t904, t941, t905, t957, t1240 * t853 + t1243 * t829 + t896, t1240 * t856 + t1243 * t831 + t902, t1240 * t837 + t1243 * t827 + t883, t1240 * t821 + t1243 * t815 + pkin(6) * (t1240 * t851 + t1243 * t892), t942, t886, t904, t941, t905, t957, t1240 * t843 + t1243 * t823 + t896, t1240 * t844 + t1243 * t825 + t902, t1240 * t832 + t1243 * t818 + t883, t1240 * t813 + t1243 * t812 + pkin(6) * (t1240 * t834 + t1243 * t875); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1213, t1214, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t1200, t1194, t1134, t1166, t1146, t1167, t1159, t1164, 0, t1077, t1078, t1072, t1024, t1054, t999, t1046, t1053, t1045, t1074, t898, t913, t866, t847, t965, t919, t939, t964, t940, t981, t828, t830, t826, t814, t965, t919, t939, t964, t940, t981, t822, t824, t817, t811; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1244, 0, 0, -g(3), -t1213, 0, 0, -qJDD(1), t1244, 0, 0, 0, -t1187, 0, g(3), qJ(2) * g(3), t1220, t1210, t1225, -t1220, -t1344, qJDD(3), t1084, t1085, -t1405, t1048, t1363, t1141, t1125, -t1363, t1123, qJDD(3), t927, t945, t929, t865, t1057, t993, t1036, -t1055, t1037, t1075, t853, t856, t837, t821, t1057, t993, t1036, -t1055, t1037, t1075, t843, t844, t832, t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1244, 0, qJDD(1), 0, g(3), 0, -t1214, 0, 0, -t1244, -qJDD(1), 0, 0, 0, -t1179, -g(3), 0, pkin(1) * g(3), -t1173, -t1145, -t1162, -t1172, -t1160, t1201, t1080, t1079, -t1091, t1025, -t1052, -t997, -t1043, -t1051, -t1042, -t1073, t899, t914, t867, t848, -t963, -t918, -t937, -t962, -t938, -t980, t829, t831, t827, t815, -t963, -t918, -t937, -t962, -t938, -t980, t823, t825, t818, t812; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1213, t1214, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t1200, t1194, t1134, t1166, t1146, t1167, t1159, t1164, 0, t1077, t1078, t1072, t1024, t1054, t999, t1046, t1053, t1045, t1074, t898, t913, t866, t847, t965, t919, t939, t964, t940, t981, t828, t830, t826, t814, t965, t919, t939, t964, t940, t981, t822, t824, t817, t811; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t1187, -t1179, 0, t1166, t1146, t1167, t1159, t1164, 0, -pkin(7) * t1161 - t1351, -pkin(7) * t1163 - t1156, pkin(7) * t1206 - t1100, -pkin(7) * t1100, t1054, t999, t1046, t1053, t1045, t1074, -pkin(7) * t1015 + t1322, -pkin(7) * t1044 + t1321, -pkin(7) * t998 + t1324, -pkin(7) * t915 + t1280, t965, t919, t939, t964, t940, t981, t1284, t1283, t1285, -pkin(7) * t851 + t1325, t965, t919, t939, t964, t940, t981, t1287, t1286, t1288, -pkin(7) * t834 + t1326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1244, 0, 0, 0, t1187, 0, -g(3), 0, -t1220, -t1210, -t1225, t1220, t1344, -qJDD(3), t1247, t1289, t1405, -t1407, -t1363, -t1141, -t1125, t1363, -t1123, -qJDD(3), t1271 + t1342, t1180 + t1290, t1329, t1339, -t1057, -t993, -t1036, t1055, -t1037, -t1075, t1297, -t931 - t1311, -t909 - t1302, t1295, -t1057, -t993, -t1036, t1055, -t1037, -t1075, t1255, -t931 - t1296, -t909 - t1303, t1254; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1244, qJDD(1), 0, 0, 0, t1179, g(3), 0, 0, t1173, t1145, t1162, t1172, t1160, -t1201, pkin(7) * t1165 - t1300, pkin(7) * t1168 - t1299, t1091, pkin(7) * t1101 + t1406, t1052, t997, t1043, t1051, t1042, t1073, pkin(7) * t1016 - t1261, pkin(7) * t1047 - t1260, pkin(7) * t1000 - t1262, pkin(7) * t916 - t1257, t963, t918, t937, t962, t938, t980, t1268, t1266, t1272, pkin(7) * t852 - t1264, t963, t918, t937, t962, t938, t980, t1269, t1267, t1273, pkin(7) * t835 - t1265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1204, -t1203, t1212, t1334, t1216, -t1334, 0, -t1171, -t1147, 0, t1116, t1070, t1108, t1114, t1107, t1131, t1035, t1050, t950, -qJ(4) * t972, t1014, t975, t988, t1013, t989, t1041, t871, t873, t864, t840, t1014, t975, t988, t1013, t989, t1041, t850, t855, t842, t820; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1333, t1205, t1218, t1275, t1211, -t1333, t1171, 0, -t1148, 0, t1115, t1068, t1105, t1113, t1104, t1130, t1009, t1010, t946, t961, t1012, t974, t986, t1011, t987, t1040, t868, t869, t858, t833, t1012, t974, t986, t1011, t987, t1040, t845, t846, t838, t816; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1220, t1210, t1225, -t1220, -t1344, qJDD(3), t1147, t1148, 0, 0, t1363, t1141, t1125, -t1363, t1123, qJDD(3), t1182 + t1301, t1181 + t1330, t1067, t971, t1057, t993, t1036, -t1055, t1037, t1075, t1310, t1311, t1302, t1341, t1057, t993, t1036, -t1055, t1037, t1075, t1259, t1296, t1303, t1263; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1144, -t1121, t1431, t1380, t1174, -t1380, 0, -t1112, t1032, 0, t1058, t995, t1038, t1056, t1039, t1076, t959, t960, t877, -pkin(8) * t892, t1058, t995, t1038, t1056, t1039, t1076, t888, t889, t859, t836; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1184, t1124, t1175, -t1316, t1138, -t1184, t1112, 0, t1033, 0, t1120, -t1117, -t1065, -t1120, t1062, -t1298, t935, t936, -t1416, -pkin(4) * t892, t1120, -t1117, -t1065, -t1120, t1062, -t1298, t885, t890, t966, t857; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1363, t1141, t1125, -t1363, t1123, qJDD(3), -t1032, -t1033, 0, 0, t1057, t993, t1036, -t1055, t1037, t1075, t1331, t1332, t1313, t1388, t1057, t993, t1036, -t1055, t1037, t1075, t1274, t1309, t1314, t1279; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1096, -t1061, t1423, -t1132, t1127, t1132, 0, t1005, t955, 0, t1096, -t1061, t1423, -t1132, t1127, t1132, -qJ(6) * t1423, t948, t901, qJ(6) * t917; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1368, t1424, t1128, -t1277, t1082, -t1368, -t1005, 0, t956, 0, t1368, t1424, t1128, -t1277, t1082, -t1368, t928, t1008, t895, t882; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1120, t1117, t1065, t1120, -t1062, t1298, -t955, -t956, 0, 0, -t1120, t1117, t1065, t1120, -t1062, t1298, t1249, t1258 - 0.2e1 * t1377, -t1401, -t1415; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1096, -t1061, t1423, -t1132, t1127, t1132, 0, t954, t917, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1368, t1424, t1128, -t1277, t1082, -t1368, -t954, 0, t925, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1120, t1117, t1065, t1120, -t1062, t1298, -t917, -t925, 0, 0;];
m_new_reg  = t1;

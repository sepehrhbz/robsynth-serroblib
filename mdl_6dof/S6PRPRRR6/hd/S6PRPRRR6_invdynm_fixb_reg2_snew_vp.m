% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6PRPRRR6
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 01:35
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6PRPRRR6_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR6_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRR6_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRRR6_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRRR6_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRR6_invdynm_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 01:35:04
% EndTime: 2019-05-05 01:35:32
% DurationCPUTime: 29.43s
% Computational Cost: add. (183815->901), mult. (350415->1269), div. (0->0), fcn. (245680->12), ass. (0->612)
t1378 = sin(pkin(6));
t1391 = cos(qJ(2));
t1500 = t1378 * qJDD(2);
t1387 = sin(qJ(2));
t1392 = qJD(2) ^ 2;
t1506 = t1387 * t1392;
t1324 = t1378 * t1506 - t1391 * t1500;
t1380 = cos(pkin(6));
t1366 = t1380 * qJDD(2);
t1326 = -t1366 * t1391 + t1380 * t1506;
t1377 = sin(pkin(11));
t1379 = cos(pkin(11));
t1487 = g(1) * t1377 - t1379 * g(2);
t1539 = g(3) - qJDD(1);
t1320 = t1378 * t1487 + t1380 * t1539;
t1507 = t1387 * t1320;
t1228 = (t1324 * t1378 + t1326 * t1380) * pkin(7) - t1507;
t1344 = qJDD(2) * t1387 + t1391 * t1392;
t1285 = t1326 * t1377 - t1344 * t1379;
t1582 = -qJ(1) * t1285 - t1228 * t1377;
t1280 = t1326 * t1379 + t1344 * t1377;
t1581 = -qJ(1) * t1280 - t1228 * t1379;
t1323 = t1344 * t1378;
t1325 = t1344 * t1380;
t1505 = t1391 * t1320;
t1231 = (t1323 * t1378 + t1325 * t1380) * pkin(7) - t1505;
t1343 = qJDD(2) * t1391 - t1506;
t1283 = t1325 * t1377 - t1343 * t1379;
t1580 = -qJ(1) * t1283 - t1231 * t1377;
t1278 = t1325 * t1379 + t1343 * t1377;
t1579 = -qJ(1) * t1278 - t1231 * t1379;
t1384 = sin(qJ(6));
t1385 = sin(qJ(5));
t1389 = cos(qJ(5));
t1390 = cos(qJ(4));
t1532 = qJD(2) * t1390;
t1335 = -t1389 * qJD(4) + t1385 * t1532;
t1336 = qJD(4) * t1385 + t1389 * t1532;
t1388 = cos(qJ(6));
t1291 = t1388 * t1335 + t1336 * t1384;
t1293 = -t1335 * t1384 + t1336 * t1388;
t1232 = t1293 * t1291;
t1491 = qJD(4) * t1532;
t1386 = sin(qJ(4));
t1499 = t1386 * qJDD(2);
t1339 = -t1491 - t1499;
t1333 = qJDD(5) - t1339;
t1329 = qJDD(6) + t1333;
t1566 = -t1232 + t1329;
t1574 = t1384 * t1566;
t1301 = t1336 * t1335;
t1564 = -t1301 + t1333;
t1573 = t1385 * t1564;
t1572 = t1388 * t1566;
t1571 = t1389 * t1564;
t1570 = -t1378 * t1539 + t1380 * t1487;
t1540 = pkin(9) * t1390;
t1544 = pkin(4) * t1386;
t1337 = (-t1540 + t1544) * qJD(2);
t1376 = qJDD(2) * pkin(2);
t1347 = g(1) * t1379 + g(2) * t1377;
t1268 = -t1347 * t1387 - t1391 * t1570;
t1426 = qJDD(3) + t1268;
t1252 = -t1392 * qJ(3) - t1376 + t1426;
t1394 = -qJDD(2) * pkin(8) + t1252;
t1502 = t1390 * t1320 - t1386 * t1394;
t1533 = qJD(2) * t1386;
t1556 = qJD(4) ^ 2;
t1178 = -pkin(4) * t1556 + qJDD(4) * pkin(9) - t1337 * t1533 - t1502;
t1367 = t1390 * qJDD(2);
t1492 = qJD(4) * t1533;
t1340 = t1367 - t1492;
t1382 = t1392 * pkin(8);
t1269 = -t1391 * t1347 + t1387 * t1570;
t1531 = qJDD(2) * qJ(3);
t1393 = -t1392 * pkin(2) + t1269 + t1531;
t1543 = pkin(4) * t1390;
t1468 = pkin(9) * t1386 + t1543;
t1554 = 2 * qJD(3);
t1187 = -t1339 * pkin(4) - t1340 * pkin(9) - t1382 + (qJD(4) * t1468 + t1554) * qJD(2) + t1393;
t1091 = t1385 * t1178 - t1389 * t1187;
t1092 = t1389 * t1178 + t1385 * t1187;
t1022 = -t1091 * t1389 + t1092 * t1385;
t1569 = t1022 * (pkin(3) + t1468);
t1568 = t1377 * t1539;
t1567 = t1379 * t1539;
t1023 = t1385 * t1091 + t1389 * t1092;
t1478 = t1386 * t1320 + t1390 * t1394;
t1479 = t1386 * t1502 - t1390 * t1478;
t1431 = -t1385 * qJDD(4) - t1389 * t1340;
t1277 = -qJD(5) * t1335 - t1431;
t1432 = t1389 * qJDD(4) - t1385 * t1340;
t1398 = qJD(5) * t1336 - t1432;
t1159 = -t1291 * qJD(6) + t1388 * t1277 - t1384 * t1398;
t1362 = qJD(5) + t1533;
t1352 = qJD(6) + t1362;
t1262 = t1352 * t1291;
t1565 = -t1262 + t1159;
t1322 = t1362 * t1335;
t1243 = t1277 + t1322;
t1241 = (-qJD(5) + t1362) * t1336 + t1432;
t1153 = t1241 * t1385 - t1243 * t1389;
t992 = -pkin(9) * t1153 - t1022;
t1563 = -t1153 * (pkin(3) + t1543) + t1386 * t992;
t1477 = t1384 * t1277 + t1388 * t1398;
t1120 = (qJD(6) - t1352) * t1293 + t1477;
t1562 = -t1379 * t1347 - t1377 * t1487;
t1463 = pkin(7) * t1344 - t1505;
t1561 = pkin(1) * t1326 + t1378 * t1463;
t1464 = pkin(7) * t1343 + t1507;
t1560 = pkin(1) * t1325 + t1378 * t1464;
t1559 = -t1377 * t1347 + t1379 * t1487;
t1558 = -pkin(1) * t1324 + t1380 * t1463;
t1557 = -pkin(1) * t1323 + t1380 * t1464;
t1289 = t1291 ^ 2;
t1290 = t1293 ^ 2;
t1555 = t1335 ^ 2;
t1332 = t1336 ^ 2;
t1351 = t1352 ^ 2;
t1360 = t1362 ^ 2;
t1553 = -pkin(8) - pkin(2);
t1061 = pkin(5) * t1564 - pkin(10) * t1243 - t1091;
t1314 = pkin(5) * t1362 - pkin(10) * t1336;
t1067 = -pkin(5) * t1555 - pkin(10) * t1398 - t1362 * t1314 + t1092;
t988 = -t1388 * t1061 + t1067 * t1384;
t989 = t1061 * t1384 + t1067 * t1388;
t947 = t1384 * t989 - t1388 * t988;
t1552 = pkin(5) * t947;
t1547 = pkin(3) * t1479;
t1498 = qJD(2) * t1554;
t1250 = t1393 + t1498;
t1248 = -t1382 + t1250;
t1546 = pkin(3) * t1248;
t1373 = t1386 ^ 2;
t1374 = t1390 ^ 2;
t1501 = t1373 + t1374;
t1342 = t1501 * qJDD(2);
t1545 = pkin(3) * t1342;
t1123 = t1262 + t1159;
t1056 = -t1120 * t1384 - t1123 * t1388;
t1542 = pkin(5) * t1056;
t1195 = t1268 * t1387 + t1269 * t1391;
t1541 = pkin(7) * t1195;
t1538 = t1385 * t947;
t1536 = t1389 * t947;
t1535 = t1153 * t1544 + t1390 * t992;
t1534 = qJD(2) * qJD(4);
t1177 = -qJDD(4) * pkin(4) - pkin(9) * t1556 + t1337 * t1532 - t1478;
t1098 = pkin(5) * t1398 - pkin(10) * t1555 + t1336 * t1314 + t1177;
t1530 = t1098 * t1384;
t1529 = t1098 * t1388;
t1199 = t1232 + t1329;
t1528 = t1199 * t1384;
t1527 = t1199 * t1388;
t1266 = t1301 + t1333;
t1526 = t1266 * t1385;
t1525 = t1266 * t1389;
t1524 = t1293 * t1352;
t1523 = t1342 * t1387;
t1522 = t1342 * t1391;
t1361 = t1390 * t1392 * t1386;
t1348 = qJDD(4) + t1361;
t1521 = t1348 * t1386;
t1520 = t1348 * t1390;
t1349 = qJDD(4) - t1361;
t1519 = t1349 * t1386;
t1518 = t1349 * t1390;
t1517 = t1352 * t1384;
t1516 = t1352 * t1388;
t1515 = t1362 * t1385;
t1514 = t1362 * t1389;
t1513 = t1373 * t1392;
t1512 = t1374 * t1392;
t1510 = t1378 * t1320;
t1166 = t1385 * t1177;
t1508 = t1386 * t1248;
t1167 = t1389 * t1177;
t1245 = t1390 * t1248;
t1503 = -pkin(4) * t1177 + pkin(9) * t1023;
t1496 = t1386 * t1232;
t1495 = t1390 * t1232;
t1494 = t1386 * t1301;
t1493 = t1390 * t1301;
t1296 = -t1332 - t1360;
t1212 = -t1296 * t1385 - t1525;
t1244 = (qJD(5) + t1362) * t1335 + t1431;
t1490 = pkin(4) * t1244 + pkin(9) * t1212 + t1166;
t1286 = -t1360 - t1555;
t1202 = t1286 * t1389 - t1573;
t1321 = t1336 * t1362;
t1240 = -t1321 - t1398;
t1489 = pkin(4) * t1240 + pkin(9) * t1202 - t1167;
t1488 = t1379 * t1500;
t948 = t1384 * t988 + t1388 * t989;
t915 = t1385 * t948 + t1536;
t939 = -pkin(5) * t1098 + pkin(10) * t948;
t897 = -pkin(9) * t915 - pkin(10) * t1536 - t1385 * t939;
t904 = -pkin(4) * t915 - t1552;
t1485 = -t1386 * t904 + t1390 * t897;
t1058 = -t1120 * t1388 + t1123 * t1384;
t1180 = -t1289 - t1290;
t930 = -pkin(5) * t1180 + pkin(10) * t1058 + t948;
t934 = -pkin(10) * t1056 - t947;
t981 = t1056 * t1389 + t1058 * t1385;
t901 = -pkin(9) * t981 - t1385 * t930 + t1389 * t934;
t963 = -pkin(4) * t981 - t1542;
t1484 = -t1386 * t963 + t1390 * t901;
t1210 = -t1351 - t1289;
t1112 = t1210 * t1388 - t1574;
t1119 = (qJD(6) + t1352) * t1293 + t1477;
t1001 = -pkin(5) * t1119 + pkin(10) * t1112 - t1529;
t1111 = t1210 * t1384 + t1572;
t1040 = -pkin(10) * t1111 + t1530;
t1047 = t1111 * t1389 + t1112 * t1385;
t944 = -pkin(9) * t1047 - t1001 * t1385 + t1040 * t1389;
t1427 = pkin(5) * t1111 - t988;
t961 = -pkin(4) * t1047 - t1427;
t1483 = -t1386 * t961 + t1390 * t944;
t1249 = -t1290 - t1351;
t1130 = -t1249 * t1384 - t1527;
t1005 = -pkin(5) * t1565 + pkin(10) * t1130 + t1530;
t1129 = t1249 * t1388 - t1528;
t1049 = -pkin(10) * t1129 + t1529;
t1064 = t1129 * t1389 + t1130 * t1385;
t958 = -pkin(9) * t1064 - t1005 * t1385 + t1049 * t1389;
t1402 = pkin(5) * t1129 - t989;
t962 = -pkin(4) * t1064 - t1402;
t1482 = -t1386 * t962 + t1390 * t958;
t1201 = t1286 * t1385 + t1571;
t1066 = -pkin(4) * t1201 + t1091;
t1099 = -pkin(9) * t1201 + t1166;
t1481 = -t1386 * t1066 + t1390 * t1099;
t1211 = t1296 * t1389 - t1526;
t1069 = -pkin(4) * t1211 + t1092;
t1103 = -pkin(9) * t1211 + t1167;
t1480 = -t1386 * t1069 + t1390 * t1103;
t983 = -t1056 * t1385 + t1058 * t1389;
t1476 = -pkin(4) * t1180 + pkin(9) * t983 + t1385 * t934 + t1389 * t930;
t1048 = -t1111 * t1385 + t1112 * t1389;
t1475 = -pkin(4) * t1119 + pkin(9) * t1048 + t1389 * t1001 + t1385 * t1040;
t1474 = t1387 * t1361;
t1473 = t1391 * t1361;
t1065 = -t1129 * t1385 + t1130 * t1389;
t1472 = -pkin(4) * t1565 + pkin(9) * t1065 + t1389 * t1005 + t1385 * t1049;
t1155 = t1241 * t1389 + t1243 * t1385;
t1264 = t1332 + t1555;
t1471 = pkin(4) * t1264 + pkin(9) * t1155 + t1023;
t995 = t1023 * t1386 - t1177 * t1390;
t1470 = -pkin(3) * t995 - t1503;
t1359 = -t1512 - t1556;
t1307 = t1359 * t1390 - t1521;
t1469 = -pkin(3) * t1307 - t1502;
t1338 = 0.2e1 * t1491 + t1499;
t1466 = pkin(3) * t1338 + t1245;
t1341 = t1367 - 0.2e1 * t1492;
t1465 = pkin(3) * t1341 - t1508;
t916 = t1389 * t948 - t1538;
t912 = -t1098 * t1390 + t1386 * t916;
t1462 = t1387 * t915 - t1391 * t912;
t971 = -t1180 * t1390 + t1386 * t983;
t1461 = t1387 * t981 - t1391 * t971;
t1225 = t1290 - t1289;
t1057 = -t1119 * t1384 + t1388 * t1565;
t1059 = -t1119 * t1388 - t1384 * t1565;
t984 = -t1057 * t1385 + t1059 * t1389;
t976 = -t1225 * t1390 + t1386 * t984;
t982 = t1057 * t1389 + t1059 * t1385;
t1460 = t1387 * t982 - t1391 * t976;
t1459 = t1022 * t1387 - t1391 * t995;
t1002 = t1048 * t1386 - t1119 * t1390;
t1457 = -t1002 * t1391 + t1047 * t1387;
t1010 = t1065 * t1386 - t1390 * t1565;
t1456 = -t1010 * t1391 + t1064 * t1387;
t1260 = -t1290 + t1351;
t1135 = t1260 * t1388 + t1574;
t1137 = -t1260 * t1384 + t1572;
t1073 = -t1135 * t1385 + t1137 * t1389;
t1014 = t1073 * t1386 - t1123 * t1390;
t1071 = t1135 * t1389 + t1137 * t1385;
t1455 = -t1014 * t1391 + t1071 * t1387;
t1259 = t1289 - t1351;
t1136 = t1259 * t1384 + t1527;
t1138 = t1259 * t1388 - t1528;
t1074 = -t1136 * t1385 + t1138 * t1389;
t1015 = t1074 * t1386 + t1120 * t1390;
t1072 = t1136 * t1389 + t1138 * t1385;
t1454 = -t1015 * t1391 + t1072 * t1387;
t1158 = -qJD(6) * t1293 - t1477;
t1113 = t1158 * t1388 + t1291 * t1517;
t1114 = -t1158 * t1384 + t1291 * t1516;
t1053 = -t1113 * t1385 + t1114 * t1389;
t1026 = t1053 * t1386 + t1495;
t1051 = t1113 * t1389 + t1114 * t1385;
t1453 = -t1026 * t1391 + t1051 * t1387;
t1115 = t1159 * t1384 + t1293 * t1516;
t1116 = t1159 * t1388 - t1293 * t1517;
t1054 = -t1115 * t1385 + t1116 * t1389;
t1027 = t1054 * t1386 - t1495;
t1052 = t1115 * t1389 + t1116 * t1385;
t1452 = -t1027 * t1391 + t1052 * t1387;
t1190 = (-t1291 * t1384 - t1293 * t1388) * t1352;
t1191 = (-t1291 * t1388 + t1293 * t1384) * t1352;
t1101 = -t1190 * t1385 + t1191 * t1389;
t1085 = t1101 * t1386 - t1329 * t1390;
t1100 = t1190 * t1389 + t1191 * t1385;
t1451 = -t1085 * t1391 + t1100 * t1387;
t1105 = t1155 * t1386 + t1264 * t1390;
t1450 = -t1105 * t1391 + t1153 * t1387;
t1449 = t1248 * t1387 + t1391 * t1479;
t1242 = t1277 - t1322;
t1154 = t1240 * t1389 - t1242 * t1385;
t1300 = t1332 - t1555;
t1125 = t1154 * t1386 - t1300 * t1390;
t1152 = t1240 * t1385 + t1242 * t1389;
t1448 = -t1125 * t1391 + t1152 * t1387;
t1127 = t1202 * t1386 + t1240 * t1390;
t1447 = -t1127 * t1391 + t1201 * t1387;
t1131 = t1212 * t1386 + t1244 * t1390;
t1446 = -t1131 * t1391 + t1211 * t1387;
t1319 = -t1332 + t1360;
t1223 = -t1319 * t1385 + t1571;
t1139 = t1223 * t1386 - t1243 * t1390;
t1221 = t1319 * t1389 + t1573;
t1445 = -t1139 * t1391 + t1221 * t1387;
t1318 = -t1360 + t1555;
t1224 = t1318 * t1389 - t1526;
t1239 = -t1321 + t1398;
t1140 = t1224 * t1386 + t1239 * t1390;
t1222 = t1318 * t1385 + t1525;
t1444 = -t1140 * t1391 + t1222 * t1387;
t1234 = t1335 * t1514 + t1385 * t1398;
t1183 = t1234 * t1386 + t1493;
t1233 = -t1335 * t1515 + t1389 * t1398;
t1443 = -t1183 * t1391 - t1233 * t1387;
t1236 = t1277 * t1389 - t1336 * t1515;
t1184 = t1236 * t1386 - t1493;
t1235 = t1277 * t1385 + t1336 * t1514;
t1442 = -t1184 * t1391 + t1235 * t1387;
t1108 = -t1386 * t1478 - t1390 * t1502;
t1254 = (-t1335 * t1389 + t1336 * t1385) * t1362;
t1226 = t1254 * t1386 - t1333 * t1390;
t1253 = (-t1335 * t1385 - t1336 * t1389) * t1362;
t1441 = -t1226 * t1391 + t1253 * t1387;
t1170 = t1250 * t1391 + t1252 * t1387;
t1440 = t1250 * t1387 - t1252 * t1391;
t1194 = t1268 * t1391 - t1269 * t1387;
t1294 = -t1338 * t1386 + t1341 * t1390;
t1346 = (-t1373 + t1374) * t1392;
t1439 = -t1294 * t1391 + t1346 * t1387;
t1357 = -t1513 - t1556;
t1305 = t1357 * t1386 + t1518;
t1438 = -t1305 * t1391 + t1338 * t1387;
t1437 = -t1307 * t1391 + t1341 * t1387;
t1345 = t1501 * t1392;
t1434 = -t1345 * t1387 + t1522;
t1334 = t1501 * t1534;
t1433 = qJDD(4) * t1387 + t1334 * t1391;
t1430 = -pkin(3) * t1127 - t1489;
t1429 = -pkin(3) * t1131 - t1490;
t1428 = -pkin(3) * t1305 - t1478;
t1425 = -pkin(3) * t971 - t1476;
t1424 = -pkin(4) * t1098 + pkin(9) * t916 - pkin(10) * t1538 + t1389 * t939;
t1423 = -pkin(3) * t1002 - t1475;
t1356 = t1513 - t1556;
t1304 = t1356 * t1386 + t1520;
t1422 = -t1304 * t1391 - t1387 * t1499;
t1358 = -t1512 + t1556;
t1306 = t1358 * t1390 + t1519;
t1421 = -t1306 * t1391 + t1367 * t1387;
t1420 = -pkin(3) * t1010 - t1472;
t1419 = -pkin(3) * t1105 - t1471;
t1418 = pkin(3) * t915 - t1386 * t897 - t1390 * t904;
t1417 = pkin(3) * t981 - t1386 * t901 - t1390 * t963;
t913 = t1098 * t1386 + t1390 * t916;
t879 = t1553 * t913 + t1418;
t1396 = -pkin(3) * t912 - t1424;
t884 = -qJ(3) * t913 - t1396;
t895 = t1387 * t912 + t1391 * t915;
t1416 = pkin(7) * t895 + t1387 * t884 + t1391 * t879;
t972 = t1180 * t1386 + t1390 * t983;
t892 = t1553 * t972 + t1417;
t894 = -qJ(3) * t972 - t1425;
t937 = t1387 * t971 + t1391 * t981;
t1415 = pkin(7) * t937 + t1387 * t894 + t1391 * t892;
t1003 = t1048 * t1390 + t1119 * t1386;
t1411 = pkin(3) * t1047 - t1386 * t944 - t1390 * t961;
t903 = t1003 * t1553 + t1411;
t917 = -qJ(3) * t1003 - t1423;
t968 = t1002 * t1387 + t1047 * t1391;
t1414 = pkin(7) * t968 + t1387 * t917 + t1391 * t903;
t1011 = t1065 * t1390 + t1386 * t1565;
t1410 = pkin(3) * t1064 - t1386 * t958 - t1390 * t962;
t906 = t1011 * t1553 + t1410;
t921 = -qJ(3) * t1011 - t1420;
t973 = t1010 * t1387 + t1064 * t1391;
t1413 = pkin(7) * t973 + t1387 * t921 + t1391 * t906;
t996 = t1023 * t1390 + t1177 * t1386;
t919 = t1553 * t996 + t1569;
t931 = -qJ(3) * t996 - t1470;
t964 = t1022 * t1391 + t1387 * t995;
t1412 = pkin(7) * t964 + t1387 * t931 + t1391 * t919;
t1062 = t1105 * t1387 + t1153 * t1391;
t1106 = t1155 * t1390 - t1264 * t1386;
t960 = t1106 * t1553 - t1563;
t965 = -qJ(3) * t1106 - t1419;
t1409 = pkin(7) * t1062 + t1387 * t965 + t1391 * t960;
t1080 = t1127 * t1387 + t1201 * t1391;
t1128 = t1202 * t1390 - t1240 * t1386;
t1404 = pkin(3) * t1201 - t1390 * t1066 - t1386 * t1099;
t967 = t1128 * t1553 + t1404;
t990 = -qJ(3) * t1128 - t1430;
t1408 = pkin(7) * t1080 + t1387 * t990 + t1391 * t967;
t1082 = t1131 * t1387 + t1211 * t1391;
t1132 = t1212 * t1390 - t1244 * t1386;
t1403 = pkin(3) * t1211 - t1390 * t1069 - t1386 * t1103;
t970 = t1132 * t1553 + t1403;
t993 = -qJ(3) * t1132 - t1429;
t1407 = pkin(7) * t1082 + t1387 * t993 + t1391 * t970;
t1315 = t1339 * t1390 + t1373 * t1534;
t1406 = -t1315 * t1391 - t1474;
t1316 = t1340 * t1386 + t1374 * t1534;
t1405 = -t1316 * t1391 + t1474;
t1034 = t1108 * t1553 + t1546;
t1050 = -qJ(3) * t1108 - t1547;
t1081 = t1248 * t1391 - t1387 * t1479;
t1401 = pkin(7) * t1081 + t1034 * t1391 + t1050 * t1387;
t1309 = t1357 * t1390 - t1519;
t1143 = -qJ(3) * t1309 - t1428;
t1149 = t1309 * t1553 + t1466;
t1257 = t1305 * t1387 + t1338 * t1391;
t1400 = pkin(7) * t1257 + t1143 * t1387 + t1149 * t1391;
t1312 = -t1359 * t1386 - t1520;
t1144 = -qJ(3) * t1312 - t1469;
t1148 = t1312 * t1553 + t1465;
t1258 = t1307 * t1387 + t1341 * t1391;
t1399 = pkin(7) * t1258 + t1144 * t1387 + t1148 * t1391;
t1104 = pkin(3) * t1345 + t1108;
t1297 = -t1345 * t1391 - t1523;
t1397 = -pkin(3) * t1523 + pkin(7) * t1297 - t1104 * t1391;
t1395 = pkin(7) * t1170 + (pkin(2) * t1391 + qJ(3) * t1387) * t1320;
t1353 = t1377 * t1500;
t1317 = qJDD(4) * t1391 - t1334 * t1387;
t1311 = -t1358 * t1386 + t1518;
t1310 = (t1340 - t1492) * t1390;
t1308 = t1356 * t1390 - t1521;
t1303 = (-t1339 + t1491) * t1386;
t1302 = t1380 * t1320;
t1299 = t1433 * t1380;
t1298 = t1433 * t1378;
t1295 = -t1338 * t1390 - t1341 * t1386;
t1288 = t1434 * t1380;
t1287 = t1434 * t1378;
t1276 = t1315 * t1387 - t1473;
t1275 = t1316 * t1387 + t1473;
t1274 = t1306 * t1387 + t1367 * t1391;
t1273 = t1304 * t1387 - t1391 * t1499;
t1256 = -0.2e1 * t1376 + t1426;
t1255 = t1269 + t1498 + 0.2e1 * t1531;
t1251 = t1294 * t1387 + t1346 * t1391;
t1227 = t1254 * t1390 + t1333 * t1386;
t1220 = -t1378 * t1303 + t1380 * t1406;
t1219 = -t1378 * t1310 + t1380 * t1405;
t1218 = t1380 * t1303 + t1378 * t1406;
t1217 = t1380 * t1310 + t1378 * t1405;
t1216 = -t1378 * t1311 + t1380 * t1421;
t1215 = -t1378 * t1308 + t1380 * t1422;
t1214 = t1380 * t1311 + t1378 * t1421;
t1213 = t1380 * t1308 + t1378 * t1422;
t1208 = -t1378 * t1312 + t1380 * t1437;
t1207 = -t1378 * t1309 + t1380 * t1438;
t1206 = t1380 * t1312 + t1378 * t1437;
t1205 = t1380 * t1309 + t1378 * t1438;
t1193 = -t1378 * t1295 + t1380 * t1439;
t1192 = t1380 * t1295 + t1378 * t1439;
t1189 = t1195 * t1380;
t1188 = t1195 * t1378;
t1186 = t1236 * t1390 + t1494;
t1185 = t1234 * t1390 - t1494;
t1179 = -pkin(2) * t1252 + qJ(3) * t1250;
t1174 = t1378 * t1268 - t1558;
t1173 = t1378 * t1269 - t1557;
t1172 = -t1380 * t1268 - t1561;
t1171 = -t1380 * t1269 - t1560;
t1165 = -t1378 * t1256 + t1558;
t1164 = t1380 * t1256 + t1561;
t1163 = t1170 * t1380;
t1162 = t1170 * t1378;
t1161 = -t1378 * t1255 + t1557;
t1160 = t1380 * t1255 + t1560;
t1157 = -t1194 * t1380 + t1510;
t1156 = -t1194 * t1378 - t1302;
t1150 = t1226 * t1387 + t1253 * t1391;
t1147 = qJ(3) * t1341 + t1307 * t1553 + t1245;
t1146 = qJ(3) * t1338 + t1305 * t1553 + t1508;
t1142 = t1224 * t1390 - t1239 * t1386;
t1141 = t1223 * t1390 + t1243 * t1386;
t1134 = t1380 * t1440 + t1510;
t1133 = t1378 * t1440 - t1302;
t1126 = t1154 * t1390 + t1300 * t1386;
t1110 = t1184 * t1387 + t1235 * t1391;
t1109 = t1183 * t1387 - t1233 * t1391;
t1095 = -t1378 * t1227 + t1380 * t1441;
t1094 = t1380 * t1227 + t1378 * t1441;
t1093 = -qJ(3) * t1345 - t1342 * t1553 + t1479;
t1088 = t1140 * t1387 + t1222 * t1391;
t1087 = t1139 * t1387 + t1221 * t1391;
t1086 = t1101 * t1390 + t1329 * t1386;
t1084 = pkin(1) * t1157 + t1378 * t1541;
t1083 = -pkin(1) * t1156 + t1380 * t1541;
t1079 = (-t1156 * t1378 - t1157 * t1380) * pkin(7);
t1078 = -t1378 * t1186 + t1380 * t1442;
t1077 = -t1378 * t1185 + t1380 * t1443;
t1076 = t1380 * t1186 + t1378 * t1442;
t1075 = t1380 * t1185 + t1378 * t1443;
t1070 = -pkin(3) * t1522 + t1387 * t1104 + (-t1287 * t1378 - t1288 * t1380) * pkin(7);
t1068 = t1125 * t1387 + t1152 * t1391;
t1055 = (-pkin(2) * t1387 + qJ(3) * t1391) * t1320 + (-t1133 * t1378 - t1134 * t1380) * pkin(7);
t1044 = -t1378 * t1142 + t1380 * t1444;
t1043 = -t1378 * t1141 + t1380 * t1445;
t1042 = t1380 * t1142 + t1378 * t1444;
t1041 = t1380 * t1141 + t1378 * t1445;
t1038 = -t1378 * t1132 + t1380 * t1446;
t1037 = t1380 * t1132 + t1378 * t1446;
t1036 = -t1378 * t1128 + t1380 * t1447;
t1035 = t1380 * t1128 + t1378 * t1447;
t1033 = qJ(3) * t1248 - t1479 * t1553;
t1032 = -t1378 * t1108 + t1380 * t1449;
t1031 = t1380 * t1108 + t1378 * t1449;
t1030 = t1085 * t1387 + t1100 * t1391;
t1029 = t1054 * t1390 + t1496;
t1028 = t1053 * t1390 - t1496;
t1025 = -pkin(1) * t1133 - t1378 * t1179 + t1380 * t1395;
t1024 = pkin(1) * t1134 + t1380 * t1179 + t1378 * t1395;
t1020 = t1022 * t1544;
t1019 = t1391 * t1144 - t1387 * t1148 + (-t1206 * t1378 - t1208 * t1380) * pkin(7);
t1018 = t1391 * t1143 - t1387 * t1149 + (-t1205 * t1378 - t1207 * t1380) * pkin(7);
t1017 = t1074 * t1390 - t1120 * t1386;
t1016 = t1073 * t1390 + t1123 * t1386;
t1013 = -t1378 * t1126 + t1380 * t1448;
t1012 = t1380 * t1126 + t1378 * t1448;
t1009 = -t1378 * t1106 + t1380 * t1450;
t1008 = t1380 * t1106 + t1378 * t1450;
t1007 = -pkin(1) * t1287 - t1378 * t1093 + t1380 * t1397;
t1006 = pkin(1) * t1288 + t1380 * t1093 + t1378 * t1397;
t1000 = -pkin(1) * t1206 - t1378 * t1147 + t1380 * t1399;
t999 = -pkin(1) * t1205 - t1378 * t1146 + t1380 * t1400;
t998 = pkin(1) * t1208 + t1380 * t1147 + t1378 * t1399;
t997 = pkin(1) * t1207 + t1380 * t1146 + t1378 * t1400;
t986 = -t1378 * t1086 + t1380 * t1451;
t985 = t1380 * t1086 + t1378 * t1451;
t979 = t1015 * t1387 + t1072 * t1391;
t978 = t1014 * t1387 + t1071 * t1391;
t977 = t1225 * t1386 + t1390 * t984;
t975 = t1027 * t1387 + t1052 * t1391;
t974 = t1026 * t1387 + t1051 * t1391;
t969 = qJ(3) * t1211 + t1131 * t1553 + t1480;
t966 = qJ(3) * t1201 + t1127 * t1553 + t1481;
t959 = qJ(3) * t1153 + t1105 * t1553 + t1535;
t956 = -t1378 * t1017 + t1380 * t1454;
t955 = -t1378 * t1016 + t1380 * t1455;
t954 = t1380 * t1017 + t1378 * t1454;
t953 = t1380 * t1016 + t1378 * t1455;
t952 = -t1378 * t1029 + t1380 * t1452;
t951 = -t1378 * t1028 + t1380 * t1453;
t950 = t1380 * t1029 + t1378 * t1452;
t949 = t1380 * t1028 + t1378 * t1453;
t946 = -t1378 * t1011 + t1380 * t1456;
t945 = t1380 * t1011 + t1378 * t1456;
t942 = -t1378 * t1003 + t1380 * t1457;
t941 = t1380 * t1003 + t1378 * t1457;
t940 = t1387 * t976 + t1391 * t982;
t936 = -t1378 * t996 + t1380 * t1459;
t935 = t1378 * t1459 + t1380 * t996;
t932 = -t1387 * t1034 + t1391 * t1050 + (-t1031 * t1378 - t1032 * t1380) * pkin(7);
t928 = -pkin(1) * t1031 - t1378 * t1033 + t1380 * t1401;
t927 = pkin(1) * t1032 + t1380 * t1033 + t1378 * t1401;
t926 = -t1378 * t977 + t1380 * t1460;
t925 = t1378 * t1460 + t1380 * t977;
t924 = -t1387 * t970 + t1391 * t993 + (-t1037 * t1378 - t1038 * t1380) * pkin(7);
t923 = -t1378 * t972 + t1380 * t1461;
t922 = t1378 * t1461 + t1380 * t972;
t920 = -t1387 * t967 + t1391 * t990 + (-t1035 * t1378 - t1036 * t1380) * pkin(7);
t918 = t1020 + t1553 * t995 + (qJ(3) - t1540) * t1022;
t911 = -pkin(1) * t1037 - t1378 * t969 + t1380 * t1407;
t910 = pkin(1) * t1038 + t1378 * t1407 + t1380 * t969;
t909 = -pkin(1) * t1035 - t1378 * t966 + t1380 * t1408;
t908 = pkin(1) * t1036 + t1378 * t1408 + t1380 * t966;
t907 = -t1387 * t960 + t1391 * t965 + (-t1008 * t1378 - t1009 * t1380) * pkin(7);
t905 = qJ(3) * t1064 + t1010 * t1553 + t1482;
t902 = qJ(3) * t1047 + t1002 * t1553 + t1483;
t899 = -pkin(1) * t1008 - t1378 * t959 + t1380 * t1409;
t898 = pkin(1) * t1009 + t1378 * t1409 + t1380 * t959;
t893 = -t1387 * t919 + t1391 * t931 + (-t1378 * t935 - t1380 * t936) * pkin(7);
t891 = qJ(3) * t981 + t1553 * t971 + t1484;
t890 = -t1378 * t913 + t1380 * t1462;
t889 = t1378 * t1462 + t1380 * t913;
t888 = -t1387 * t906 + t1391 * t921 + (-t1378 * t945 - t1380 * t946) * pkin(7);
t887 = -pkin(1) * t935 - t1378 * t918 + t1380 * t1412;
t886 = pkin(1) * t936 + t1378 * t1412 + t1380 * t918;
t885 = -t1387 * t903 + t1391 * t917 + (-t1378 * t941 - t1380 * t942) * pkin(7);
t883 = -pkin(1) * t945 - t1378 * t905 + t1380 * t1413;
t882 = pkin(1) * t946 + t1378 * t1413 + t1380 * t905;
t881 = -pkin(1) * t941 - t1378 * t902 + t1380 * t1414;
t880 = pkin(1) * t942 + t1378 * t1414 + t1380 * t902;
t878 = qJ(3) * t915 + t1553 * t912 + t1485;
t877 = -t1387 * t892 + t1391 * t894 + (-t1378 * t922 - t1380 * t923) * pkin(7);
t876 = -pkin(1) * t922 - t1378 * t891 + t1380 * t1415;
t875 = pkin(1) * t923 + t1378 * t1415 + t1380 * t891;
t874 = -t1387 * t879 + t1391 * t884 + (-t1378 * t889 - t1380 * t890) * pkin(7);
t873 = -pkin(1) * t889 - t1378 * t878 + t1380 * t1416;
t872 = pkin(1) * t890 + t1378 * t1416 + t1380 * t878;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1568, -t1567, -t1559, -qJ(1) * t1559, 0, 0, -t1283, 0, t1285, t1353, -t1174 * t1377 - t1581, -t1173 * t1377 - t1579, -t1189 * t1377 + t1194 * t1379, t1379 * t1079 - t1377 * t1083 - qJ(1) * (t1157 * t1379 + t1195 * t1377), t1353, t1283, -t1285, 0, 0, 0, -t1163 * t1377 - t1379 * t1440, -t1165 * t1377 + t1581, -t1161 * t1377 + t1579, t1379 * t1055 - t1377 * t1025 - qJ(1) * (t1134 * t1379 + t1170 * t1377), -t1219 * t1377 + t1275 * t1379, -t1193 * t1377 + t1251 * t1379, -t1216 * t1377 + t1274 * t1379, -t1220 * t1377 + t1276 * t1379, -t1215 * t1377 + t1273 * t1379, -t1299 * t1377 + t1317 * t1379, t1379 * t1018 - t1377 * t999 - qJ(1) * (t1207 * t1379 + t1257 * t1377), t1379 * t1019 - t1377 * t1000 - qJ(1) * (t1208 * t1379 + t1258 * t1377), t1379 * t1070 - t1377 * t1007 - qJ(1) * (t1288 * t1379 + t1297 * t1377), t1379 * t932 - t1377 * t928 - qJ(1) * (t1032 * t1379 + t1081 * t1377), -t1078 * t1377 + t1110 * t1379, -t1013 * t1377 + t1068 * t1379, -t1043 * t1377 + t1087 * t1379, -t1077 * t1377 + t1109 * t1379, -t1044 * t1377 + t1088 * t1379, -t1095 * t1377 + t1150 * t1379, t1379 * t920 - t1377 * t909 - qJ(1) * (t1036 * t1379 + t1080 * t1377), t1379 * t924 - t1377 * t911 - qJ(1) * (t1038 * t1379 + t1082 * t1377), t1379 * t907 - t1377 * t899 - qJ(1) * (t1009 * t1379 + t1062 * t1377), t1379 * t893 - t1377 * t887 - qJ(1) * (t1377 * t964 + t1379 * t936), -t1377 * t952 + t1379 * t975, -t1377 * t926 + t1379 * t940, -t1377 * t955 + t1379 * t978, -t1377 * t951 + t1379 * t974, -t1377 * t956 + t1379 * t979, t1030 * t1379 - t1377 * t986, t1379 * t885 - t1377 * t881 - qJ(1) * (t1377 * t968 + t1379 * t942), t1379 * t888 - t1377 * t883 - qJ(1) * (t1377 * t973 + t1379 * t946), t1379 * t877 - t1377 * t876 - qJ(1) * (t1377 * t937 + t1379 * t923), t1379 * t874 - t1377 * t873 - qJ(1) * (t1377 * t895 + t1379 * t890); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1567, -t1568, t1562, qJ(1) * t1562, 0, 0, t1278, 0, -t1280, -t1488, t1174 * t1379 - t1582, t1173 * t1379 - t1580, t1189 * t1379 + t1194 * t1377, t1377 * t1079 + t1379 * t1083 + qJ(1) * (-t1157 * t1377 + t1195 * t1379), -t1488, -t1278, t1280, 0, 0, 0, t1163 * t1379 - t1377 * t1440, t1165 * t1379 + t1582, t1161 * t1379 + t1580, t1377 * t1055 + t1379 * t1025 + qJ(1) * (-t1134 * t1377 + t1170 * t1379), t1219 * t1379 + t1275 * t1377, t1193 * t1379 + t1251 * t1377, t1216 * t1379 + t1274 * t1377, t1220 * t1379 + t1276 * t1377, t1215 * t1379 + t1273 * t1377, t1299 * t1379 + t1317 * t1377, t1377 * t1018 + t1379 * t999 + qJ(1) * (-t1207 * t1377 + t1257 * t1379), t1377 * t1019 + t1379 * t1000 + qJ(1) * (-t1208 * t1377 + t1258 * t1379), t1377 * t1070 + t1379 * t1007 + qJ(1) * (-t1288 * t1377 + t1297 * t1379), t1377 * t932 + t1379 * t928 + qJ(1) * (-t1032 * t1377 + t1081 * t1379), t1078 * t1379 + t1110 * t1377, t1013 * t1379 + t1068 * t1377, t1043 * t1379 + t1087 * t1377, t1077 * t1379 + t1109 * t1377, t1044 * t1379 + t1088 * t1377, t1095 * t1379 + t1150 * t1377, t1377 * t920 + t1379 * t909 + qJ(1) * (-t1036 * t1377 + t1080 * t1379), t1377 * t924 + t1379 * t911 + qJ(1) * (-t1038 * t1377 + t1082 * t1379), t1377 * t907 + t1379 * t899 + qJ(1) * (-t1009 * t1377 + t1062 * t1379), t1377 * t893 + t1379 * t887 + qJ(1) * (-t1377 * t936 + t1379 * t964), t1377 * t975 + t1379 * t952, t1377 * t940 + t1379 * t926, t1377 * t978 + t1379 * t955, t1377 * t974 + t1379 * t951, t1377 * t979 + t1379 * t956, t1030 * t1377 + t1379 * t986, t1377 * t885 + t1379 * t881 + qJ(1) * (-t1377 * t942 + t1379 * t968), t1377 * t888 + t1379 * t883 + qJ(1) * (-t1377 * t946 + t1379 * t973), t1377 * t877 + t1379 * t876 + qJ(1) * (-t1377 * t923 + t1379 * t937), t1377 * t874 + t1379 * t873 + qJ(1) * (-t1377 * t890 + t1379 * t895); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1487, t1347, 0, 0, 0, 0, t1323, 0, -t1324, t1366, t1172, t1171, t1188, t1084, t1366, -t1323, t1324, 0, 0, 0, t1162, t1164, t1160, t1024, t1217, t1192, t1214, t1218, t1213, t1298, t997, t998, t1006, t927, t1076, t1012, t1041, t1075, t1042, t1094, t908, t910, t898, t886, t950, t925, t953, t949, t954, t985, t880, t882, t875, t872; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1539, -t1487, 0, 0, 0, t1343, 0, -t1344, 0, t1228, t1231, t1194, t1079, 0, -t1343, t1344, 0, 0, 0, -t1440, -t1228, -t1231, t1055, t1275, t1251, t1274, t1276, t1273, t1317, t1018, t1019, t1070, t932, t1110, t1068, t1087, t1109, t1088, t1150, t920, t924, t907, t893, t975, t940, t978, t974, t979, t1030, t885, t888, t877, t874; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1539, 0, -t1347, 0, 0, 0, t1325, 0, -t1326, -t1500, t1174, t1173, t1189, t1083, -t1500, -t1325, t1326, 0, 0, 0, t1163, t1165, t1161, t1025, t1219, t1193, t1216, t1220, t1215, t1299, t999, t1000, t1007, t928, t1078, t1013, t1043, t1077, t1044, t1095, t909, t911, t899, t887, t952, t926, t955, t951, t956, t986, t881, t883, t876, t873; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1487, t1347, 0, 0, 0, 0, t1323, 0, -t1324, t1366, t1172, t1171, t1188, t1084, t1366, -t1323, t1324, 0, 0, 0, t1162, t1164, t1160, t1024, t1217, t1192, t1214, t1218, t1213, t1298, t997, t998, t1006, t927, t1076, t1012, t1041, t1075, t1042, t1094, t908, t910, t898, t886, t950, t925, t953, t949, t954, t985, t880, t882, t875, t872; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1392, 0, 0, -t1320, t1268, 0, 0, -qJDD(2), t1392, 0, 0, 0, t1252, 0, t1320, qJ(3) * t1320, t1361, t1346, t1367, -t1361, -t1499, qJDD(4), t1143, t1144, -t1545, t1050, t1235, t1152, t1221, -t1233, t1222, t1253, t990, t993, t965, t931, t1052, t982, t1071, t1051, t1072, t1100, t917, t921, t894, t884; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1392, 0, qJDD(2), 0, t1320, 0, t1269, 0, 0, -t1392, -qJDD(2), 0, 0, 0, t1250, -t1320, 0, pkin(2) * t1320, -t1316, -t1294, -t1306, -t1315, -t1304, t1334, t1149, t1148, -t1104, t1034, -t1184, -t1125, -t1139, -t1183, -t1140, -t1226, t967, t970, t960, t919, -t1027, -t976, -t1014, -t1026, -t1015, -t1085, t903, t906, t892, t879; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1268, -t1269, 0, 0, qJDD(2), 0, 0, 0, 0, 0, 0, t1256, t1255, t1179, t1310, t1295, t1311, t1303, t1308, 0, t1146, t1147, t1093, t1033, t1186, t1126, t1141, t1185, t1142, t1227, t966, t969, t959, t918, t1029, t977, t1016, t1028, t1017, t1086, t902, t905, t891, t878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, 0, 0, 0, 0, 0, t1252, t1250, 0, t1310, t1295, t1311, t1303, t1308, 0, -pkin(8) * t1305 + t1508, -pkin(8) * t1307 + t1245, pkin(8) * t1342 + t1479, pkin(8) * t1479, t1186, t1126, t1141, t1185, t1142, t1227, -pkin(8) * t1127 + t1481, -pkin(8) * t1131 + t1480, -pkin(8) * t1105 + t1535, -pkin(8) * t995 - t1022 * t1540 + t1020, t1029, t977, t1016, t1028, t1017, t1086, -pkin(8) * t1002 + t1483, -pkin(8) * t1010 + t1482, -pkin(8) * t971 + t1484, -pkin(8) * t912 + t1485; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1392, 0, 0, 0, -t1252, 0, -t1320, 0, -t1361, -t1346, -t1367, t1361, t1499, -qJDD(4), t1428, t1469, t1545, t1547, -t1235, -t1152, -t1221, t1233, -t1222, -t1253, t1430, t1429, t1419, t1470, -t1052, -t982, -t1071, -t1051, -t1072, -t1100, t1423, t1420, t1425, t1396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1392, qJDD(2), 0, 0, 0, -t1250, t1320, 0, 0, t1316, t1294, t1306, t1315, t1304, -t1334, pkin(8) * t1309 - t1466, pkin(8) * t1312 - t1465, t1104, pkin(8) * t1108 - t1546, t1184, t1125, t1139, t1183, t1140, t1226, pkin(8) * t1128 - t1404, pkin(8) * t1132 - t1403, pkin(8) * t1106 + t1563, pkin(8) * t996 - t1569, t1027, t976, t1014, t1026, t1015, t1085, pkin(8) * t1003 - t1411, pkin(8) * t1011 - t1410, pkin(8) * t972 - t1417, pkin(8) * t913 - t1418; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1340, -t1338, t1349, t1492, t1356, -t1492, 0, t1248, -t1478, 0, t1236, t1154, t1223, t1234, t1224, t1254, t1099, t1103, t992, -pkin(9) * t1022, t1054, t984, t1073, t1053, t1074, t1101, t944, t958, t901, t897; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1491, t1341, t1358, t1339, t1348, -t1491, -t1248, 0, -t1502, 0, -t1301, -t1300, -t1243, t1301, t1239, -t1333, t1066, t1069, -pkin(4) * t1153, -pkin(4) * t1022, -t1232, -t1225, -t1123, t1232, t1120, -t1329, t961, t962, t963, t904; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1361, t1346, t1367, -t1361, -t1499, qJDD(4), t1478, t1502, 0, 0, t1235, t1152, t1221, -t1233, t1222, t1253, t1489, t1490, t1471, t1503, t1052, t982, t1071, t1051, t1072, t1100, t1475, t1472, t1476, t1424; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1277, t1240, t1564, t1322, t1318, -t1322, 0, t1177, t1091, 0, t1116, t1059, t1137, t1114, t1138, t1191, t1040, t1049, t934, -pkin(10) * t947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1321, t1242, t1319, -t1398, t1266, -t1321, -t1177, 0, t1092, 0, t1115, t1057, t1135, t1113, t1136, t1190, t1001, t1005, t930, t939; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1301, t1300, t1243, -t1301, -t1239, t1333, -t1091, -t1092, 0, 0, t1232, t1225, t1123, -t1232, -t1120, t1329, t1427, t1402, t1542, t1552; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1159, -t1119, t1566, t1262, t1259, -t1262, 0, t1098, t988, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1524, t1565, t1260, t1158, t1199, -t1524, -t1098, 0, t989, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1232, t1225, t1123, -t1232, -t1120, t1329, -t988, -t989, 0, 0;];
m_new_reg  = t1;

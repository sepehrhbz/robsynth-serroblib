% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPRRPR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta5]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 23:03
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPRRPR7_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR7_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR7_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRPR7_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPR7_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPR7_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 23:02:26
% EndTime: 2019-05-05 23:02:54
% DurationCPUTime: 29.76s
% Computational Cost: add. (259177->878), mult. (565015->1129), div. (0->0), fcn. (405799->10), ass. (0->578)
t1440 = sin(pkin(10));
t1443 = sin(qJ(4));
t1447 = cos(qJ(4));
t1448 = cos(qJ(3));
t1597 = qJD(1) * t1448;
t1444 = sin(qJ(3));
t1598 = qJD(1) * t1444;
t1393 = -t1443 * t1597 - t1447 * t1598;
t1394 = -t1443 * t1598 + t1447 * t1597;
t1441 = cos(pkin(10));
t1346 = -t1441 * t1393 + t1394 * t1440;
t1348 = t1440 * t1393 + t1441 * t1394;
t1294 = t1348 * t1346;
t1435 = qJDD(3) + qJDD(4);
t1608 = -t1294 + t1435;
t1615 = t1440 * t1608;
t1614 = t1441 * t1608;
t1442 = sin(qJ(6));
t1541 = qJD(3) * t1597;
t1553 = t1444 * qJDD(1);
t1403 = -t1541 - t1553;
t1431 = t1448 * qJDD(1);
t1542 = qJD(3) * t1598;
t1404 = t1431 - t1542;
t1329 = t1393 * qJD(4) + t1443 * t1403 + t1447 * t1404;
t1518 = -t1447 * t1403 + t1443 * t1404;
t1481 = qJD(4) * t1394 + t1518;
t1521 = t1329 * t1440 + t1441 * t1481;
t1265 = qJDD(6) + t1521;
t1436 = qJD(3) + qJD(4);
t1446 = cos(qJ(6));
t1326 = t1348 * t1442 - t1446 * t1436;
t1328 = t1348 * t1446 + t1436 * t1442;
t1270 = t1328 * t1326;
t1609 = t1265 - t1270;
t1613 = t1442 * t1609;
t1355 = t1393 * t1394;
t1607 = t1355 + t1435;
t1612 = t1443 * t1607;
t1611 = t1446 * t1609;
t1610 = t1447 * t1607;
t1570 = t1436 * t1348;
t1230 = t1521 + t1570;
t1438 = t1444 ^ 2;
t1451 = qJD(1) ^ 2;
t1605 = pkin(7) + pkin(1);
t1498 = (pkin(8) * t1438 + t1605) * t1451;
t1595 = qJD(5) * t1346;
t1337 = -0.2e1 * t1595;
t1445 = sin(qJ(1));
t1449 = cos(qJ(1));
t1413 = t1445 * g(1) - t1449 * g(2);
t1505 = qJDD(2) - t1413;
t1477 = -t1451 * qJ(2) + t1505;
t1456 = -qJDD(1) * t1605 + t1477;
t1455 = t1448 * t1456;
t1559 = t1448 * t1451;
t1599 = qJD(1) * qJD(3);
t1318 = t1455 - t1404 * pkin(8) + qJDD(3) * pkin(3) + (-pkin(3) * t1559 - pkin(8) * t1599 + g(3)) * t1444;
t1359 = t1448 * g(3) - t1444 * t1456;
t1489 = qJD(3) * pkin(3) - pkin(8) * t1597;
t1563 = t1438 * t1451;
t1319 = -pkin(3) * t1563 + t1403 * pkin(8) - qJD(3) * t1489 - t1359;
t1263 = t1443 * t1318 + t1447 * t1319;
t1391 = t1393 ^ 2;
t1504 = pkin(4) * t1436 - qJ(5) * t1394;
t1200 = -t1391 * pkin(4) - qJ(5) * t1481 - t1436 * t1504 + t1263;
t1262 = -t1447 * t1318 + t1443 * t1319;
t1569 = t1436 * t1393;
t1305 = -t1329 + t1569;
t1454 = pkin(4) * t1607 + qJ(5) * t1305 - t1262;
t1555 = t1441 * t1200 + t1440 * t1454;
t1129 = t1337 + t1555;
t1287 = pkin(5) * t1346 - pkin(9) * t1348;
t1415 = t1436 ^ 2;
t1093 = -pkin(5) * t1415 + pkin(9) * t1435 - t1287 * t1346 + t1129;
t1596 = qJD(2) * qJD(1);
t1433 = 0.2e1 * t1596;
t1414 = t1449 * g(1) + t1445 * g(2);
t1437 = qJDD(1) * qJ(2);
t1487 = t1414 - t1437;
t1457 = t1403 * pkin(3) - t1489 * t1597 + t1487;
t1452 = -pkin(4) * t1481 + t1391 * qJ(5) - t1394 * t1504 - qJDD(5) + t1457;
t1267 = t1441 * t1329 - t1440 * t1481;
t1571 = t1436 * t1346;
t1501 = t1267 - t1571;
t1133 = pkin(5) * t1230 - t1501 * pkin(9) + t1433 - t1452 - t1498;
t1062 = t1093 * t1442 - t1446 * t1133;
t1063 = t1093 * t1446 + t1133 * t1442;
t1016 = t1442 * t1062 + t1446 * t1063;
t1358 = t1444 * g(3) + t1455;
t1309 = t1448 * t1358 - t1444 * t1359;
t1552 = -0.2e1 * t1596;
t1606 = t1498 + t1552;
t1324 = t1326 ^ 2;
t1325 = t1328 ^ 2;
t1342 = qJD(6) + t1346;
t1340 = t1342 ^ 2;
t1343 = t1346 ^ 2;
t1344 = t1348 ^ 2;
t1392 = t1394 ^ 2;
t1604 = pkin(2) * t1309;
t1459 = t1487 + t1552;
t1374 = t1451 * t1605 + t1459;
t1603 = pkin(2) * t1374;
t1439 = t1448 ^ 2;
t1554 = t1438 + t1439;
t1406 = t1554 * qJDD(1);
t1602 = pkin(2) * t1406;
t1601 = pkin(5) * t1440;
t1600 = qJDD(1) * pkin(1);
t1594 = qJD(5) * t1348;
t1524 = t1440 * t1200 - t1441 * t1454;
t1551 = 0.2e1 * t1594;
t1128 = t1524 + t1551;
t1067 = -t1128 * t1441 + t1129 * t1440;
t1593 = t1067 * t1443;
t1592 = t1067 * t1447;
t1187 = -t1262 * t1447 + t1263 * t1443;
t1591 = t1187 * t1444;
t1590 = t1187 * t1448;
t1203 = t1265 + t1270;
t1589 = t1203 * t1442;
t1588 = t1203 * t1446;
t1217 = t1452 + t1606;
t1587 = t1217 * t1440;
t1586 = t1217 * t1441;
t1285 = t1294 + t1435;
t1585 = t1285 * t1440;
t1584 = t1285 * t1441;
t1320 = t1457 + t1606;
t1583 = t1320 * t1443;
t1582 = t1320 * t1447;
t1581 = t1342 * t1442;
t1580 = t1342 * t1446;
t1351 = -t1355 + t1435;
t1579 = t1351 * t1443;
t1578 = t1351 * t1447;
t1577 = t1406 * t1445;
t1576 = t1406 * t1449;
t1422 = t1444 * t1559;
t1411 = qJDD(3) + t1422;
t1575 = t1411 * t1444;
t1574 = t1411 * t1448;
t1412 = qJDD(3) - t1422;
t1573 = t1412 * t1444;
t1572 = t1412 * t1448;
t1568 = t1436 * t1394;
t1567 = t1436 * t1440;
t1566 = t1436 * t1441;
t1565 = t1436 * t1443;
t1564 = t1436 * t1447;
t1562 = t1439 * t1451;
t1092 = -t1435 * pkin(5) - t1415 * pkin(9) + (0.2e1 * qJD(5) + t1287) * t1348 + t1524;
t1089 = t1442 * t1092;
t1560 = t1444 * t1374;
t1090 = t1446 * t1092;
t1360 = t1448 * t1374;
t1068 = t1128 * t1440 + t1441 * t1129;
t1019 = t1068 * t1443 + t1592;
t1066 = pkin(4) * t1067;
t1558 = pkin(3) * t1019 + t1066;
t1557 = -pkin(5) * t1092 + pkin(9) * t1016;
t1234 = -t1267 - t1571;
t1480 = -t1521 + t1570;
t1166 = t1234 * t1441 + t1440 * t1480;
t1168 = -t1234 * t1440 + t1441 * t1480;
t1101 = t1166 * t1447 + t1168 * t1443;
t1164 = pkin(4) * t1166;
t1556 = pkin(3) * t1101 + t1164;
t1550 = -pkin(5) * t1441 - pkin(4);
t998 = t1016 * t1440 - t1092 * t1441;
t1549 = pkin(4) * t998 + t1557;
t1548 = t1440 * t1270;
t1547 = t1441 * t1270;
t1546 = t1445 * t1294;
t1545 = t1449 * t1294;
t1544 = t1445 * t1355;
t1543 = t1449 * t1355;
t1258 = -t1325 - t1340;
t1152 = -t1258 * t1442 - t1588;
t1494 = -t1446 * t1267 - t1442 * t1435;
t1196 = (qJD(6) + t1342) * t1326 + t1494;
t1540 = pkin(5) * t1196 + pkin(9) * t1152 + t1089;
t1244 = -t1340 - t1324;
t1147 = t1244 * t1446 - t1613;
t1282 = t1342 * t1328;
t1493 = -t1442 * t1267 + t1446 * t1435;
t1462 = qJD(6) * t1328 - t1493;
t1192 = -t1282 - t1462;
t1539 = pkin(5) * t1192 + pkin(9) * t1147 - t1090;
t1331 = -t1344 - t1415;
t1247 = t1331 * t1441 - t1585;
t1538 = pkin(4) * t1247 - t1555;
t1371 = -t1392 - t1415;
t1307 = t1371 * t1447 - t1579;
t1537 = pkin(3) * t1307 - t1263;
t1188 = t1262 * t1443 + t1447 * t1263;
t1120 = t1188 * t1444 + t1590;
t1186 = pkin(3) * t1187;
t1536 = -pkin(2) * t1120 - t1186;
t1463 = (-qJD(4) + t1436) * t1394 - t1518;
t1238 = t1305 * t1447 + t1443 * t1463;
t1240 = -t1305 * t1443 + t1447 * t1463;
t1172 = t1238 * t1448 + t1240 * t1444;
t1236 = pkin(3) * t1238;
t1535 = -pkin(2) * t1172 - t1236;
t1015 = -t1062 * t1446 + t1063 * t1442;
t999 = t1016 * t1441 + t1092 * t1440;
t963 = qJ(5) * t999 + (-pkin(9) * t1440 + t1550) * t1015;
t974 = -qJ(5) * t998 + (-pkin(9) * t1441 + t1601) * t1015;
t977 = -t1443 * t998 + t1447 * t999;
t947 = -pkin(3) * t1015 + pkin(8) * t977 + t1443 * t974 + t1447 * t963;
t976 = t1443 * t999 + t1447 * t998;
t949 = -pkin(8) * t976 - t1443 * t963 + t1447 * t974;
t1534 = -t1444 * t947 + t1448 * t949;
t1193 = (-qJD(6) + t1342) * t1328 + t1493;
t1214 = -qJD(6) * t1326 - t1494;
t1281 = t1342 * t1326;
t1195 = t1214 + t1281;
t1126 = t1193 * t1446 + t1195 * t1442;
t1229 = t1324 + t1325;
t1083 = t1126 * t1440 + t1229 * t1441;
t1084 = t1126 * t1441 - t1229 * t1440;
t1034 = -t1083 * t1443 + t1084 * t1447;
t1124 = t1193 * t1442 - t1195 * t1446;
t1002 = -pkin(9) * t1124 - t1015;
t978 = qJ(5) * t1084 + t1440 * t1002 + t1124 * t1550;
t986 = -qJ(5) * t1083 + t1002 * t1441 + t1124 * t1601;
t960 = -pkin(3) * t1124 + pkin(8) * t1034 + t1443 * t986 + t1447 * t978;
t1033 = t1083 * t1447 + t1084 * t1443;
t962 = -pkin(8) * t1033 - t1443 * t978 + t1447 * t986;
t1533 = -t1444 * t960 + t1448 * t962;
t1097 = t1147 * t1440 + t1192 * t1441;
t1098 = t1147 * t1441 - t1192 * t1440;
t1042 = -t1097 * t1443 + t1098 * t1447;
t1146 = t1244 * t1442 + t1611;
t1029 = -pkin(5) * t1146 + t1062;
t1069 = -pkin(9) * t1146 + t1089;
t990 = -pkin(4) * t1146 + qJ(5) * t1098 + t1029 * t1441 + t1069 * t1440;
t995 = -qJ(5) * t1097 - t1029 * t1440 + t1069 * t1441;
t966 = -pkin(3) * t1146 + pkin(8) * t1042 + t1443 * t995 + t1447 * t990;
t1041 = t1097 * t1447 + t1098 * t1443;
t971 = -pkin(8) * t1041 - t1443 * t990 + t1447 * t995;
t1532 = -t1444 * t966 + t1448 * t971;
t1105 = t1152 * t1440 + t1196 * t1441;
t1106 = t1152 * t1441 - t1196 * t1440;
t1049 = -t1105 * t1443 + t1106 * t1447;
t1151 = t1258 * t1446 - t1589;
t1030 = -pkin(5) * t1151 + t1063;
t1070 = -pkin(9) * t1151 + t1090;
t991 = -pkin(4) * t1151 + qJ(5) * t1106 + t1030 * t1441 + t1070 * t1440;
t996 = -qJ(5) * t1105 - t1030 * t1440 + t1070 * t1441;
t968 = -pkin(3) * t1151 + pkin(8) * t1049 + t1443 * t996 + t1447 * t991;
t1048 = t1105 * t1447 + t1106 * t1443;
t973 = -pkin(8) * t1048 - t1443 * t991 + t1447 * t996;
t1531 = -t1444 * t968 + t1448 * t973;
t1020 = t1068 * t1447 - t1593;
t1055 = pkin(4) * t1217 + qJ(5) * t1068;
t979 = pkin(3) * t1217 + pkin(8) * t1020 - qJ(5) * t1593 + t1055 * t1447;
t981 = -pkin(8) * t1019 - qJ(5) * t1592 - t1055 * t1443;
t1530 = -t1444 * t979 + t1448 * t981;
t1264 = -t1343 - t1344;
t1031 = -pkin(4) * t1264 + qJ(5) * t1168 + t1068;
t1036 = -qJ(5) * t1166 - t1067;
t1103 = -t1166 * t1443 + t1168 * t1447;
t989 = -pkin(3) * t1264 + pkin(8) * t1103 + t1031 * t1447 + t1036 * t1443;
t994 = -pkin(8) * t1101 - t1031 * t1443 + t1036 * t1447;
t1529 = -t1444 * t989 + t1448 * t994;
t1283 = -t1415 - t1343;
t1212 = t1283 * t1441 - t1615;
t1130 = -pkin(4) * t1230 + qJ(5) * t1212 + t1586;
t1211 = t1283 * t1440 + t1614;
t1149 = -t1211 * t1443 + t1212 * t1447;
t1153 = -qJ(5) * t1211 - t1587;
t1035 = -pkin(3) * t1230 + pkin(8) * t1149 + t1130 * t1447 + t1153 * t1443;
t1148 = t1211 * t1447 + t1212 * t1443;
t1054 = -pkin(8) * t1148 - t1130 * t1443 + t1153 * t1447;
t1527 = -t1444 * t1035 + t1448 * t1054;
t1248 = -t1331 * t1440 - t1584;
t1134 = -pkin(4) * t1501 + qJ(5) * t1248 - t1587;
t1159 = -qJ(5) * t1247 - t1586;
t1177 = -t1247 * t1443 + t1248 * t1447;
t1052 = -pkin(3) * t1501 + pkin(8) * t1177 + t1134 * t1447 + t1159 * t1443;
t1176 = t1247 * t1447 + t1248 * t1443;
t1065 = -pkin(8) * t1176 - t1134 * t1443 + t1159 * t1447;
t1526 = -t1444 * t1052 + t1448 * t1065;
t1330 = -t1391 - t1392;
t1135 = -pkin(3) * t1330 + pkin(8) * t1240 + t1188;
t1137 = -pkin(8) * t1238 - t1187;
t1525 = -t1444 * t1135 + t1448 * t1137;
t1349 = -t1415 - t1391;
t1293 = t1349 * t1447 - t1612;
t1301 = (qJD(4) + t1436) * t1394 + t1518;
t1201 = -pkin(3) * t1301 + pkin(8) * t1293 + t1582;
t1292 = t1349 * t1443 + t1610;
t1246 = -pkin(8) * t1292 - t1583;
t1523 = -t1444 * t1201 + t1448 * t1246;
t1308 = -t1371 * t1443 - t1578;
t1485 = t1329 + t1569;
t1205 = -pkin(3) * t1485 + pkin(8) * t1308 - t1583;
t1261 = -pkin(8) * t1307 - t1582;
t1522 = -t1444 * t1205 + t1448 * t1261;
t1380 = t1451 * pkin(1) + t1459;
t1385 = -t1477 + t1600;
t1519 = -t1449 * t1380 - t1385 * t1445;
t1517 = -t1413 * t1445 - t1449 * t1414;
t1516 = pkin(3) * t976 + t1549;
t1515 = t1445 * t1422;
t1514 = t1449 * t1422;
t1513 = pkin(5) * t1229 + pkin(9) * t1126 + t1016;
t1512 = pkin(4) * t1105 + t1540;
t1511 = pkin(4) * t1097 + t1539;
t1338 = 0.2e1 * t1595;
t1510 = t1338 + t1538;
t984 = t1019 * t1448 + t1020 * t1444;
t1509 = -pkin(2) * t984 - t1558;
t1044 = t1101 * t1448 + t1103 * t1444;
t1508 = -pkin(2) * t1044 - t1556;
t1407 = qJDD(1) * t1449 - t1445 * t1451;
t1507 = pkin(6) * t1407 + g(3) * t1445;
t1408 = qJDD(1) * t1445 + t1449 * t1451;
t1506 = -pkin(6) * t1408 + g(3) * t1449;
t1503 = pkin(4) * t1211 - t1524;
t1502 = pkin(3) * t1292 - t1262;
t1402 = 0.2e1 * t1541 + t1553;
t1500 = pkin(2) * t1402 - t1360;
t1405 = t1431 - 0.2e1 * t1542;
t1499 = pkin(2) * t1405 + t1560;
t1497 = pkin(3) * t1041 + t1511;
t1496 = pkin(3) * t1048 + t1512;
t1495 = pkin(4) * t1083 + t1513;
t1310 = -t1358 * t1444 - t1359 * t1448;
t1492 = t1380 * t1445 - t1385 * t1449;
t1491 = t1413 * t1449 - t1414 * t1445;
t1242 = t1307 * t1448 + t1308 * t1444;
t1490 = -pkin(2) * t1242 - t1537;
t1450 = qJD(3) ^ 2;
t1419 = -t1450 - t1562;
t1365 = t1419 * t1448 - t1575;
t1488 = -pkin(2) * t1365 - t1359;
t1339 = -0.2e1 * t1594;
t1486 = t1339 + t1503;
t1154 = pkin(3) * t1320 + pkin(8) * t1188;
t1484 = -pkin(8) * t1590 - t1444 * t1154;
t956 = t1444 * t977 + t1448 * t976;
t1483 = -pkin(2) * t956 - t1516;
t1482 = pkin(3) * t1033 + t1495;
t1109 = t1176 * t1448 + t1177 * t1444;
t1175 = pkin(3) * t1176;
t1479 = -pkin(2) * t1109 - t1175 - t1538;
t1215 = t1292 * t1448 + t1293 * t1444;
t1478 = -pkin(2) * t1215 - t1502;
t1476 = pkin(2) * t1015 - t1444 * t949 - t1448 * t947;
t1475 = pkin(2) * t1124 - t1444 * t962 - t1448 * t960;
t1474 = pkin(2) * t1146 - t1444 * t971 - t1448 * t966;
t1473 = pkin(2) * t1151 - t1444 * t973 - t1448 * t968;
t1472 = -pkin(2) * t1217 - t1444 * t981 - t1448 * t979;
t1471 = pkin(2) * t1264 - t1444 * t994 - t1448 * t989;
t1470 = pkin(2) * t1230 - t1448 * t1035 - t1444 * t1054;
t1469 = pkin(2) * t1501 - t1448 * t1052 - t1444 * t1065;
t1468 = pkin(2) * t1330 - t1448 * t1135 - t1444 * t1137;
t1467 = pkin(2) * t1301 - t1448 * t1201 - t1444 * t1246;
t1466 = pkin(2) * t1485 - t1448 * t1205 - t1444 * t1261;
t1005 = t1041 * t1448 + t1042 * t1444;
t1465 = -pkin(2) * t1005 - t1497;
t1008 = t1048 * t1448 + t1049 * t1444;
t1464 = -pkin(2) * t1008 - t1496;
t1078 = t1148 * t1448 + t1149 * t1444;
t1145 = pkin(3) * t1148;
t1461 = -pkin(2) * t1078 - t1145 - t1503;
t1460 = -pkin(2) * t1320 + pkin(8) * t1591 - t1448 * t1154;
t1000 = t1033 * t1448 + t1034 * t1444;
t1458 = -pkin(2) * t1000 - t1482;
t1417 = -t1450 - t1563;
t1363 = t1417 * t1444 + t1572;
t1453 = -pkin(2) * t1363 - t1358;
t1425 = t1449 * t1435;
t1424 = t1445 * t1435;
t1418 = t1450 - t1562;
t1416 = -t1450 + t1563;
t1410 = (-t1438 + t1439) * t1451;
t1409 = t1554 * t1451;
t1400 = t1554 * t1599;
t1399 = t1505 - 0.2e1 * t1600;
t1390 = -t1414 + t1433 + 0.2e1 * t1437;
t1378 = -t1392 + t1415;
t1377 = t1391 - t1415;
t1376 = t1404 * t1444 + t1439 * t1599;
t1375 = t1403 * t1448 + t1438 * t1599;
t1370 = -t1419 * t1444 - t1574;
t1369 = -t1418 * t1444 + t1572;
t1368 = (t1404 - t1542) * t1448;
t1367 = t1417 * t1448 - t1573;
t1366 = t1416 * t1448 - t1575;
t1364 = t1418 * t1448 + t1573;
t1362 = t1416 * t1444 + t1574;
t1361 = (-t1403 + t1541) * t1444;
t1357 = -t1402 * t1448 - t1405 * t1444;
t1356 = -t1402 * t1444 + t1405 * t1448;
t1353 = t1392 - t1391;
t1341 = pkin(1) * t1385 - qJ(2) * t1380;
t1335 = -t1344 + t1415;
t1334 = t1343 - t1415;
t1333 = (t1393 * t1447 + t1394 * t1443) * t1436;
t1332 = (t1393 * t1443 - t1394 * t1447) * t1436;
t1314 = t1377 * t1447 - t1579;
t1313 = -t1378 * t1443 + t1610;
t1312 = t1377 * t1443 + t1578;
t1311 = t1378 * t1447 + t1612;
t1299 = t1329 * t1447 - t1394 * t1565;
t1298 = t1329 * t1443 + t1394 * t1564;
t1297 = -t1393 * t1564 + t1443 * t1481;
t1296 = -t1393 * t1565 - t1447 * t1481;
t1295 = pkin(2) * t1409 + t1310;
t1291 = t1344 - t1343;
t1289 = -qJ(2) * t1370 - t1488;
t1288 = -qJ(2) * t1367 - t1453;
t1280 = -t1367 * t1605 + t1500;
t1279 = -t1370 * t1605 + t1499;
t1278 = qJ(2) * t1405 - t1365 * t1605 - t1360;
t1277 = qJ(2) * t1402 - t1363 * t1605 - t1560;
t1276 = -t1325 + t1340;
t1275 = t1324 - t1340;
t1274 = (-t1346 * t1441 + t1348 * t1440) * t1436;
t1273 = (-t1346 * t1440 - t1348 * t1441) * t1436;
t1272 = -t1332 * t1444 + t1333 * t1448;
t1271 = t1332 * t1448 + t1333 * t1444;
t1269 = -qJ(2) * t1409 + t1406 * t1605 - t1309;
t1268 = t1325 - t1324;
t1257 = -qJ(2) * t1310 + t1604;
t1256 = -t1312 * t1444 + t1314 * t1448;
t1255 = -t1311 * t1444 + t1313 * t1448;
t1254 = t1334 * t1441 - t1585;
t1253 = -t1335 * t1440 + t1614;
t1252 = t1312 * t1448 + t1314 * t1444;
t1251 = t1311 * t1448 + t1313 * t1444;
t1250 = t1334 * t1440 + t1584;
t1249 = t1335 * t1441 + t1615;
t1243 = -t1307 * t1444 + t1308 * t1448;
t1239 = -t1301 * t1447 - t1443 * t1485;
t1237 = -t1301 * t1443 + t1447 * t1485;
t1227 = t1267 * t1441 - t1348 * t1567;
t1226 = t1267 * t1440 + t1348 * t1566;
t1225 = t1346 * t1566 + t1440 * t1521;
t1224 = t1346 * t1567 - t1441 * t1521;
t1223 = -t1310 * t1605 - t1603;
t1222 = -t1298 * t1444 + t1299 * t1448;
t1221 = -t1296 * t1444 + t1297 * t1448;
t1220 = t1298 * t1448 + t1299 * t1444;
t1219 = t1296 * t1448 + t1297 * t1444;
t1218 = -qJ(2) * t1374 - t1309 * t1605;
t1216 = -t1292 * t1444 + t1293 * t1448;
t1209 = (-t1326 * t1446 + t1328 * t1442) * t1342;
t1208 = (-t1326 * t1442 - t1328 * t1446) * t1342;
t1207 = -t1273 * t1443 + t1274 * t1447;
t1206 = t1273 * t1447 + t1274 * t1443;
t1194 = t1214 - t1281;
t1191 = -t1282 + t1462;
t1185 = t1214 * t1446 - t1328 * t1581;
t1184 = t1214 * t1442 + t1328 * t1580;
t1183 = t1326 * t1580 + t1442 * t1462;
t1182 = -t1326 * t1581 + t1446 * t1462;
t1181 = -t1250 * t1443 + t1254 * t1447;
t1180 = -t1249 * t1443 + t1253 * t1447;
t1179 = t1250 * t1447 + t1254 * t1443;
t1178 = t1249 * t1447 + t1253 * t1443;
t1174 = -t1238 * t1444 + t1240 * t1448;
t1173 = -t1237 * t1444 + t1239 * t1448;
t1171 = t1237 * t1448 + t1239 * t1444;
t1170 = t1209 * t1441 + t1265 * t1440;
t1169 = t1209 * t1440 - t1265 * t1441;
t1167 = -t1230 * t1441 - t1440 * t1501;
t1165 = -t1230 * t1440 + t1441 * t1501;
t1163 = t1275 * t1446 - t1589;
t1162 = -t1276 * t1442 + t1611;
t1161 = t1275 * t1442 + t1588;
t1160 = t1276 * t1446 + t1613;
t1158 = -t1226 * t1443 + t1227 * t1447;
t1157 = -t1224 * t1443 + t1225 * t1447;
t1156 = t1226 * t1447 + t1227 * t1443;
t1155 = t1224 * t1447 + t1225 * t1443;
t1143 = t1185 * t1441 + t1548;
t1142 = t1183 * t1441 - t1548;
t1141 = t1185 * t1440 - t1547;
t1140 = t1183 * t1440 + t1547;
t1139 = -t1206 * t1444 + t1207 * t1448;
t1138 = t1206 * t1448 + t1207 * t1444;
t1131 = -qJ(2) * t1243 - t1490;
t1125 = t1192 * t1446 - t1194 * t1442;
t1123 = t1192 * t1442 + t1194 * t1446;
t1121 = t1188 * t1448 - t1591;
t1119 = -qJ(2) * t1216 - t1478;
t1118 = -t1179 * t1444 + t1181 * t1448;
t1117 = -t1178 * t1444 + t1180 * t1448;
t1116 = t1179 * t1448 + t1181 * t1444;
t1115 = t1178 * t1448 + t1180 * t1444;
t1114 = t1163 * t1441 - t1191 * t1440;
t1113 = t1162 * t1441 + t1195 * t1440;
t1112 = t1163 * t1440 + t1191 * t1441;
t1111 = t1162 * t1440 - t1195 * t1441;
t1110 = -t1176 * t1444 + t1177 * t1448;
t1108 = -t1169 * t1443 + t1170 * t1447;
t1107 = t1169 * t1447 + t1170 * t1443;
t1102 = -t1165 * t1443 + t1167 * t1447;
t1100 = t1165 * t1447 + t1167 * t1443;
t1095 = t1125 * t1441 + t1268 * t1440;
t1094 = t1125 * t1440 - t1268 * t1441;
t1088 = -t1156 * t1444 + t1158 * t1448;
t1087 = -t1155 * t1444 + t1157 * t1448;
t1086 = t1156 * t1448 + t1158 * t1444;
t1085 = t1155 * t1448 + t1157 * t1444;
t1081 = -t1243 * t1605 + t1466;
t1080 = qJ(2) * t1485 - t1242 * t1605 + t1522;
t1079 = -t1148 * t1444 + t1149 * t1448;
t1077 = -qJ(2) * t1174 - t1535;
t1076 = -t1141 * t1443 + t1143 * t1447;
t1075 = -t1140 * t1443 + t1142 * t1447;
t1074 = t1141 * t1447 + t1143 * t1443;
t1073 = t1140 * t1447 + t1142 * t1443;
t1072 = -t1216 * t1605 + t1467;
t1071 = qJ(2) * t1301 - t1215 * t1605 + t1523;
t1059 = -t1112 * t1443 + t1114 * t1447;
t1058 = -t1111 * t1443 + t1113 * t1447;
t1057 = t1112 * t1447 + t1114 * t1443;
t1056 = t1111 * t1447 + t1113 * t1443;
t1051 = -t1107 * t1444 + t1108 * t1448;
t1050 = t1107 * t1448 + t1108 * t1444;
t1046 = -t1101 * t1444 + t1103 * t1448;
t1045 = -t1100 * t1444 + t1102 * t1448;
t1043 = t1100 * t1448 + t1102 * t1444;
t1039 = -t1094 * t1443 + t1095 * t1447;
t1038 = t1094 * t1447 + t1095 * t1443;
t1037 = -qJ(2) * t1121 - t1536;
t1028 = -t1174 * t1605 + t1468;
t1027 = qJ(2) * t1330 - t1172 * t1605 + t1525;
t1026 = -t1074 * t1444 + t1076 * t1448;
t1025 = -t1073 * t1444 + t1075 * t1448;
t1024 = t1074 * t1448 + t1076 * t1444;
t1023 = t1073 * t1448 + t1075 * t1444;
t1022 = -t1121 * t1605 + t1460;
t1021 = -qJ(2) * t1320 - t1120 * t1605 + t1484;
t1017 = -qJ(2) * t1110 + t1338 - t1479;
t1013 = -t1057 * t1444 + t1059 * t1448;
t1012 = -t1056 * t1444 + t1058 * t1448;
t1011 = t1057 * t1448 + t1059 * t1444;
t1010 = t1056 * t1448 + t1058 * t1444;
t1009 = -t1048 * t1444 + t1049 * t1448;
t1007 = -qJ(2) * t1079 + t1339 - t1461;
t1006 = -t1041 * t1444 + t1042 * t1448;
t1004 = -t1038 * t1444 + t1039 * t1448;
t1003 = t1038 * t1448 + t1039 * t1444;
t1001 = -t1033 * t1444 + t1034 * t1448;
t992 = -qJ(2) * t1046 - t1508;
t988 = -t1110 * t1605 + t1469;
t987 = qJ(2) * t1501 - t1109 * t1605 + t1526;
t985 = -t1019 * t1444 + t1020 * t1448;
t983 = -t1079 * t1605 + t1470;
t982 = qJ(2) * t1230 - t1078 * t1605 + t1527;
t969 = -qJ(2) * t1009 - t1464;
t967 = -qJ(2) * t1006 - t1465;
t965 = -t1046 * t1605 + t1471;
t964 = qJ(2) * t1264 - t1044 * t1605 + t1529;
t959 = -qJ(2) * t1001 - t1458;
t958 = -qJ(2) * t985 - t1509;
t957 = -t1444 * t976 + t1448 * t977;
t955 = -t1605 * t985 + t1472;
t954 = -qJ(2) * t1217 - t1605 * t984 + t1530;
t953 = -t1009 * t1605 + t1473;
t952 = qJ(2) * t1151 - t1008 * t1605 + t1531;
t951 = -t1006 * t1605 + t1474;
t950 = qJ(2) * t1146 - t1005 * t1605 + t1532;
t946 = -t1001 * t1605 + t1475;
t945 = qJ(2) * t1124 - t1000 * t1605 + t1533;
t944 = -qJ(2) * t957 - t1483;
t943 = -t1605 * t957 + t1476;
t942 = qJ(2) * t1015 - t1605 * t956 + t1534;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1407, 0, -t1408, 0, -t1507, -t1506, -t1491, -pkin(6) * t1491, 0, -t1407, t1408, 0, 0, 0, t1492, t1507, t1506, pkin(6) * t1492 + (-pkin(1) * t1445 + qJ(2) * t1449) * g(3), t1376 * t1445 + t1514, t1356 * t1445 + t1410 * t1449, t1364 * t1445 + t1431 * t1449, t1375 * t1445 - t1514, t1362 * t1445 - t1449 * t1553, qJDD(3) * t1449 - t1400 * t1445, t1449 * t1288 - t1445 * t1280 - pkin(6) * (-t1363 * t1449 + t1402 * t1445), t1449 * t1289 - t1445 * t1279 - pkin(6) * (-t1365 * t1449 + t1405 * t1445), -pkin(2) * t1576 + t1445 * t1295 - pkin(6) * (-t1409 * t1445 + t1576), t1449 * t1257 - t1445 * t1223 - pkin(6) * (-t1309 * t1449 - t1374 * t1445), t1220 * t1445 - t1543, t1171 * t1445 + t1353 * t1449, t1251 * t1445 - t1305 * t1449, t1219 * t1445 + t1543, t1252 * t1445 + t1449 * t1463, t1271 * t1445 + t1425, t1449 * t1119 - t1445 * t1072 - pkin(6) * (-t1215 * t1449 + t1301 * t1445), t1449 * t1131 - t1445 * t1081 - pkin(6) * (-t1242 * t1449 + t1445 * t1485), t1449 * t1077 - t1445 * t1028 - pkin(6) * (-t1172 * t1449 + t1330 * t1445), t1449 * t1037 - t1445 * t1022 - pkin(6) * (-t1120 * t1449 - t1320 * t1445), t1086 * t1445 + t1545, t1043 * t1445 + t1291 * t1449, t1115 * t1445 - t1234 * t1449, t1085 * t1445 - t1545, t1116 * t1445 + t1449 * t1480, t1138 * t1445 + t1425, t1449 * t1007 - t1445 * t983 - pkin(6) * (-t1078 * t1449 + t1230 * t1445), t1449 * t1017 - t1445 * t988 - pkin(6) * (-t1109 * t1449 + t1445 * t1501), t1449 * t992 - t1445 * t965 - pkin(6) * (-t1044 * t1449 + t1264 * t1445), t1449 * t958 - t1445 * t955 - pkin(6) * (-t1217 * t1445 - t1449 * t984), t1024 * t1445 + t1184 * t1449, t1003 * t1445 + t1123 * t1449, t1010 * t1445 + t1160 * t1449, t1023 * t1445 - t1182 * t1449, t1011 * t1445 + t1161 * t1449, t1050 * t1445 + t1208 * t1449, t1449 * t967 - t1445 * t951 - pkin(6) * (-t1005 * t1449 + t1146 * t1445), t1449 * t969 - t1445 * t953 - pkin(6) * (-t1008 * t1449 + t1151 * t1445), t1449 * t959 - t1445 * t946 - pkin(6) * (-t1000 * t1449 + t1124 * t1445), t1449 * t944 - t1445 * t943 - pkin(6) * (t1015 * t1445 - t1449 * t956); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1408, 0, t1407, 0, t1506, -t1507, t1517, pkin(6) * t1517, 0, -t1408, -t1407, 0, 0, 0, t1519, -t1506, t1507, pkin(6) * t1519 + (pkin(1) * t1449 + qJ(2) * t1445) * g(3), -t1376 * t1449 + t1515, -t1356 * t1449 + t1410 * t1445, -t1364 * t1449 + t1431 * t1445, -t1375 * t1449 - t1515, -t1362 * t1449 - t1445 * t1553, qJDD(3) * t1445 + t1400 * t1449, t1445 * t1288 + t1449 * t1280 + pkin(6) * (t1363 * t1445 + t1402 * t1449), t1445 * t1289 + t1449 * t1279 + pkin(6) * (t1365 * t1445 + t1405 * t1449), -pkin(2) * t1577 - t1449 * t1295 + pkin(6) * (-t1409 * t1449 - t1577), t1445 * t1257 + t1449 * t1223 + pkin(6) * (t1309 * t1445 - t1374 * t1449), -t1220 * t1449 - t1544, -t1171 * t1449 + t1353 * t1445, -t1251 * t1449 - t1305 * t1445, -t1219 * t1449 + t1544, -t1252 * t1449 + t1445 * t1463, -t1271 * t1449 + t1424, t1445 * t1119 + t1449 * t1072 + pkin(6) * (t1215 * t1445 + t1301 * t1449), t1445 * t1131 + t1449 * t1081 + pkin(6) * (t1242 * t1445 + t1449 * t1485), t1445 * t1077 + t1449 * t1028 + pkin(6) * (t1172 * t1445 + t1330 * t1449), t1445 * t1037 + t1449 * t1022 + pkin(6) * (t1120 * t1445 - t1320 * t1449), -t1086 * t1449 + t1546, -t1043 * t1449 + t1291 * t1445, -t1115 * t1449 - t1234 * t1445, -t1085 * t1449 - t1546, -t1116 * t1449 + t1445 * t1480, -t1138 * t1449 + t1424, t1445 * t1007 + t1449 * t983 + pkin(6) * (t1078 * t1445 + t1230 * t1449), t1445 * t1017 + t1449 * t988 + pkin(6) * (t1109 * t1445 + t1449 * t1501), t1445 * t992 + t1449 * t965 + pkin(6) * (t1044 * t1445 + t1264 * t1449), t1445 * t958 + t1449 * t955 + pkin(6) * (-t1217 * t1449 + t1445 * t984), -t1024 * t1449 + t1184 * t1445, -t1003 * t1449 + t1123 * t1445, -t1010 * t1449 + t1160 * t1445, -t1023 * t1449 - t1182 * t1445, -t1011 * t1449 + t1161 * t1445, -t1050 * t1449 + t1208 * t1445, t1445 * t967 + t1449 * t951 + pkin(6) * (t1005 * t1445 + t1146 * t1449), t1445 * t969 + t1449 * t953 + pkin(6) * (t1008 * t1445 + t1151 * t1449), t1445 * t959 + t1449 * t946 + pkin(6) * (t1000 * t1445 + t1124 * t1449), t1445 * t944 + t1449 * t943 + pkin(6) * (t1015 * t1449 + t1445 * t956); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1413, t1414, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t1399, t1390, t1341, t1368, t1357, t1369, t1361, t1366, 0, t1277, t1278, t1269, t1218, t1222, t1173, t1255, t1221, t1256, t1272, t1071, t1080, t1027, t1021, t1088, t1045, t1117, t1087, t1118, t1139, t982, t987, t964, t954, t1026, t1004, t1012, t1025, t1013, t1051, t950, t952, t945, t942; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1451, 0, 0, -g(3), -t1413, 0, 0, -qJDD(1), t1451, 0, 0, 0, -t1385, 0, g(3), qJ(2) * g(3), t1422, t1410, t1431, -t1422, -t1553, qJDD(3), t1288, t1289, -t1602, t1257, -t1355, t1353, -t1305, t1355, t1463, t1435, t1119, t1131, t1077, t1037, t1294, t1291, -t1234, -t1294, t1480, t1435, t1007, t1017, t992, t958, t1184, t1123, t1160, -t1182, t1161, t1208, t967, t969, t959, t944; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1451, 0, qJDD(1), 0, g(3), 0, -t1414, 0, 0, -t1451, -qJDD(1), 0, 0, 0, -t1380, -g(3), 0, pkin(1) * g(3), -t1376, -t1356, -t1364, -t1375, -t1362, t1400, t1280, t1279, -t1295, t1223, -t1220, -t1171, -t1251, -t1219, -t1252, -t1271, t1072, t1081, t1028, t1022, -t1086, -t1043, -t1115, -t1085, -t1116, -t1138, t983, t988, t965, t955, -t1024, -t1003, -t1010, -t1023, -t1011, -t1050, t951, t953, t946, t943; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1413, t1414, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t1399, t1390, t1341, t1368, t1357, t1369, t1361, t1366, 0, t1277, t1278, t1269, t1218, t1222, t1173, t1255, t1221, t1256, t1272, t1071, t1080, t1027, t1021, t1088, t1045, t1117, t1087, t1118, t1139, t982, t987, t964, t954, t1026, t1004, t1012, t1025, t1013, t1051, t950, t952, t945, t942; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t1385, -t1380, 0, t1368, t1357, t1369, t1361, t1366, 0, -pkin(7) * t1363 - t1560, -pkin(7) * t1365 - t1360, pkin(7) * t1406 - t1309, -pkin(7) * t1309, t1222, t1173, t1255, t1221, t1256, t1272, -pkin(7) * t1215 + t1523, -pkin(7) * t1242 + t1522, -pkin(7) * t1172 + t1525, -pkin(7) * t1120 + t1484, t1088, t1045, t1117, t1087, t1118, t1139, -pkin(7) * t1078 + t1527, -pkin(7) * t1109 + t1526, -pkin(7) * t1044 + t1529, -pkin(7) * t984 + t1530, t1026, t1004, t1012, t1025, t1013, t1051, -pkin(7) * t1005 + t1532, -pkin(7) * t1008 + t1531, -pkin(7) * t1000 + t1533, -pkin(7) * t956 + t1534; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1451, 0, 0, 0, t1385, 0, -g(3), 0, -t1422, -t1410, -t1431, t1422, t1553, -qJDD(3), t1453, t1488, t1602, -t1604, t1355, -t1353, t1305, -t1355, -t1463, -t1435, t1478, t1490, t1535, t1536, -t1294, -t1291, t1234, t1294, -t1480, -t1435, t1461 + t1551, t1337 + t1479, t1508, t1509, -t1184, -t1123, -t1160, t1182, -t1161, -t1208, t1465, t1464, t1458, t1483; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1451, qJDD(1), 0, 0, 0, t1380, g(3), 0, 0, t1376, t1356, t1364, t1375, t1362, -t1400, pkin(7) * t1367 - t1500, pkin(7) * t1370 - t1499, t1295, pkin(7) * t1310 + t1603, t1220, t1171, t1251, t1219, t1252, t1271, pkin(7) * t1216 - t1467, pkin(7) * t1243 - t1466, pkin(7) * t1174 - t1468, pkin(7) * t1121 - t1460, t1086, t1043, t1115, t1085, t1116, t1138, pkin(7) * t1079 - t1470, pkin(7) * t1110 - t1469, pkin(7) * t1046 - t1471, pkin(7) * t985 - t1472, t1024, t1003, t1010, t1023, t1011, t1050, pkin(7) * t1006 - t1474, pkin(7) * t1009 - t1473, pkin(7) * t1001 - t1475, pkin(7) * t957 - t1476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1404, -t1402, t1412, t1542, t1416, -t1542, 0, -t1374, -t1358, 0, t1299, t1239, t1313, t1297, t1314, t1333, t1246, t1261, t1137, -pkin(8) * t1187, t1158, t1102, t1180, t1157, t1181, t1207, t1054, t1065, t994, t981, t1076, t1039, t1058, t1075, t1059, t1108, t971, t973, t962, t949; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1541, t1405, t1418, t1403, t1411, -t1541, t1374, 0, -t1359, 0, t1298, t1237, t1311, t1296, t1312, t1332, t1201, t1205, t1135, t1154, t1156, t1100, t1178, t1155, t1179, t1206, t1035, t1052, t989, t979, t1074, t1038, t1056, t1073, t1057, t1107, t966, t968, t960, t947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1422, t1410, t1431, -t1422, -t1553, qJDD(3), t1358, t1359, 0, 0, -t1355, t1353, -t1305, t1355, t1463, t1435, t1502, t1537, t1236, t1186, t1294, t1291, -t1234, -t1294, t1480, t1435, t1145 + t1486, t1175 + t1510, t1556, t1558, t1184, t1123, t1160, -t1182, t1161, t1208, t1497, t1496, t1482, t1516; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1329, -t1301, t1607, -t1569, t1377, t1569, 0, -t1320, t1262, 0, t1227, t1167, t1253, t1225, t1254, t1274, t1153, t1159, t1036, -qJ(5) * t1067, t1143, t1095, t1113, t1142, t1114, t1170, t995, t996, t986, t974; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1568, t1485, t1378, -t1481, t1351, -t1568, t1320, 0, t1263, 0, t1226, t1165, t1249, t1224, t1250, t1273, t1130, t1134, t1031, t1055, t1141, t1094, t1111, t1140, t1112, t1169, t990, t991, t978, t963; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1355, t1353, -t1305, t1355, t1463, t1435, -t1262, -t1263, 0, 0, t1294, t1291, -t1234, -t1294, t1480, t1435, t1486, t1510, t1164, t1066, t1184, t1123, t1160, -t1182, t1161, t1208, t1511, t1512, t1495, t1549; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1267, -t1230, t1608, t1571, t1334, -t1571, 0, -t1217, t1128, 0, t1185, t1125, t1162, t1183, t1163, t1209, t1069, t1070, t1002, -pkin(9) * t1015; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1570, t1501, t1335, -t1521, t1285, -t1570, t1217, 0, t1129, 0, -t1270, -t1268, -t1195, t1270, t1191, -t1265, t1029, t1030, -pkin(5) * t1124, -pkin(5) * t1015; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1294, t1291, -t1234, -t1294, t1480, t1435, -t1128, -t1129, 0, 0, t1184, t1123, t1160, -t1182, t1161, t1208, t1539, t1540, t1513, t1557; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1214, t1192, t1609, t1281, t1275, -t1281, 0, t1092, t1062, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1282, t1194, t1276, -t1462, t1203, -t1282, -t1092, 0, t1063, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1270, t1268, t1195, -t1270, -t1191, t1265, -t1062, -t1063, 0, 0;];
m_new_reg  = t1;

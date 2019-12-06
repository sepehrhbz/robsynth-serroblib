% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRRR10
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,alpha3,d2,d3,d4,d5,theta1]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:27
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRRR10_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR10_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR10_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRR10_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRR10_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S5PRRRR10_invdynm_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:26:57
% EndTime: 2019-12-05 17:27:31
% DurationCPUTime: 35.76s
% Computational Cost: add. (287939->870), mult. (600446->1390), div. (0->0), fcn. (484934->14), ass. (0->634)
t1431 = sin(qJ(5));
t1432 = sin(qJ(4));
t1436 = cos(qJ(4));
t1429 = cos(pkin(6));
t1591 = t1429 * qJD(2);
t1552 = qJD(3) + t1591;
t1433 = sin(qJ(3));
t1426 = sin(pkin(6));
t1594 = t1426 * qJD(2);
t1563 = t1433 * t1594;
t1384 = t1432 * t1552 + t1436 * t1563;
t1435 = cos(qJ(5));
t1437 = cos(qJ(3));
t1578 = t1437 * qJD(2);
t1414 = t1426 * t1578;
t1572 = t1414 - qJD(4);
t1358 = t1384 * t1431 + t1435 * t1572;
t1360 = t1384 * t1435 - t1431 * t1572;
t1318 = t1360 * t1358;
t1566 = t1433 * qJDD(2);
t1390 = (qJD(3) * t1578 + t1566) * t1426;
t1567 = t1429 * qJDD(2);
t1415 = qJDD(3) + t1567;
t1550 = -t1432 * t1390 + t1415 * t1436;
t1474 = t1384 * qJD(4) - t1550;
t1336 = qJDD(5) + t1474;
t1610 = -t1318 + t1336;
t1618 = t1431 * t1610;
t1617 = t1435 * t1610;
t1434 = sin(qJ(2));
t1438 = cos(qJ(2));
t1430 = cos(pkin(5));
t1427 = sin(pkin(5));
t1601 = g(3) - qJDD(1);
t1555 = t1427 * t1601;
t1425 = sin(pkin(11));
t1428 = cos(pkin(11));
t1556 = g(1) * t1425 - g(2) * t1428;
t1444 = t1430 * t1556 - t1555;
t1571 = g(1) * t1428 + g(2) * t1425;
t1354 = -t1434 * t1571 - t1438 * t1444;
t1439 = qJD(2) ^ 2;
t1603 = pkin(8) * t1426;
t1443 = qJDD(2) * pkin(2) + t1439 * t1603 - t1354;
t1402 = t1427 * t1556;
t1539 = t1430 * t1601 + t1402;
t1616 = -t1426 * t1539 + t1429 * t1443;
t1372 = t1384 * t1572;
t1615 = t1474 - t1372;
t1549 = t1552 ^ 2;
t1565 = t1572 ^ 2;
t1355 = t1434 * t1444 - t1438 * t1571;
t1310 = t1354 * t1434 + t1355 * t1438;
t1298 = t1310 * t1427;
t1614 = t1425 * t1601;
t1613 = t1428 * t1601;
t1411 = qJD(3) * t1563;
t1569 = qJDD(2) * t1426;
t1540 = t1437 * t1569 - t1411;
t1386 = -qJDD(4) + t1540;
t1382 = t1432 * t1563 - t1436 * t1552;
t1597 = t1384 * t1382;
t1446 = -t1386 - t1597;
t1612 = t1432 * t1446;
t1472 = t1434 * t1539;
t1611 = t1436 * t1446;
t1471 = t1438 * t1539;
t1482 = -t1436 * t1390 - t1432 * t1415;
t1338 = -t1382 * qJD(4) - t1482;
t1373 = t1572 * t1382;
t1305 = t1338 + t1373;
t1537 = qJD(2) * t1552;
t1477 = t1433 * t1537;
t1400 = t1426 * t1477;
t1609 = t1400 - t1540;
t1478 = t1426 * t1537;
t1401 = t1437 * t1478;
t1368 = t1401 + t1390;
t1608 = -t1425 * t1556 - t1428 * t1571;
t1607 = -t1425 * t1571 + t1428 * t1556;
t1346 = -t1439 * pkin(2) + pkin(8) * t1569 + t1355;
t1263 = t1437 * t1346 + t1433 * t1616;
t1356 = t1358 ^ 2;
t1357 = t1360 ^ 2;
t1378 = qJD(5) + t1382;
t1376 = t1378 ^ 2;
t1380 = t1382 ^ 2;
t1381 = t1384 ^ 2;
t1606 = pkin(3) * t1433;
t1605 = pkin(4) * t1432;
t1604 = pkin(7) * t1430;
t1602 = t1437 * pkin(3);
t1423 = t1433 ^ 2;
t1424 = t1437 ^ 2;
t1570 = t1423 + t1424;
t1374 = t1552 * t1570 * t1594;
t1600 = t1374 * t1434;
t1599 = t1378 * t1431;
t1598 = t1378 * t1435;
t1422 = t1426 ^ 2;
t1596 = t1422 * t1437;
t1595 = t1422 * t1439;
t1593 = t1426 * t1415;
t1592 = t1426 * t1438;
t1548 = -pkin(9) * t1433 - t1602;
t1389 = t1548 * t1594;
t1245 = -pkin(3) * t1549 + t1415 * pkin(9) + t1389 * t1414 + t1263;
t1319 = t1426 * t1443 + t1429 * t1539;
t1441 = pkin(3) * t1609 - pkin(9) * t1368 - t1319;
t1176 = t1245 * t1432 - t1436 * t1441;
t1348 = pkin(4) * t1382 - pkin(10) * t1384;
t1146 = pkin(4) * t1386 - pkin(10) * t1565 + t1348 * t1384 + t1176;
t1590 = t1431 * t1146;
t1260 = t1318 + t1336;
t1589 = t1431 * t1260;
t1573 = t1616 * t1437;
t1244 = -t1415 * pkin(3) - t1549 * pkin(9) + (t1389 * t1594 + t1346) * t1433 - t1573;
t1588 = t1432 * t1244;
t1331 = t1386 - t1597;
t1587 = t1432 * t1331;
t1586 = t1433 * t1319;
t1583 = t1433 * t1439;
t1410 = t1583 * t1596;
t1387 = t1410 + t1415;
t1585 = t1433 * t1387;
t1388 = -t1410 + t1415;
t1584 = t1433 * t1388;
t1582 = t1435 * t1146;
t1581 = t1435 * t1260;
t1580 = t1436 * t1244;
t1579 = t1436 * t1331;
t1577 = t1437 * t1319;
t1575 = t1437 * t1387;
t1574 = t1437 * t1388;
t1177 = t1245 * t1436 + t1432 * t1441;
t1568 = t1427 * qJDD(2);
t1564 = -pkin(4) * t1436 - pkin(3);
t1562 = t1437 * t1597;
t1561 = t1423 * t1595;
t1560 = t1424 * t1595;
t1559 = t1432 * t1318;
t1558 = t1433 * t1597;
t1557 = t1436 * t1318;
t1147 = -pkin(4) * t1565 - pkin(10) * t1386 - t1348 * t1382 + t1177;
t1169 = pkin(4) * t1615 - pkin(10) * t1305 + t1244;
t1099 = t1147 * t1431 - t1169 * t1435;
t1100 = t1147 * t1435 + t1169 * t1431;
t1045 = t1099 * t1431 + t1100 * t1435;
t1111 = t1176 * t1432 + t1177 * t1436;
t1551 = -t1431 * t1338 - t1386 * t1435;
t1547 = -pkin(4) * t1146 + pkin(10) * t1045;
t1546 = t1432 * t1372;
t1545 = t1432 * t1373;
t1544 = t1436 * t1372;
t1543 = t1436 * t1373;
t1377 = -t1561 - t1549;
t1345 = -t1377 * t1433 - t1574;
t1542 = pkin(8) * t1345 - t1586;
t1393 = -t1549 - t1560;
t1353 = t1393 * t1437 - t1585;
t1541 = pkin(8) * t1353 + t1577;
t1027 = t1045 * t1436 + t1146 * t1432;
t1044 = -t1099 * t1435 + t1100 * t1431;
t1002 = t1027 * t1437 + t1044 * t1433;
t1026 = t1045 * t1432 - t1146 * t1436;
t1536 = t1027 * t1433 - t1044 * t1437;
t987 = -t1426 * t1026 + t1429 * t1536;
t1538 = t1002 * t1434 + t1438 * t987;
t1110 = -t1176 * t1436 + t1177 * t1432;
t1526 = t1111 * t1433 - t1244 * t1437;
t1047 = -t1426 * t1110 + t1429 * t1526;
t1091 = t1111 * t1437 + t1244 * t1433;
t1535 = t1047 * t1438 + t1091 * t1434;
t1234 = (-qJD(5) + t1378) * t1360 + t1551;
t1491 = -t1435 * t1338 + t1431 * t1386;
t1272 = -qJD(5) * t1358 - t1491;
t1334 = t1378 * t1358;
t1237 = t1272 + t1334;
t1162 = t1234 * t1435 + t1237 * t1431;
t1273 = t1356 + t1357;
t1129 = t1162 * t1432 + t1273 * t1436;
t1130 = t1162 * t1436 - t1273 * t1432;
t1160 = t1234 * t1431 - t1237 * t1435;
t1524 = t1130 * t1433 - t1160 * t1437;
t1056 = -t1426 * t1129 + t1429 * t1524;
t1086 = t1130 * t1437 + t1160 * t1433;
t1534 = t1056 * t1438 + t1086 * t1434;
t1271 = -qJD(5) * t1360 + t1551;
t1335 = t1360 * t1378;
t1235 = t1271 - t1335;
t1236 = t1272 - t1334;
t1163 = t1235 * t1435 - t1236 * t1431;
t1317 = t1357 - t1356;
t1136 = t1163 * t1432 - t1317 * t1436;
t1137 = t1163 * t1436 + t1317 * t1432;
t1161 = t1235 * t1431 + t1236 * t1435;
t1523 = t1137 * t1433 - t1161 * t1437;
t1060 = -t1136 * t1426 + t1429 * t1523;
t1093 = t1137 * t1437 + t1161 * t1433;
t1533 = t1060 * t1438 + t1093 * t1434;
t1286 = -t1376 - t1356;
t1206 = t1286 * t1435 - t1618;
t1144 = t1206 * t1432 + t1235 * t1436;
t1145 = t1206 * t1436 - t1235 * t1432;
t1205 = t1286 * t1431 + t1617;
t1521 = t1145 * t1433 - t1205 * t1437;
t1069 = -t1426 * t1144 + t1429 * t1521;
t1107 = t1145 * t1437 + t1205 * t1433;
t1532 = t1069 * t1438 + t1107 * t1434;
t1308 = -t1357 - t1376;
t1210 = -t1308 * t1431 - t1581;
t1238 = (qJD(5) + t1378) * t1358 + t1491;
t1150 = t1210 * t1432 + t1238 * t1436;
t1151 = t1210 * t1436 - t1238 * t1432;
t1209 = t1308 * t1435 - t1589;
t1519 = t1151 * t1433 - t1209 * t1437;
t1073 = -t1426 * t1150 + t1429 * t1519;
t1117 = t1151 * t1437 + t1209 * t1433;
t1531 = t1073 * t1438 + t1117 * t1434;
t1330 = -t1357 + t1376;
t1223 = -t1330 * t1431 + t1617;
t1154 = t1223 * t1432 - t1237 * t1436;
t1156 = t1223 * t1436 + t1237 * t1432;
t1221 = t1330 * t1435 + t1618;
t1518 = t1156 * t1433 - t1221 * t1437;
t1079 = -t1426 * t1154 + t1429 * t1518;
t1121 = t1156 * t1437 + t1221 * t1433;
t1530 = t1079 * t1438 + t1121 * t1434;
t1329 = t1356 - t1376;
t1224 = t1329 * t1435 - t1589;
t1233 = -t1271 - t1335;
t1155 = t1224 * t1432 + t1233 * t1436;
t1157 = t1224 * t1436 - t1233 * t1432;
t1222 = t1329 * t1431 + t1581;
t1517 = t1157 * t1433 - t1222 * t1437;
t1080 = -t1426 * t1155 + t1429 * t1517;
t1122 = t1157 * t1437 + t1222 * t1433;
t1529 = t1080 * t1438 + t1122 * t1434;
t1230 = -t1271 * t1431 + t1358 * t1598;
t1191 = t1230 * t1432 + t1557;
t1193 = t1230 * t1436 - t1559;
t1229 = -t1271 * t1435 - t1358 * t1599;
t1511 = t1193 * t1433 + t1229 * t1437;
t1103 = -t1426 * t1191 + t1429 * t1511;
t1132 = t1193 * t1437 - t1229 * t1433;
t1528 = t1103 * t1438 + t1132 * t1434;
t1232 = t1272 * t1435 - t1360 * t1599;
t1192 = t1232 * t1432 - t1557;
t1194 = t1232 * t1436 + t1559;
t1231 = t1272 * t1431 + t1360 * t1598;
t1510 = t1194 * t1433 - t1231 * t1437;
t1104 = -t1426 * t1192 + t1429 * t1510;
t1133 = t1194 * t1437 + t1231 * t1433;
t1527 = t1104 * t1438 + t1133 * t1434;
t1268 = (-t1358 * t1435 + t1360 * t1431) * t1378;
t1227 = t1268 * t1432 - t1336 * t1436;
t1228 = t1268 * t1436 + t1336 * t1432;
t1267 = (-t1358 * t1431 - t1360 * t1435) * t1378;
t1507 = t1228 * t1433 - t1267 * t1437;
t1126 = -t1426 * t1227 + t1429 * t1507;
t1175 = t1228 * t1437 + t1267 * t1433;
t1525 = t1126 * t1438 + t1175 * t1434;
t1304 = -t1384 * t1414 + t1550;
t1306 = t1338 - t1373;
t1240 = t1304 * t1432 - t1306 * t1436;
t1242 = t1304 * t1436 + t1306 * t1432;
t1328 = t1380 + t1381;
t1505 = t1242 * t1433 + t1328 * t1437;
t1142 = -t1426 * t1240 + t1429 * t1505;
t1198 = t1242 * t1437 - t1328 * t1433;
t1522 = t1142 * t1438 + t1198 * t1434;
t1239 = t1305 * t1436 - t1432 * t1615;
t1241 = -t1305 * t1432 - t1436 * t1615;
t1349 = t1381 - t1380;
t1506 = t1241 * t1433 - t1349 * t1437;
t1149 = -t1426 * t1239 + t1429 * t1506;
t1208 = t1241 * t1437 + t1349 * t1433;
t1520 = t1149 * t1438 + t1208 * t1434;
t1262 = t1433 * t1346 - t1573;
t1503 = -t1437 * t1262 + t1433 * t1263;
t1167 = t1426 * t1319 + t1429 * t1503;
t1195 = t1262 * t1433 + t1263 * t1437;
t1516 = t1167 * t1438 + t1195 * t1434;
t1343 = -t1565 - t1380;
t1269 = t1343 * t1432 + t1611;
t1270 = t1343 * t1436 - t1612;
t1502 = t1270 * t1433 - t1437 * t1615;
t1171 = -t1426 * t1269 + t1429 * t1502;
t1217 = t1270 * t1437 + t1433 * t1615;
t1515 = t1171 * t1438 + t1217 * t1434;
t1350 = -t1381 - t1565;
t1276 = t1350 * t1436 + t1587;
t1277 = -t1350 * t1432 + t1579;
t1307 = (0.2e1 * qJD(4) - t1414) * t1382 + t1482;
t1501 = t1277 * t1433 + t1307 * t1437;
t1179 = -t1426 * t1276 + t1429 * t1501;
t1220 = t1277 * t1437 - t1307 * t1433;
t1514 = t1179 * t1438 + t1220 * t1434;
t1366 = -t1381 + t1565;
t1282 = t1366 * t1436 + t1612;
t1284 = -t1366 * t1432 + t1611;
t1500 = t1284 * t1433 - t1306 * t1437;
t1182 = -t1426 * t1282 + t1429 * t1500;
t1225 = t1284 * t1437 + t1306 * t1433;
t1513 = t1182 * t1438 + t1225 * t1434;
t1365 = t1380 - t1565;
t1283 = t1365 * t1432 - t1579;
t1285 = t1365 * t1436 + t1587;
t1302 = t1372 + t1474;
t1499 = t1285 * t1433 + t1302 * t1437;
t1183 = -t1426 * t1283 + t1429 * t1499;
t1226 = t1285 * t1437 - t1302 * t1433;
t1512 = t1183 * t1438 + t1226 * t1434;
t1294 = -t1436 * t1474 - t1545;
t1295 = t1432 * t1474 - t1543;
t1476 = t1295 * t1433 + t1562;
t1201 = -t1426 * t1294 + t1429 * t1476;
t1257 = t1295 * t1437 - t1558;
t1509 = t1201 * t1438 + t1257 * t1434;
t1296 = t1338 * t1432 - t1544;
t1297 = t1338 * t1436 + t1546;
t1475 = t1297 * t1433 - t1562;
t1202 = -t1426 * t1296 + t1429 * t1475;
t1258 = t1297 * t1437 + t1558;
t1508 = t1202 * t1438 + t1258 * t1434;
t1322 = t1545 + t1544;
t1323 = t1543 - t1546;
t1492 = t1323 * t1433 + t1386 * t1437;
t1249 = -t1426 * t1322 + t1429 * t1492;
t1293 = t1323 * t1437 - t1386 * t1433;
t1504 = t1249 * t1438 + t1293 * t1434;
t1399 = t1570 * t1595;
t1369 = -t1401 + t1390;
t1370 = t1400 + t1540;
t1487 = -t1369 * t1437 + t1370 * t1433;
t1291 = t1426 * t1399 + t1429 * t1487;
t1320 = t1369 * t1433 + t1370 * t1437;
t1498 = t1291 * t1438 + t1320 * t1434;
t1398 = (t1423 - t1424) * t1595;
t1488 = t1368 * t1437 - t1433 * t1609;
t1292 = -t1426 * t1398 + t1429 * t1488;
t1321 = -t1368 * t1433 - t1437 * t1609;
t1497 = t1292 * t1438 + t1321 * t1434;
t1367 = (t1566 + (0.2e1 * qJD(3) + t1591) * t1578) * t1426;
t1486 = t1377 * t1437 - t1584;
t1301 = -t1426 * t1367 + t1429 * t1486;
t1496 = t1301 * t1438 + t1345 * t1434;
t1391 = t1549 - t1561;
t1485 = t1391 * t1437 + t1585;
t1314 = -t1426 * t1369 + t1429 * t1485;
t1351 = -t1391 * t1433 + t1575;
t1495 = t1314 * t1438 + t1351 * t1434;
t1392 = -t1549 + t1560;
t1483 = t1392 * t1433 + t1574;
t1315 = -t1426 * t1370 + t1429 * t1483;
t1352 = t1392 * t1437 - t1584;
t1494 = t1315 * t1438 + t1352 * t1434;
t1484 = t1393 * t1433 + t1575;
t1316 = -t1426 * t1609 + t1429 * t1484;
t1493 = t1316 * t1438 + t1353 * t1434;
t1421 = t1426 * t1422;
t1339 = (-t1421 * t1583 - t1429 * t1411 + (-t1429 * t1477 + t1437 * t1567) * t1426) * t1437;
t1361 = -t1424 * t1478 - t1433 * t1540;
t1490 = t1339 * t1438 + t1361 * t1434;
t1342 = (t1429 * t1390 + (t1421 * t1439 + t1429 * t1478) * t1437) * t1433;
t1362 = t1437 * t1390 - t1423 * t1478;
t1489 = t1342 * t1438 + t1362 * t1434;
t1309 = t1438 * t1354 - t1434 * t1355;
t1479 = qJDD(2) * t1434 + t1438 * t1439;
t1396 = t1479 * t1430;
t1408 = qJDD(2) * t1438 - t1434 * t1439;
t1481 = t1396 * t1428 + t1408 * t1425;
t1480 = t1396 * t1425 - t1408 * t1428;
t1470 = pkin(4) * t1235 + pkin(10) * t1206 - t1582;
t1469 = pkin(4) * t1238 + pkin(10) * t1210 + t1590;
t989 = -pkin(9) * t1026 + (-pkin(10) * t1436 + t1605) * t1044;
t995 = -pkin(3) * t1026 - t1547;
t1463 = pkin(8) * t1002 + t1433 * t989 + t1437 * t995;
t980 = pkin(9) * t1027 + (-pkin(10) * t1432 + t1564) * t1044;
t986 = t1429 * t1026 + t1426 * t1536;
t958 = -pkin(2) * t986 - t1426 * t980 + t1429 * t1463;
t961 = -t1433 * t995 + t1437 * t989 + (-t1426 * t986 - t1429 * t987) * pkin(8);
t971 = t1002 * t1438 - t1434 * t987;
t1468 = pkin(7) * t971 + t1434 * t961 + t1438 * t958;
t1020 = -t1047 * t1434 + t1091 * t1438;
t1046 = t1429 * t1110 + t1426 * t1526;
t1092 = -pkin(3) * t1244 + pkin(9) * t1111;
t1445 = pkin(8) * t1091 + t1110 * t1548;
t993 = -pkin(2) * t1046 - t1426 * t1092 + t1429 * t1445;
t994 = (-pkin(9) * t1437 + t1606) * t1110 + (-t1046 * t1426 - t1047 * t1429) * pkin(8);
t1467 = pkin(7) * t1020 + t1434 * t994 + t1438 * t993;
t1022 = -t1056 * t1434 + t1086 * t1438;
t1032 = -pkin(10) * t1160 - t1044;
t1006 = pkin(9) * t1130 + t1432 * t1032 + t1160 * t1564;
t1055 = t1429 * t1129 + t1426 * t1524;
t1009 = -pkin(9) * t1129 + t1032 * t1436 + t1160 * t1605;
t1448 = pkin(4) * t1273 + pkin(10) * t1162 + t1045;
t1018 = -pkin(3) * t1129 - t1448;
t1455 = pkin(8) * t1086 + t1009 * t1433 + t1018 * t1437;
t970 = -pkin(2) * t1055 - t1426 * t1006 + t1429 * t1455;
t974 = t1437 * t1009 - t1433 * t1018 + (-t1055 * t1426 - t1056 * t1429) * pkin(8);
t1466 = pkin(7) * t1022 + t1434 * t974 + t1438 * t970;
t1036 = -t1069 * t1434 + t1107 * t1438;
t1075 = -pkin(4) * t1205 + t1099;
t1108 = -pkin(10) * t1205 + t1590;
t1019 = -pkin(3) * t1205 + pkin(9) * t1145 + t1075 * t1436 + t1108 * t1432;
t1068 = t1429 * t1144 + t1426 * t1521;
t1024 = -pkin(9) * t1144 - t1075 * t1432 + t1108 * t1436;
t1061 = -pkin(3) * t1144 - t1470;
t1454 = pkin(8) * t1107 + t1024 * t1433 + t1061 * t1437;
t976 = -pkin(2) * t1068 - t1426 * t1019 + t1429 * t1454;
t985 = t1437 * t1024 - t1433 * t1061 + (-t1068 * t1426 - t1069 * t1429) * pkin(8);
t1465 = pkin(7) * t1036 + t1434 * t985 + t1438 * t976;
t1039 = -t1073 * t1434 + t1117 * t1438;
t1076 = -pkin(4) * t1209 + t1100;
t1112 = -pkin(10) * t1209 + t1582;
t1021 = -pkin(3) * t1209 + pkin(9) * t1151 + t1076 * t1436 + t1112 * t1432;
t1072 = t1429 * t1150 + t1426 * t1519;
t1025 = -pkin(9) * t1150 - t1076 * t1432 + t1112 * t1436;
t1062 = -pkin(3) * t1150 - t1469;
t1453 = pkin(8) * t1117 + t1025 * t1433 + t1062 * t1437;
t978 = -pkin(2) * t1072 - t1426 * t1021 + t1429 * t1453;
t988 = t1437 * t1025 - t1433 * t1062 + (-t1072 * t1426 - t1073 * t1429) * pkin(8);
t1464 = pkin(7) * t1039 + t1434 * t988 + t1438 * t978;
t1085 = pkin(3) * t1328 + pkin(9) * t1242 + t1111;
t1141 = t1240 * t1429 + t1426 * t1505;
t1090 = -pkin(9) * t1240 - t1110;
t1449 = pkin(8) * t1198 + t1090 * t1433 - t1240 * t1602;
t1013 = -pkin(2) * t1141 - t1426 * t1085 + t1429 * t1449;
t1033 = t1240 * t1606 + t1437 * t1090 + (-t1141 * t1426 - t1142 * t1429) * pkin(8);
t1106 = -t1142 * t1434 + t1198 * t1438;
t1462 = pkin(7) * t1106 + t1013 * t1438 + t1033 * t1434;
t1158 = -pkin(3) * t1615 + pkin(9) * t1270 - t1580;
t1170 = t1429 * t1269 + t1426 * t1502;
t1138 = -pkin(3) * t1269 + t1176;
t1184 = -pkin(9) * t1269 + t1588;
t1452 = pkin(8) * t1217 + t1138 * t1437 + t1184 * t1433;
t1038 = -pkin(2) * t1170 - t1426 * t1158 + t1429 * t1452;
t1049 = -t1433 * t1138 + t1437 * t1184 + (-t1170 * t1426 - t1171 * t1429) * pkin(8);
t1123 = -t1171 * t1434 + t1217 * t1438;
t1461 = pkin(7) * t1123 + t1038 * t1438 + t1049 * t1434;
t1159 = pkin(3) * t1307 + pkin(9) * t1277 + t1588;
t1178 = t1429 * t1276 + t1426 * t1501;
t1143 = -pkin(3) * t1276 + t1177;
t1185 = -pkin(9) * t1276 + t1580;
t1451 = pkin(8) * t1220 + t1143 * t1437 + t1185 * t1433;
t1041 = -pkin(2) * t1178 - t1426 * t1159 + t1429 * t1451;
t1054 = -t1433 * t1143 + t1437 * t1185 + (-t1178 * t1426 - t1179 * t1429) * pkin(8);
t1124 = -t1179 * t1434 + t1220 * t1438;
t1460 = pkin(7) * t1124 + t1041 * t1438 + t1054 * t1434;
t1166 = -t1429 * t1319 + t1426 * t1503;
t1105 = (-t1166 * t1426 - t1167 * t1429) * pkin(8);
t1118 = -t1167 * t1434 + t1195 * t1438;
t1119 = pkin(8) * t1195 * t1429 - pkin(2) * t1166;
t1459 = pkin(7) * t1118 + t1105 * t1434 + t1119 * t1438;
t1289 = -t1429 * t1399 + t1426 * t1487;
t1131 = (-t1289 * t1426 - t1291 * t1429) * pkin(8) - t1503;
t1450 = pkin(8) * t1320 + t1195;
t1140 = -pkin(2) * t1289 + t1429 * t1450;
t1246 = -t1291 * t1434 + t1320 * t1438;
t1458 = pkin(7) * t1246 + t1131 * t1434 + t1140 * t1438;
t1300 = t1429 * t1367 + t1426 * t1486;
t1165 = -pkin(2) * t1300 + t1426 * t1263 + t1429 * t1542;
t1196 = -t1577 + (-t1300 * t1426 - t1301 * t1429) * pkin(8);
t1256 = -t1301 * t1434 + t1345 * t1438;
t1457 = pkin(7) * t1256 + t1165 * t1438 + t1196 * t1434;
t1313 = t1426 * t1484 + t1429 * t1609;
t1173 = -pkin(2) * t1313 + t1426 * t1262 + t1429 * t1541;
t1197 = -t1586 + (-t1313 * t1426 - t1316 * t1429) * pkin(8);
t1266 = -t1316 * t1434 + t1353 * t1438;
t1456 = pkin(7) * t1266 + t1173 * t1438 + t1197 * t1434;
t1447 = -t1429 * t1439 + t1537;
t1416 = t1430 * qJDD(2);
t1397 = t1408 * t1430;
t1395 = t1408 * t1427;
t1394 = t1479 * t1427;
t1364 = -t1397 * t1425 - t1428 * t1479;
t1363 = t1397 * t1428 - t1425 * t1479;
t1347 = t1374 * t1438 + t1434 * t1593;
t1341 = (t1426 * t1390 + t1447 * t1596) * t1433;
t1340 = (-t1422 * t1433 * t1447 + t1426 * t1540) * t1437;
t1327 = -t1471 + (t1394 * t1427 + t1396 * t1430) * pkin(7);
t1326 = -t1472 + (-t1395 * t1427 - t1397 * t1430) * pkin(7);
t1325 = t1430 * t1600 + (-t1427 * t1429 - t1430 * t1592) * t1415;
t1324 = t1427 * t1600 + (-t1427 * t1592 + t1429 * t1430) * t1415;
t1312 = t1429 * t1370 + t1426 * t1483;
t1311 = t1429 * t1369 + t1426 * t1485;
t1299 = t1310 * t1430;
t1290 = t1398 * t1429 + t1426 * t1488;
t1288 = -t1342 * t1434 + t1362 * t1438;
t1287 = -t1339 * t1434 + t1361 * t1438;
t1281 = -pkin(1) * t1395 + t1427 * t1354 + t1430 * t1471 - t1479 * t1604;
t1280 = pkin(1) * t1394 + t1427 * t1355 - t1408 * t1604 - t1430 * t1472;
t1279 = pkin(1) * t1397 - t1430 * t1354 + (-pkin(7) * t1479 + t1471) * t1427;
t1278 = -pkin(1) * t1396 - t1430 * t1355 + (-pkin(7) * t1408 - t1472) * t1427;
t1275 = t1427 * t1402 + (t1555 - t1309) * t1430;
t1274 = -t1309 * t1427 - t1430 * t1539;
t1265 = -t1315 * t1434 + t1352 * t1438;
t1264 = -t1314 * t1434 + t1351 * t1438;
t1253 = -t1427 * t1341 + t1430 * t1489;
t1252 = -t1427 * t1340 + t1430 * t1490;
t1251 = t1430 * t1341 + t1427 * t1489;
t1250 = t1430 * t1340 + t1427 * t1490;
t1248 = t1429 * t1322 + t1426 * t1492;
t1247 = -t1292 * t1434 + t1321 * t1438;
t1219 = pkin(1) * t1275 + pkin(7) * t1298;
t1218 = -pkin(1) * t1274 + t1310 * t1604;
t1216 = -t1427 * t1313 + t1430 * t1493;
t1215 = -t1427 * t1312 + t1430 * t1494;
t1214 = -t1427 * t1311 + t1430 * t1495;
t1213 = t1430 * t1313 + t1427 * t1493;
t1212 = t1430 * t1312 + t1427 * t1494;
t1211 = t1430 * t1311 + t1427 * t1495;
t1207 = (-t1274 * t1427 - t1275 * t1430) * pkin(7);
t1204 = -t1427 * t1300 + t1430 * t1496;
t1203 = t1430 * t1300 + t1427 * t1496;
t1200 = t1429 * t1296 + t1426 * t1475;
t1199 = t1429 * t1294 + t1426 * t1476;
t1190 = -t1249 * t1434 + t1293 * t1438;
t1189 = -t1427 * t1290 + t1430 * t1497;
t1188 = -t1427 * t1289 + t1430 * t1498;
t1187 = t1430 * t1290 + t1427 * t1497;
t1186 = t1430 * t1289 + t1427 * t1498;
t1181 = t1429 * t1283 + t1426 * t1499;
t1180 = t1429 * t1282 + t1426 * t1500;
t1172 = pkin(2) * t1316 - t1429 * t1262 + t1426 * t1541;
t1164 = pkin(2) * t1301 - t1429 * t1263 + t1426 * t1542;
t1153 = -t1202 * t1434 + t1258 * t1438;
t1152 = -t1201 * t1434 + t1257 * t1438;
t1148 = t1429 * t1239 + t1426 * t1506;
t1139 = pkin(2) * t1291 + t1426 * t1450;
t1135 = -t1427 * t1248 + t1430 * t1504;
t1134 = t1430 * t1248 + t1427 * t1504;
t1128 = -t1183 * t1434 + t1226 * t1438;
t1127 = -t1182 * t1434 + t1225 * t1438;
t1125 = t1429 * t1227 + t1426 * t1507;
t1120 = pkin(2) * t1167 + t1195 * t1603;
t1116 = -t1427 * t1200 + t1430 * t1508;
t1115 = -t1427 * t1199 + t1430 * t1509;
t1114 = t1430 * t1200 + t1427 * t1508;
t1113 = t1199 * t1430 + t1427 * t1509;
t1109 = -t1149 * t1434 + t1208 * t1438;
t1102 = t1429 * t1192 + t1426 * t1510;
t1101 = t1429 * t1191 + t1426 * t1511;
t1097 = -t1427 * t1181 + t1430 * t1512;
t1096 = -t1427 * t1180 + t1430 * t1513;
t1095 = t1430 * t1181 + t1427 * t1512;
t1094 = t1430 * t1180 + t1427 * t1513;
t1089 = -t1126 * t1434 + t1175 * t1438;
t1088 = -t1427 * t1178 + t1430 * t1514;
t1087 = t1430 * t1178 + t1427 * t1514;
t1084 = -t1427 * t1170 + t1430 * t1515;
t1083 = t1430 * t1170 + t1427 * t1515;
t1082 = -t1427 * t1166 + t1430 * t1516;
t1081 = t1430 * t1166 + t1427 * t1516;
t1078 = t1429 * t1155 + t1426 * t1517;
t1077 = t1429 * t1154 + t1426 * t1518;
t1074 = -t1434 * t1173 + t1438 * t1197 + (-t1213 * t1427 - t1216 * t1430) * pkin(7);
t1071 = -t1427 * t1148 + t1430 * t1520;
t1070 = t1430 * t1148 + t1427 * t1520;
t1067 = -t1434 * t1165 + t1438 * t1196 + (-t1203 * t1427 - t1204 * t1430) * pkin(7);
t1066 = -t1427 * t1141 + t1430 * t1522;
t1065 = t1430 * t1141 + t1427 * t1522;
t1064 = -t1104 * t1434 + t1133 * t1438;
t1063 = -t1103 * t1434 + t1132 * t1438;
t1059 = t1429 * t1136 + t1426 * t1523;
t1058 = -pkin(1) * t1213 - t1427 * t1172 + t1430 * t1456;
t1057 = pkin(1) * t1216 + t1430 * t1172 + t1427 * t1456;
t1053 = -pkin(1) * t1203 - t1427 * t1164 + t1430 * t1457;
t1052 = pkin(1) * t1204 + t1430 * t1164 + t1427 * t1457;
t1051 = -t1427 * t1125 + t1430 * t1525;
t1050 = t1430 * t1125 + t1427 * t1525;
t1048 = t1438 * t1131 - t1434 * t1140 + (-t1186 * t1427 - t1188 * t1430) * pkin(7);
t1043 = -t1080 * t1434 + t1122 * t1438;
t1042 = -t1079 * t1434 + t1121 * t1438;
t1040 = pkin(2) * t1179 + t1429 * t1159 + t1426 * t1451;
t1037 = pkin(2) * t1171 + t1429 * t1158 + t1426 * t1452;
t1035 = -pkin(1) * t1186 - t1427 * t1139 + t1430 * t1458;
t1034 = pkin(1) * t1188 + t1430 * t1139 + t1427 * t1458;
t1031 = -t1427 * t1102 + t1430 * t1527;
t1030 = -t1427 * t1101 + t1430 * t1528;
t1029 = t1430 * t1102 + t1427 * t1527;
t1028 = t1430 * t1101 + t1427 * t1528;
t1023 = -t1060 * t1434 + t1093 * t1438;
t1017 = -t1427 * t1078 + t1430 * t1529;
t1016 = -t1427 * t1077 + t1430 * t1530;
t1015 = t1430 * t1078 + t1427 * t1529;
t1014 = t1430 * t1077 + t1427 * t1530;
t1012 = pkin(2) * t1142 + t1429 * t1085 + t1426 * t1449;
t1011 = -t1427 * t1072 + t1430 * t1531;
t1010 = t1430 * t1072 + t1427 * t1531;
t1008 = -t1427 * t1068 + t1430 * t1532;
t1007 = t1430 * t1068 + t1427 * t1532;
t1005 = t1438 * t1105 - t1434 * t1119 + (-t1081 * t1427 - t1082 * t1430) * pkin(7);
t1004 = -t1427 * t1059 + t1430 * t1533;
t1003 = t1430 * t1059 + t1427 * t1533;
t1001 = -t1055 * t1427 + t1430 * t1534;
t1000 = t1430 * t1055 + t1427 * t1534;
t999 = -pkin(1) * t1081 - t1427 * t1120 + t1430 * t1459;
t998 = pkin(1) * t1082 + t1430 * t1120 + t1427 * t1459;
t997 = -t1427 * t1046 + t1430 * t1535;
t996 = t1430 * t1046 + t1427 * t1535;
t992 = pkin(2) * t1047 + t1429 * t1092 + t1426 * t1445;
t991 = -t1434 * t1041 + t1438 * t1054 + (-t1087 * t1427 - t1088 * t1430) * pkin(7);
t990 = -t1434 * t1038 + t1438 * t1049 + (-t1083 * t1427 - t1084 * t1430) * pkin(7);
t984 = -pkin(1) * t1087 - t1427 * t1040 + t1430 * t1460;
t983 = pkin(1) * t1088 + t1430 * t1040 + t1427 * t1460;
t982 = -pkin(1) * t1083 - t1427 * t1037 + t1430 * t1461;
t981 = pkin(1) * t1084 + t1430 * t1037 + t1427 * t1461;
t979 = -t1434 * t1013 + t1438 * t1033 + (-t1065 * t1427 - t1066 * t1430) * pkin(7);
t977 = pkin(2) * t1073 + t1429 * t1021 + t1426 * t1453;
t975 = pkin(2) * t1069 + t1429 * t1019 + t1426 * t1454;
t973 = -pkin(1) * t1065 - t1427 * t1012 + t1430 * t1462;
t972 = pkin(1) * t1066 + t1430 * t1012 + t1427 * t1462;
t969 = pkin(2) * t1056 + t1429 * t1006 + t1426 * t1455;
t968 = -t1427 * t986 + t1430 * t1538;
t967 = t1427 * t1538 + t1430 * t986;
t966 = -t1434 * t993 + t1438 * t994 + (-t1427 * t996 - t1430 * t997) * pkin(7);
t965 = -t1434 * t978 + t1438 * t988 + (-t1010 * t1427 - t1011 * t1430) * pkin(7);
t964 = -t1434 * t976 + t1438 * t985 + (-t1007 * t1427 - t1008 * t1430) * pkin(7);
t963 = -pkin(1) * t996 - t1427 * t992 + t1430 * t1467;
t962 = pkin(1) * t997 + t1427 * t1467 + t1430 * t992;
t960 = -pkin(1) * t1010 - t1427 * t977 + t1430 * t1464;
t959 = pkin(1) * t1011 + t1427 * t1464 + t1430 * t977;
t957 = pkin(2) * t987 + t1426 * t1463 + t1429 * t980;
t956 = -pkin(1) * t1007 - t1427 * t975 + t1430 * t1465;
t955 = pkin(1) * t1008 + t1427 * t1465 + t1430 * t975;
t954 = -t1434 * t970 + t1438 * t974 + (-t1000 * t1427 - t1001 * t1430) * pkin(7);
t953 = -pkin(1) * t1000 - t1427 * t969 + t1430 * t1466;
t952 = pkin(1) * t1001 + t1427 * t1466 + t1430 * t969;
t951 = -t1434 * t958 + t1438 * t961 + (-t1427 * t967 - t1430 * t968) * pkin(7);
t950 = -pkin(1) * t967 - t1427 * t957 + t1430 * t1468;
t949 = pkin(1) * t968 + t1427 * t1468 + t1430 * t957;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1614, -t1613, -t1607, -qJ(1) * t1607, 0, 0, -t1480, 0, t1364, t1425 * t1568, -qJ(1) * t1363 - t1281 * t1425 + t1326 * t1428, qJ(1) * t1481 - t1425 * t1280 + t1428 * t1327, -t1299 * t1425 + t1309 * t1428, t1428 * t1207 - t1425 * t1218 - qJ(1) * (t1275 * t1428 + t1310 * t1425), -t1253 * t1425 + t1288 * t1428, -t1189 * t1425 + t1247 * t1428, -t1214 * t1425 + t1264 * t1428, -t1252 * t1425 + t1287 * t1428, -t1215 * t1425 + t1265 * t1428, -t1325 * t1425 + t1347 * t1428, t1428 * t1074 - t1425 * t1058 - qJ(1) * (t1216 * t1428 + t1266 * t1425), t1428 * t1067 - t1425 * t1053 - qJ(1) * (t1204 * t1428 + t1256 * t1425), t1428 * t1048 - t1425 * t1035 - qJ(1) * (t1188 * t1428 + t1246 * t1425), t1428 * t1005 - t1425 * t999 - qJ(1) * (t1082 * t1428 + t1118 * t1425), -t1116 * t1425 + t1153 * t1428, -t1071 * t1425 + t1109 * t1428, -t1096 * t1425 + t1127 * t1428, -t1115 * t1425 + t1152 * t1428, -t1097 * t1425 + t1128 * t1428, -t1135 * t1425 + t1190 * t1428, t1428 * t990 - t1425 * t982 - qJ(1) * (t1084 * t1428 + t1123 * t1425), t1428 * t991 - t1425 * t984 - qJ(1) * (t1088 * t1428 + t1124 * t1425), t1428 * t979 - t1425 * t973 - qJ(1) * (t1066 * t1428 + t1106 * t1425), t1428 * t966 - t1425 * t963 - qJ(1) * (t1020 * t1425 + t1428 * t997), -t1031 * t1425 + t1064 * t1428, -t1004 * t1425 + t1023 * t1428, -t1016 * t1425 + t1042 * t1428, -t1030 * t1425 + t1063 * t1428, -t1017 * t1425 + t1043 * t1428, -t1051 * t1425 + t1089 * t1428, t1428 * t964 - t1425 * t956 - qJ(1) * (t1008 * t1428 + t1036 * t1425), t1428 * t965 - t1425 * t960 - qJ(1) * (t1011 * t1428 + t1039 * t1425), t1428 * t954 - t1425 * t953 - qJ(1) * (t1001 * t1428 + t1022 * t1425), t1428 * t951 - t1425 * t950 - qJ(1) * (t1425 * t971 + t1428 * t968); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1613, -t1614, t1608, qJ(1) * t1608, 0, 0, t1481, 0, t1363, -t1428 * t1568, qJ(1) * t1364 + t1281 * t1428 + t1326 * t1425, qJ(1) * t1480 + t1428 * t1280 + t1425 * t1327, t1299 * t1428 + t1309 * t1425, t1425 * t1207 + t1428 * t1218 + qJ(1) * (-t1275 * t1425 + t1310 * t1428), t1253 * t1428 + t1288 * t1425, t1189 * t1428 + t1247 * t1425, t1214 * t1428 + t1264 * t1425, t1252 * t1428 + t1287 * t1425, t1215 * t1428 + t1265 * t1425, t1325 * t1428 + t1347 * t1425, t1425 * t1074 + t1428 * t1058 + qJ(1) * (-t1216 * t1425 + t1266 * t1428), t1425 * t1067 + t1428 * t1053 + qJ(1) * (-t1204 * t1425 + t1256 * t1428), t1425 * t1048 + t1428 * t1035 + qJ(1) * (-t1188 * t1425 + t1246 * t1428), t1425 * t1005 + t1428 * t999 + qJ(1) * (-t1082 * t1425 + t1118 * t1428), t1116 * t1428 + t1153 * t1425, t1071 * t1428 + t1109 * t1425, t1096 * t1428 + t1127 * t1425, t1115 * t1428 + t1152 * t1425, t1097 * t1428 + t1128 * t1425, t1135 * t1428 + t1190 * t1425, t1425 * t990 + t1428 * t982 + qJ(1) * (-t1084 * t1425 + t1123 * t1428), t1425 * t991 + t1428 * t984 + qJ(1) * (-t1088 * t1425 + t1124 * t1428), t1425 * t979 + t1428 * t973 + qJ(1) * (-t1066 * t1425 + t1106 * t1428), t1425 * t966 + t1428 * t963 + qJ(1) * (t1020 * t1428 - t1425 * t997), t1031 * t1428 + t1064 * t1425, t1004 * t1428 + t1023 * t1425, t1016 * t1428 + t1042 * t1425, t1030 * t1428 + t1063 * t1425, t1017 * t1428 + t1043 * t1425, t1051 * t1428 + t1089 * t1425, t1425 * t964 + t1428 * t956 + qJ(1) * (-t1008 * t1425 + t1036 * t1428), t1425 * t965 + t1428 * t960 + qJ(1) * (-t1011 * t1425 + t1039 * t1428), t1425 * t954 + t1428 * t953 + qJ(1) * (-t1001 * t1425 + t1022 * t1428), t1425 * t951 + t1428 * t950 + qJ(1) * (-t1425 * t968 + t1428 * t971); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1556, t1571, 0, 0, 0, 0, t1394, 0, t1395, t1416, t1279, t1278, t1298, t1219, t1251, t1187, t1211, t1250, t1212, t1324, t1057, t1052, t1034, t998, t1114, t1070, t1094, t1113, t1095, t1134, t981, t983, t972, t962, t1029, t1003, t1014, t1028, t1015, t1050, t955, t959, t952, t949; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1601, -t1556, 0, 0, 0, t1408, 0, -t1479, 0, t1326, t1327, t1309, t1207, t1288, t1247, t1264, t1287, t1265, t1347, t1074, t1067, t1048, t1005, t1153, t1109, t1127, t1152, t1128, t1190, t990, t991, t979, t966, t1064, t1023, t1042, t1063, t1043, t1089, t964, t965, t954, t951; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1601, 0, -t1571, 0, 0, 0, t1396, 0, t1397, -t1568, t1281, t1280, t1299, t1218, t1253, t1189, t1214, t1252, t1215, t1325, t1058, t1053, t1035, t999, t1116, t1071, t1096, t1115, t1097, t1135, t982, t984, t973, t963, t1031, t1004, t1016, t1030, t1017, t1051, t956, t960, t953, t950; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1556, t1571, 0, 0, 0, 0, t1394, 0, t1395, t1416, t1279, t1278, t1298, t1219, t1251, t1187, t1211, t1250, t1212, t1324, t1057, t1052, t1034, t998, t1114, t1070, t1094, t1113, t1095, t1134, t981, t983, t972, t962, t1029, t1003, t1014, t1028, t1015, t1050, t955, t959, t952, t949; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1439, 0, 0, -t1539, t1354, 0, t1362, t1321, t1351, t1361, t1352, t1374, t1197, t1196, t1131, t1105, t1258, t1208, t1225, t1257, t1226, t1293, t1049, t1054, t1033, t994, t1133, t1093, t1121, t1132, t1122, t1175, t985, t988, t974, t961; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1439, 0, qJDD(2), 0, t1539, 0, t1355, 0, t1342, t1292, t1314, t1339, t1315, -t1593, t1173, t1165, t1140, t1119, t1202, t1149, t1182, t1201, t1183, t1249, t1038, t1041, t1013, t993, t1104, t1060, t1079, t1103, t1080, t1126, t976, t978, t970, t958; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1354, -t1355, 0, 0, t1341, t1290, t1311, t1340, t1312, t1429 * t1415, t1172, t1164, t1139, t1120, t1200, t1148, t1180, t1199, t1181, t1248, t1037, t1040, t1012, t992, t1102, t1059, t1077, t1101, t1078, t1125, t975, t977, t969, t957; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1390, -t1609, t1387, -t1401, t1392, t1401, 0, -t1319, t1262, 0, t1297, t1241, t1284, t1295, t1285, t1323, t1184, t1185, t1090, -pkin(9) * t1110, t1194, t1137, t1156, t1193, t1157, t1228, t1024, t1025, t1009, t989; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1400, t1368, t1391, t1540, t1388, -t1400, t1319, 0, t1263, 0, -t1597, -t1349, -t1306, t1597, t1302, t1386, t1138, t1143, -pkin(3) * t1240, -pkin(3) * t1110, -t1231, -t1161, -t1221, t1229, -t1222, -t1267, t1061, t1062, t1018, t995; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1410, t1398, t1369, t1410, t1370, t1415, -t1262, -t1263, 0, 0, t1296, t1239, t1282, t1294, t1283, t1322, t1158, t1159, t1085, t1092, t1192, t1136, t1154, t1191, t1155, t1227, t1019, t1021, t1006, t980; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1338, -t1615, t1446, -t1373, t1365, t1373, 0, t1244, t1176, 0, t1232, t1163, t1223, t1230, t1224, t1268, t1108, t1112, t1032, -pkin(10) * t1044; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1372, t1305, t1366, -t1474, -t1331, t1372, -t1244, 0, t1177, 0, -t1318, -t1317, -t1237, t1318, t1233, -t1336, t1075, t1076, -pkin(4) * t1160, -pkin(4) * t1044; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1597, t1349, t1306, -t1597, -t1302, -t1386, -t1176, -t1177, 0, 0, t1231, t1161, t1221, -t1229, t1222, t1267, t1470, t1469, t1448, t1547; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1272, t1235, t1610, t1334, t1329, -t1334, 0, t1146, t1099, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1335, t1236, t1330, t1271, t1260, -t1335, -t1146, 0, t1100, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1318, t1317, t1237, -t1318, -t1233, t1336, -t1099, -t1100, 0, 0;];
m_new_reg = t1;

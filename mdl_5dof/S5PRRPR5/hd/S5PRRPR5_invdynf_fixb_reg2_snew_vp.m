% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5PRRPR5
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d5,theta1,theta4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:28
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5PRRPR5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR5_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPR5_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRPR5_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRPR5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRPR5_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:28:49
% EndTime: 2019-12-05 16:28:53
% DurationCPUTime: 3.73s
% Computational Cost: add. (15879->237), mult. (34523->370), div. (0->0), fcn. (25394->12), ass. (0->206)
t1548 = sin(pkin(5));
t1551 = cos(pkin(5));
t1547 = sin(pkin(9));
t1550 = cos(pkin(9));
t1581 = t1547 * g(1) - t1550 * g(2);
t1601 = -g(3) + qJDD(1);
t1609 = t1548 * t1601 + t1551 * t1581;
t1546 = sin(pkin(10));
t1549 = cos(pkin(10));
t1558 = cos(qJ(3));
t1599 = qJD(2) * t1558;
t1555 = sin(qJ(3));
t1600 = qJD(2) * t1555;
t1511 = t1546 * t1600 - t1549 * t1599;
t1506 = qJD(5) + t1511;
t1608 = qJD(5) + t1506;
t1513 = (t1546 * t1558 + t1549 * t1555) * qJD(2);
t1554 = sin(qJ(5));
t1557 = cos(qJ(5));
t1494 = -t1557 * qJD(3) + t1554 * t1513;
t1607 = t1494 ^ 2;
t1496 = t1554 * qJD(3) + t1557 * t1513;
t1606 = t1496 ^ 2;
t1605 = t1506 ^ 2;
t1604 = t1511 ^ 2;
t1603 = t1513 ^ 2;
t1602 = -2 * qJD(4);
t1598 = t1496 * t1494;
t1597 = t1511 * qJD(3);
t1596 = t1513 * qJD(3);
t1595 = t1513 * t1511;
t1543 = t1558 ^ 2;
t1561 = qJD(2) ^ 2;
t1594 = t1543 * t1561;
t1527 = -t1550 * g(1) - t1547 * g(2);
t1556 = sin(qJ(2));
t1559 = cos(qJ(2));
t1485 = t1559 * t1527 + t1609 * t1556;
t1480 = -t1561 * pkin(2) + qJDD(2) * pkin(7) + t1485;
t1593 = t1555 * t1480;
t1592 = t1555 * t1561;
t1591 = qJD(5) - t1506;
t1502 = -t1548 * t1581 + t1551 * t1601;
t1468 = t1558 * t1480 + t1555 * t1502;
t1542 = t1555 ^ 2;
t1590 = t1542 + t1543;
t1589 = t1555 * qJDD(2);
t1588 = qJD(3) * t1600;
t1587 = qJD(3) * t1599;
t1540 = t1558 * qJDD(2);
t1521 = t1540 - t1588;
t1528 = qJD(3) * pkin(3) - qJ(4) * t1600;
t1455 = -pkin(3) * t1594 + t1521 * qJ(4) - qJD(3) * t1528 + t1468;
t1520 = t1587 + t1589;
t1562 = qJDD(3) * pkin(3) - t1520 * qJ(4) - t1593 + (qJ(4) * qJD(2) * qJD(3) + pkin(3) * t1592 + t1502) * t1558;
t1425 = t1549 * t1455 + t1511 * t1602 + t1546 * t1562;
t1492 = t1549 * t1520 + t1546 * t1521;
t1585 = -t1492 + t1597;
t1584 = t1546 * t1455 - t1549 * t1562;
t1583 = t1557 * qJDD(3) - t1554 * t1492;
t1582 = t1546 * t1520 - t1549 * t1521;
t1580 = t1556 * t1527 - t1609 * t1559;
t1579 = -qJDD(5) - t1582;
t1486 = t1511 * pkin(4) - t1513 * pkin(8);
t1560 = qJD(3) ^ 2;
t1418 = -t1560 * pkin(4) + qJDD(3) * pkin(8) - t1511 * t1486 + t1425;
t1479 = -qJDD(2) * pkin(2) - t1561 * pkin(7) + t1580;
t1459 = -t1521 * pkin(3) - qJ(4) * t1594 + t1528 * t1600 + qJDD(4) + t1479;
t1474 = t1582 + t1596;
t1433 = t1474 * pkin(4) + t1585 * pkin(8) + t1459;
t1405 = -t1554 * t1418 + t1557 * t1433;
t1406 = t1557 * t1418 + t1554 * t1433;
t1391 = -t1554 * t1405 + t1557 * t1406;
t1417 = -qJDD(3) * pkin(4) - t1560 * pkin(8) + ((2 * qJD(4)) + t1486) * t1513 + t1584;
t1385 = t1546 * t1391 - t1549 * t1417;
t1386 = t1549 * t1391 + t1546 * t1417;
t1378 = -t1555 * t1385 + t1558 * t1386;
t1390 = t1557 * t1405 + t1554 * t1406;
t1578 = t1378 * t1556 - t1390 * t1559;
t1424 = t1513 * t1602 - t1584;
t1407 = t1549 * t1424 + t1546 * t1425;
t1408 = -t1546 * t1424 + t1549 * t1425;
t1393 = -t1555 * t1407 + t1558 * t1408;
t1577 = t1393 * t1556 - t1459 * t1559;
t1447 = -t1591 * t1496 + t1583;
t1564 = -t1554 * qJDD(3) - t1557 * t1492;
t1449 = t1591 * t1494 + t1564;
t1427 = t1557 * t1447 - t1554 * t1449;
t1466 = -t1606 - t1607;
t1415 = t1546 * t1427 - t1549 * t1466;
t1416 = t1549 * t1427 + t1546 * t1466;
t1398 = -t1555 * t1415 + t1558 * t1416;
t1426 = t1554 * t1447 + t1557 * t1449;
t1576 = t1398 * t1556 - t1426 * t1559;
t1457 = -t1579 - t1598;
t1469 = -t1605 - t1607;
t1437 = -t1554 * t1457 + t1557 * t1469;
t1446 = t1608 * t1496 - t1583;
t1420 = t1546 * t1437 - t1549 * t1446;
t1421 = t1549 * t1437 + t1546 * t1446;
t1400 = -t1555 * t1420 + t1558 * t1421;
t1436 = t1557 * t1457 + t1554 * t1469;
t1575 = t1400 * t1556 - t1436 * t1559;
t1458 = t1579 - t1598;
t1472 = -t1605 - t1606;
t1441 = t1557 * t1458 - t1554 * t1472;
t1448 = -t1608 * t1494 - t1564;
t1422 = t1546 * t1441 - t1549 * t1448;
t1423 = t1549 * t1441 + t1546 * t1448;
t1402 = -t1555 * t1422 + t1558 * t1423;
t1440 = t1554 * t1458 + t1557 * t1472;
t1574 = t1402 * t1556 - t1440 * t1559;
t1475 = -t1582 + t1596;
t1477 = -t1492 - t1597;
t1453 = t1546 * t1475 + t1549 * t1477;
t1454 = t1549 * t1475 - t1546 * t1477;
t1429 = -t1555 * t1453 + t1558 * t1454;
t1473 = -t1603 - t1604;
t1573 = t1429 * t1556 - t1473 * t1559;
t1487 = -t1560 - t1604;
t1488 = qJDD(3) - t1595;
t1460 = t1546 * t1487 + t1549 * t1488;
t1461 = t1549 * t1487 - t1546 * t1488;
t1435 = -t1555 * t1460 + t1558 * t1461;
t1572 = t1435 * t1556 - t1474 * t1559;
t1467 = t1558 * t1502 - t1593;
t1439 = -t1555 * t1467 + t1558 * t1468;
t1571 = t1439 * t1556 - t1479 * t1559;
t1489 = -qJDD(3) - t1595;
t1503 = -t1560 - t1603;
t1470 = t1546 * t1489 + t1549 * t1503;
t1471 = t1549 * t1489 - t1546 * t1503;
t1443 = -t1555 * t1470 + t1558 * t1471;
t1570 = t1443 * t1556 + t1559 * t1585;
t1569 = t1485 * t1556 - t1559 * t1580;
t1536 = t1558 * t1592;
t1529 = qJDD(3) + t1536;
t1535 = -t1560 - t1594;
t1499 = -t1555 * t1529 + t1558 * t1535;
t1522 = t1540 - 0.2e1 * t1588;
t1568 = t1499 * t1556 + t1522 * t1559;
t1530 = -qJDD(3) + t1536;
t1534 = -t1542 * t1561 - t1560;
t1500 = t1558 * t1530 - t1555 * t1534;
t1519 = 0.2e1 * t1587 + t1589;
t1567 = t1500 * t1556 - t1519 * t1559;
t1523 = t1590 * qJDD(2);
t1526 = t1590 * t1561;
t1566 = t1523 * t1556 + t1526 * t1559;
t1565 = t1559 * qJDD(2) - t1556 * t1561;
t1525 = -t1556 * qJDD(2) - t1559 * t1561;
t1510 = t1565 * t1551;
t1509 = t1525 * t1551;
t1508 = t1565 * t1548;
t1507 = t1525 * t1548;
t1498 = t1555 * t1530 + t1558 * t1534;
t1497 = t1558 * t1529 + t1555 * t1535;
t1493 = t1559 * t1523 - t1556 * t1526;
t1491 = t1566 * t1551;
t1490 = t1566 * t1548;
t1482 = t1559 * t1500 + t1556 * t1519;
t1481 = t1559 * t1499 - t1556 * t1522;
t1465 = -t1548 * t1498 + t1567 * t1551;
t1464 = -t1548 * t1497 + t1568 * t1551;
t1463 = t1551 * t1498 + t1567 * t1548;
t1462 = t1551 * t1497 + t1568 * t1548;
t1456 = t1559 * t1485 + t1556 * t1580;
t1445 = -t1548 * t1502 + t1569 * t1551;
t1444 = t1551 * t1502 + t1569 * t1548;
t1442 = t1558 * t1470 + t1555 * t1471;
t1438 = t1558 * t1467 + t1555 * t1468;
t1434 = t1558 * t1460 + t1555 * t1461;
t1432 = t1559 * t1443 - t1556 * t1585;
t1431 = t1559 * t1439 + t1556 * t1479;
t1430 = t1559 * t1435 + t1556 * t1474;
t1428 = t1558 * t1453 + t1555 * t1454;
t1419 = t1559 * t1429 + t1556 * t1473;
t1414 = -t1548 * t1442 + t1570 * t1551;
t1413 = t1551 * t1442 + t1570 * t1548;
t1412 = -t1548 * t1438 + t1571 * t1551;
t1411 = t1551 * t1438 + t1571 * t1548;
t1410 = -t1548 * t1434 + t1572 * t1551;
t1409 = t1551 * t1434 + t1572 * t1548;
t1404 = -t1548 * t1428 + t1573 * t1551;
t1403 = t1551 * t1428 + t1573 * t1548;
t1401 = t1558 * t1422 + t1555 * t1423;
t1399 = t1558 * t1420 + t1555 * t1421;
t1397 = t1558 * t1415 + t1555 * t1416;
t1396 = t1559 * t1402 + t1556 * t1440;
t1395 = t1559 * t1400 + t1556 * t1436;
t1394 = t1559 * t1398 + t1556 * t1426;
t1392 = t1558 * t1407 + t1555 * t1408;
t1389 = t1559 * t1393 + t1556 * t1459;
t1388 = -t1548 * t1401 + t1574 * t1551;
t1387 = t1551 * t1401 + t1574 * t1548;
t1384 = -t1548 * t1399 + t1575 * t1551;
t1383 = t1551 * t1399 + t1575 * t1548;
t1382 = -t1548 * t1397 + t1576 * t1551;
t1381 = t1551 * t1397 + t1576 * t1548;
t1380 = -t1548 * t1392 + t1577 * t1551;
t1379 = t1551 * t1392 + t1577 * t1548;
t1377 = t1558 * t1385 + t1555 * t1386;
t1376 = t1559 * t1378 + t1556 * t1390;
t1375 = -t1548 * t1377 + t1578 * t1551;
t1374 = t1551 * t1377 + t1578 * t1548;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1550 * t1527 - t1547 * t1581, 0, 0, 0, 0, 0, 0, -t1547 * t1510 + t1550 * t1525, -t1547 * t1509 - t1550 * t1565, 0, -t1547 * t1445 + t1550 * t1456, 0, 0, 0, 0, 0, 0, -t1547 * t1464 + t1550 * t1481, -t1547 * t1465 + t1550 * t1482, -t1547 * t1491 + t1550 * t1493, -t1547 * t1412 + t1550 * t1431, 0, 0, 0, 0, 0, 0, -t1547 * t1410 + t1550 * t1430, -t1547 * t1414 + t1550 * t1432, -t1547 * t1404 + t1550 * t1419, -t1547 * t1380 + t1550 * t1389, 0, 0, 0, 0, 0, 0, -t1547 * t1384 + t1550 * t1395, -t1547 * t1388 + t1550 * t1396, -t1547 * t1382 + t1550 * t1394, -t1547 * t1375 + t1550 * t1376; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1547 * t1527 + t1550 * t1581, 0, 0, 0, 0, 0, 0, t1550 * t1510 + t1547 * t1525, t1550 * t1509 - t1547 * t1565, 0, t1550 * t1445 + t1547 * t1456, 0, 0, 0, 0, 0, 0, t1550 * t1464 + t1547 * t1481, t1550 * t1465 + t1547 * t1482, t1550 * t1491 + t1547 * t1493, t1550 * t1412 + t1547 * t1431, 0, 0, 0, 0, 0, 0, t1550 * t1410 + t1547 * t1430, t1550 * t1414 + t1547 * t1432, t1550 * t1404 + t1547 * t1419, t1550 * t1380 + t1547 * t1389, 0, 0, 0, 0, 0, 0, t1550 * t1384 + t1547 * t1395, t1550 * t1388 + t1547 * t1396, t1550 * t1382 + t1547 * t1394, t1550 * t1375 + t1547 * t1376; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1601, 0, 0, 0, 0, 0, 0, t1508, t1507, 0, t1444, 0, 0, 0, 0, 0, 0, t1462, t1463, t1490, t1411, 0, 0, 0, 0, 0, 0, t1409, t1413, t1403, t1379, 0, 0, 0, 0, 0, 0, t1383, t1387, t1381, t1374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1527, 0, 0, 0, 0, 0, 0, t1525, -t1565, 0, t1456, 0, 0, 0, 0, 0, 0, t1481, t1482, t1493, t1431, 0, 0, 0, 0, 0, 0, t1430, t1432, t1419, t1389, 0, 0, 0, 0, 0, 0, t1395, t1396, t1394, t1376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1581, 0, 0, 0, 0, 0, 0, t1510, t1509, 0, t1445, 0, 0, 0, 0, 0, 0, t1464, t1465, t1491, t1412, 0, 0, 0, 0, 0, 0, t1410, t1414, t1404, t1380, 0, 0, 0, 0, 0, 0, t1384, t1388, t1382, t1375; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1601, 0, 0, 0, 0, 0, 0, t1508, t1507, 0, t1444, 0, 0, 0, 0, 0, 0, t1462, t1463, t1490, t1411, 0, 0, 0, 0, 0, 0, t1409, t1413, t1403, t1379, 0, 0, 0, 0, 0, 0, t1383, t1387, t1381, t1374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1561, -qJDD(2), 0, t1485, 0, 0, 0, 0, 0, 0, t1499, t1500, t1523, t1439, 0, 0, 0, 0, 0, 0, t1435, t1443, t1429, t1393, 0, 0, 0, 0, 0, 0, t1400, t1402, t1398, t1378; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1561, 0, -t1580, 0, 0, 0, 0, 0, 0, t1522, -t1519, t1526, -t1479, 0, 0, 0, 0, 0, 0, -t1474, t1585, -t1473, -t1459, 0, 0, 0, 0, 0, 0, -t1436, -t1440, -t1426, -t1390; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1502, 0, 0, 0, 0, 0, 0, t1497, t1498, 0, t1438, 0, 0, 0, 0, 0, 0, t1434, t1442, t1428, t1392, 0, 0, 0, 0, 0, 0, t1399, t1401, t1397, t1377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1535, t1530, t1540, t1468, 0, 0, 0, 0, 0, 0, t1461, t1471, t1454, t1408, 0, 0, 0, 0, 0, 0, t1421, t1423, t1416, t1386; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1529, t1534, -t1589, t1467, 0, 0, 0, 0, 0, 0, t1460, t1470, t1453, t1407, 0, 0, 0, 0, 0, 0, t1420, t1422, t1415, t1385; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1522, t1519, -t1526, t1479, 0, 0, 0, 0, 0, 0, t1474, -t1585, t1473, t1459, 0, 0, 0, 0, 0, 0, t1436, t1440, t1426, t1390; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1487, t1489, t1475, t1425, 0, 0, 0, 0, 0, 0, t1437, t1441, t1427, t1391; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1488, t1503, t1477, t1424, 0, 0, 0, 0, 0, 0, -t1446, -t1448, -t1466, -t1417; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1474, -t1585, t1473, t1459, 0, 0, 0, 0, 0, 0, t1436, t1440, t1426, t1390; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1469, t1458, t1447, t1406; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1457, t1472, t1449, t1405; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1446, t1448, t1466, t1417;];
f_new_reg = t1;

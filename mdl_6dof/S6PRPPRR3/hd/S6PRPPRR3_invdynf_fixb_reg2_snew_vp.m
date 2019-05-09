% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRPPRR3
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d5,d6,theta1,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 22:02
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRPPRR3_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPPRR3_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPPRR3_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPPRR3_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPPRR3_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPPRR3_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 22:02:20
% EndTime: 2019-05-04 22:02:23
% DurationCPUTime: 3.59s
% Computational Cost: add. (13555->250), mult. (24302->328), div. (0->0), fcn. (16012->12), ass. (0->185)
t1477 = sin(pkin(10));
t1480 = cos(pkin(10));
t1452 = g(1) * t1477 - g(2) * t1480;
t1478 = sin(pkin(6));
t1481 = cos(pkin(6));
t1525 = -g(3) + qJDD(1);
t1530 = t1452 * t1481 + t1478 * t1525;
t1488 = cos(qJ(5));
t1523 = qJD(2) * t1488;
t1461 = qJD(6) + t1523;
t1529 = qJD(6) + t1461;
t1491 = qJD(2) ^ 2;
t1484 = sin(qJ(6));
t1487 = cos(qJ(6));
t1485 = sin(qJ(5));
t1524 = qJD(2) * t1485;
t1440 = qJD(5) * t1487 + t1484 * t1524;
t1528 = t1440 ^ 2;
t1441 = -t1484 * qJD(5) + t1487 * t1524;
t1527 = t1441 ^ 2;
t1526 = t1461 ^ 2;
t1522 = t1440 * t1441;
t1430 = -t1452 * t1478 + t1481 * t1525;
t1520 = t1478 * t1430;
t1519 = qJD(6) - t1461;
t1453 = -g(1) * t1480 - g(2) * t1477;
t1486 = sin(qJ(2));
t1489 = cos(qJ(2));
t1409 = t1489 * t1453 + t1486 * t1530;
t1510 = qJDD(2) * qJ(3) + 0.2e1 * qJD(3) * qJD(2) + t1409;
t1398 = (-pkin(2) - pkin(3)) * t1491 + t1510;
t1476 = sin(pkin(11));
t1479 = cos(pkin(11));
t1408 = -t1453 * t1486 + t1489 * t1530;
t1400 = -qJDD(2) * pkin(2) - t1491 * qJ(3) + qJDD(3) - t1408;
t1492 = -qJDD(2) * pkin(3) + t1400;
t1379 = t1479 * t1398 + t1476 * t1492;
t1375 = -pkin(4) * t1491 - qJDD(2) * pkin(8) + t1379;
t1429 = qJDD(4) - t1430;
t1360 = t1488 * t1375 + t1485 * t1429;
t1472 = t1485 ^ 2;
t1473 = t1488 ^ 2;
t1518 = t1472 + t1473;
t1517 = t1485 * qJDD(2);
t1516 = t1488 * qJDD(2);
t1515 = qJD(5) * t1523;
t1464 = qJD(5) * t1524;
t1359 = -t1485 * t1375 + t1488 * t1429;
t1378 = -t1476 * t1398 + t1479 * t1492;
t1444 = -t1515 - t1517;
t1513 = t1487 * qJDD(5) - t1484 * t1444;
t1512 = -t1464 + t1516;
t1511 = -qJDD(6) - t1512;
t1490 = qJD(5) ^ 2;
t1493 = t1491 * (pkin(5) * t1488 + pkin(9) * t1485);
t1355 = -t1490 * pkin(5) + qJDD(5) * pkin(9) - t1488 * t1493 + t1360;
t1374 = qJDD(2) * pkin(4) - t1491 * pkin(8) - t1378;
t1358 = (-t1444 + t1515) * pkin(9) + (t1512 - t1464) * pkin(5) + t1374;
t1342 = -t1355 * t1484 + t1358 * t1487;
t1343 = t1355 * t1487 + t1358 * t1484;
t1329 = -t1342 * t1484 + t1343 * t1487;
t1354 = -qJDD(5) * pkin(5) - t1490 * pkin(9) - t1485 * t1493 - t1359;
t1325 = t1329 * t1488 + t1354 * t1485;
t1328 = t1342 * t1487 + t1343 * t1484;
t1319 = t1325 * t1476 - t1328 * t1479;
t1320 = t1325 * t1479 + t1328 * t1476;
t1509 = -t1319 * t1489 + t1320 * t1486;
t1345 = -t1359 * t1485 + t1360 * t1488;
t1340 = t1345 * t1476 - t1374 * t1479;
t1341 = t1345 * t1479 + t1374 * t1476;
t1508 = -t1340 * t1489 + t1341 * t1486;
t1393 = t1441 * t1519 + t1513;
t1494 = -t1484 * qJDD(5) - t1487 * t1444;
t1395 = -t1440 * t1519 + t1494;
t1373 = t1393 * t1487 - t1395 * t1484;
t1405 = -t1527 - t1528;
t1357 = t1373 * t1488 + t1405 * t1485;
t1372 = t1393 * t1484 + t1395 * t1487;
t1346 = t1357 * t1476 - t1372 * t1479;
t1347 = t1357 * t1479 + t1372 * t1476;
t1507 = -t1346 * t1489 + t1347 * t1486;
t1406 = -t1511 - t1522;
t1416 = -t1526 - t1528;
t1385 = -t1406 * t1484 + t1416 * t1487;
t1392 = -t1441 * t1529 - t1513;
t1362 = t1385 * t1488 + t1392 * t1485;
t1384 = t1406 * t1487 + t1416 * t1484;
t1348 = t1362 * t1476 - t1384 * t1479;
t1349 = t1362 * t1479 + t1384 * t1476;
t1506 = -t1348 * t1489 + t1349 * t1486;
t1350 = t1378 * t1479 + t1379 * t1476;
t1351 = -t1378 * t1476 + t1379 * t1479;
t1505 = -t1350 * t1489 + t1351 * t1486;
t1407 = t1511 - t1522;
t1421 = -t1526 - t1527;
t1387 = t1407 * t1487 - t1421 * t1484;
t1394 = t1440 * t1529 - t1494;
t1364 = t1387 * t1488 + t1394 * t1485;
t1386 = t1407 * t1484 + t1421 * t1487;
t1352 = t1364 * t1476 - t1386 * t1479;
t1353 = t1364 * t1479 + t1386 * t1476;
t1504 = -t1352 * t1489 + t1353 * t1486;
t1399 = -pkin(2) * t1491 + t1510;
t1503 = t1399 * t1486 - t1400 * t1489;
t1460 = t1485 * t1491 * t1488;
t1454 = qJDD(5) + t1460;
t1459 = -t1473 * t1491 - t1490;
t1427 = -t1454 * t1485 + t1459 * t1488;
t1445 = -0.2e1 * t1464 + t1516;
t1401 = t1427 * t1476 - t1445 * t1479;
t1403 = t1427 * t1479 + t1445 * t1476;
t1502 = -t1401 * t1489 + t1403 * t1486;
t1455 = -qJDD(5) + t1460;
t1458 = -t1472 * t1491 - t1490;
t1428 = t1455 * t1488 - t1458 * t1485;
t1443 = 0.2e1 * t1515 + t1517;
t1402 = t1428 * t1476 + t1443 * t1479;
t1404 = t1428 * t1479 - t1443 * t1476;
t1501 = -t1402 * t1489 + t1404 * t1486;
t1500 = t1408 * t1489 + t1409 * t1486;
t1448 = t1518 * qJDD(2);
t1451 = t1518 * t1491;
t1419 = -t1448 * t1476 + t1451 * t1479;
t1420 = -t1448 * t1479 - t1451 * t1476;
t1499 = -t1419 * t1489 + t1420 * t1486;
t1495 = qJDD(2) * t1486 + t1489 * t1491;
t1435 = t1495 * t1481;
t1449 = qJDD(2) * t1489 - t1486 * t1491;
t1498 = t1435 * t1480 + t1449 * t1477;
t1497 = t1435 * t1477 - t1449 * t1480;
t1446 = -t1476 * qJDD(2) + t1479 * t1491;
t1447 = qJDD(2) * t1479 + t1476 * t1491;
t1496 = t1446 * t1489 + t1447 * t1486;
t1417 = -t1446 * t1486 + t1447 * t1489;
t1436 = t1449 * t1481;
t1434 = t1449 * t1478;
t1433 = t1495 * t1478;
t1426 = t1455 * t1485 + t1458 * t1488;
t1425 = t1454 * t1488 + t1459 * t1485;
t1424 = t1481 * t1430;
t1415 = -t1436 * t1477 - t1480 * t1495;
t1414 = t1436 * t1480 - t1477 * t1495;
t1413 = t1417 * t1481;
t1412 = t1496 * t1481;
t1411 = t1417 * t1478;
t1410 = t1496 * t1478;
t1390 = t1419 * t1486 + t1420 * t1489;
t1389 = t1499 * t1481;
t1388 = t1499 * t1478;
t1383 = -t1408 * t1486 + t1409 * t1489;
t1382 = t1402 * t1486 + t1404 * t1489;
t1381 = t1401 * t1486 + t1403 * t1489;
t1380 = t1399 * t1489 + t1400 * t1486;
t1377 = t1481 * t1500 - t1520;
t1376 = t1478 * t1500 + t1424;
t1370 = t1478 * t1426 + t1481 * t1501;
t1369 = t1478 * t1425 + t1481 * t1502;
t1368 = -t1481 * t1426 + t1478 * t1501;
t1367 = -t1481 * t1425 + t1478 * t1502;
t1366 = t1481 * t1503 - t1520;
t1365 = t1478 * t1503 + t1424;
t1363 = t1387 * t1485 - t1394 * t1488;
t1361 = t1385 * t1485 - t1392 * t1488;
t1356 = t1373 * t1485 - t1405 * t1488;
t1344 = t1359 * t1488 + t1360 * t1485;
t1339 = t1352 * t1486 + t1353 * t1489;
t1338 = t1350 * t1486 + t1351 * t1489;
t1337 = t1348 * t1486 + t1349 * t1489;
t1336 = t1478 * t1429 + t1481 * t1505;
t1335 = -t1481 * t1429 + t1478 * t1505;
t1334 = t1346 * t1486 + t1347 * t1489;
t1333 = t1478 * t1363 + t1481 * t1504;
t1332 = -t1481 * t1363 + t1478 * t1504;
t1331 = t1478 * t1361 + t1481 * t1506;
t1330 = -t1481 * t1361 + t1478 * t1506;
t1327 = t1478 * t1356 + t1481 * t1507;
t1326 = -t1481 * t1356 + t1478 * t1507;
t1324 = t1329 * t1485 - t1354 * t1488;
t1323 = t1340 * t1486 + t1341 * t1489;
t1322 = t1478 * t1344 + t1481 * t1508;
t1321 = -t1481 * t1344 + t1478 * t1508;
t1318 = t1319 * t1486 + t1320 * t1489;
t1317 = t1478 * t1324 + t1481 * t1509;
t1316 = -t1481 * t1324 + t1478 * t1509;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1452 * t1477 + t1453 * t1480, 0, 0, 0, 0, 0, 0, t1415, t1497, 0, -t1377 * t1477 + t1383 * t1480, 0, 0, 0, 0, 0, 0, t1415, 0, -t1497, -t1366 * t1477 + t1380 * t1480, 0, 0, 0, 0, 0, 0, -t1413 * t1477 - t1480 * t1496, -t1412 * t1477 + t1417 * t1480, 0, -t1336 * t1477 + t1338 * t1480, 0, 0, 0, 0, 0, 0, -t1369 * t1477 + t1381 * t1480, -t1370 * t1477 + t1382 * t1480, -t1389 * t1477 + t1390 * t1480, -t1322 * t1477 + t1323 * t1480, 0, 0, 0, 0, 0, 0, -t1331 * t1477 + t1337 * t1480, -t1333 * t1477 + t1339 * t1480, -t1327 * t1477 + t1334 * t1480, -t1317 * t1477 + t1318 * t1480; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1452 * t1480 + t1453 * t1477, 0, 0, 0, 0, 0, 0, t1414, -t1498, 0, t1377 * t1480 + t1383 * t1477, 0, 0, 0, 0, 0, 0, t1414, 0, t1498, t1366 * t1480 + t1380 * t1477, 0, 0, 0, 0, 0, 0, t1413 * t1480 - t1477 * t1496, t1412 * t1480 + t1417 * t1477, 0, t1336 * t1480 + t1338 * t1477, 0, 0, 0, 0, 0, 0, t1369 * t1480 + t1381 * t1477, t1370 * t1480 + t1382 * t1477, t1389 * t1480 + t1390 * t1477, t1322 * t1480 + t1323 * t1477, 0, 0, 0, 0, 0, 0, t1331 * t1480 + t1337 * t1477, t1333 * t1480 + t1339 * t1477, t1327 * t1480 + t1334 * t1477, t1317 * t1480 + t1318 * t1477; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1525, 0, 0, 0, 0, 0, 0, t1434, -t1433, 0, t1376, 0, 0, 0, 0, 0, 0, t1434, 0, t1433, t1365, 0, 0, 0, 0, 0, 0, t1411, t1410, 0, t1335, 0, 0, 0, 0, 0, 0, t1367, t1368, t1388, t1321, 0, 0, 0, 0, 0, 0, t1330, t1332, t1326, t1316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1453, 0, 0, 0, 0, 0, 0, -t1495, -t1449, 0, t1383, 0, 0, 0, 0, 0, 0, -t1495, 0, t1449, t1380, 0, 0, 0, 0, 0, 0, -t1496, t1417, 0, t1338, 0, 0, 0, 0, 0, 0, t1381, t1382, t1390, t1323, 0, 0, 0, 0, 0, 0, t1337, t1339, t1334, t1318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1452, 0, 0, 0, 0, 0, 0, t1436, -t1435, 0, t1377, 0, 0, 0, 0, 0, 0, t1436, 0, t1435, t1366, 0, 0, 0, 0, 0, 0, t1413, t1412, 0, t1336, 0, 0, 0, 0, 0, 0, t1369, t1370, t1389, t1322, 0, 0, 0, 0, 0, 0, t1331, t1333, t1327, t1317; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1525, 0, 0, 0, 0, 0, 0, t1434, -t1433, 0, t1376, 0, 0, 0, 0, 0, 0, t1434, 0, t1433, t1365, 0, 0, 0, 0, 0, 0, t1411, t1410, 0, t1335, 0, 0, 0, 0, 0, 0, t1367, t1368, t1388, t1321, 0, 0, 0, 0, 0, 0, t1330, t1332, t1326, t1316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1491, -qJDD(2), 0, t1409, 0, 0, 0, 0, 0, 0, -t1491, 0, qJDD(2), t1399, 0, 0, 0, 0, 0, 0, -t1446, t1447, 0, t1351, 0, 0, 0, 0, 0, 0, t1403, t1404, t1420, t1341, 0, 0, 0, 0, 0, 0, t1349, t1353, t1347, t1320; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1491, 0, t1408, 0, 0, 0, 0, 0, 0, qJDD(2), 0, t1491, -t1400, 0, 0, 0, 0, 0, 0, t1447, t1446, 0, -t1350, 0, 0, 0, 0, 0, 0, -t1401, -t1402, -t1419, -t1340, 0, 0, 0, 0, 0, 0, -t1348, -t1352, -t1346, -t1319; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1430, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1430, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1429, 0, 0, 0, 0, 0, 0, -t1425, -t1426, 0, -t1344, 0, 0, 0, 0, 0, 0, -t1361, -t1363, -t1356, -t1324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1491, 0, qJDD(2), t1399, 0, 0, 0, 0, 0, 0, -t1446, t1447, 0, t1351, 0, 0, 0, 0, 0, 0, t1403, t1404, t1420, t1341, 0, 0, 0, 0, 0, 0, t1349, t1353, t1347, t1320; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1430, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1429, 0, 0, 0, 0, 0, 0, -t1425, -t1426, 0, -t1344, 0, 0, 0, 0, 0, 0, -t1361, -t1363, -t1356, -t1324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(2), 0, -t1491, t1400, 0, 0, 0, 0, 0, 0, -t1447, -t1446, 0, t1350, 0, 0, 0, 0, 0, 0, t1401, t1402, t1419, t1340, 0, 0, 0, 0, 0, 0, t1348, t1352, t1346, t1319; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1491, qJDD(2), 0, t1379, 0, 0, 0, 0, 0, 0, t1427, t1428, -t1448, t1345, 0, 0, 0, 0, 0, 0, t1362, t1364, t1357, t1325; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(2), -t1491, 0, t1378, 0, 0, 0, 0, 0, 0, -t1445, t1443, t1451, -t1374, 0, 0, 0, 0, 0, 0, -t1384, -t1386, -t1372, -t1328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1429, 0, 0, 0, 0, 0, 0, t1425, t1426, 0, t1344, 0, 0, 0, 0, 0, 0, t1361, t1363, t1356, t1324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1459, t1455, -t1516, t1360, 0, 0, 0, 0, 0, 0, t1385, t1387, t1373, t1329; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1454, t1458, t1517, t1359, 0, 0, 0, 0, 0, 0, -t1392, -t1394, -t1405, -t1354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1445, -t1443, -t1451, t1374, 0, 0, 0, 0, 0, 0, t1384, t1386, t1372, t1328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1416, t1407, t1393, t1343; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1406, t1421, t1395, t1342; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1392, t1394, t1405, t1354;];
f_new_reg  = t1;

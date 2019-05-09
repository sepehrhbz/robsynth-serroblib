% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
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
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 15:42
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPRRR4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR4_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR4_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRR4_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRR4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRR4_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 15:42:26
% EndTime: 2019-05-05 15:42:30
% DurationCPUTime: 3.71s
% Computational Cost: add. (20705->297), mult. (38215->320), div. (0->0), fcn. (22347->10), ass. (0->183)
t1483 = cos(qJ(4));
t1465 = t1483 * qJD(1);
t1457 = t1465 + qJD(5);
t1453 = qJD(6) + t1457;
t1518 = qJD(6) + t1453;
t1485 = qJD(1) ^ 2;
t1517 = qJD(4) ^ 2;
t1478 = sin(qJ(5));
t1482 = cos(qJ(5));
t1479 = sin(qJ(4));
t1509 = qJD(1) * t1479;
t1437 = qJD(4) * t1482 + t1478 * t1509;
t1438 = -t1478 * qJD(4) + t1482 * t1509;
t1477 = sin(qJ(6));
t1481 = cos(qJ(6));
t1415 = -t1481 * t1437 - t1438 * t1477;
t1516 = t1415 ^ 2;
t1417 = t1437 * t1477 - t1438 * t1481;
t1515 = t1417 ^ 2;
t1514 = t1437 ^ 2;
t1513 = t1438 ^ 2;
t1512 = t1453 ^ 2;
t1511 = t1457 ^ 2;
t1510 = -pkin(1) - pkin(2);
t1508 = t1415 * t1417;
t1507 = t1437 * t1438;
t1506 = t1457 * t1437;
t1505 = qJD(5) - t1457;
t1504 = qJD(6) - t1453;
t1480 = sin(qJ(1));
t1484 = cos(qJ(1));
t1452 = -t1484 * g(1) - t1480 * g(2);
t1489 = qJDD(1) * qJ(2) + 0.2e1 * qJD(2) * qJD(1) + t1452;
t1429 = t1510 * t1485 + t1489;
t1473 = sin(pkin(10));
t1474 = cos(pkin(10));
t1451 = t1480 * g(1) - t1484 * g(2);
t1488 = -t1485 * qJ(2) + qJDD(2) - t1451;
t1487 = t1510 * qJDD(1) + t1488;
t1401 = -t1473 * t1429 + t1474 * t1487;
t1394 = qJDD(1) * pkin(3) - t1485 * pkin(7) - t1401;
t1500 = qJD(4) * t1465;
t1502 = t1479 * qJDD(1);
t1441 = -t1500 - t1502;
t1461 = qJD(4) * t1509;
t1501 = t1483 * qJDD(1);
t1496 = -t1461 + t1501;
t1380 = (-t1441 + t1500) * pkin(8) + (t1496 - t1461) * pkin(4) + t1394;
t1402 = t1474 * t1429 + t1473 * t1487;
t1395 = -pkin(3) * t1485 - qJDD(1) * pkin(7) + t1402;
t1471 = g(3) + qJDD(3);
t1392 = t1483 * t1395 + t1479 * t1471;
t1492 = t1485 * (pkin(4) * t1483 + pkin(8) * t1479);
t1383 = -t1517 * pkin(4) + qJDD(4) * pkin(8) - t1483 * t1492 + t1392;
t1355 = t1478 * t1380 + t1482 * t1383;
t1469 = t1479 ^ 2;
t1470 = t1483 ^ 2;
t1503 = t1469 + t1470;
t1354 = t1482 * t1380 - t1478 * t1383;
t1391 = -t1479 * t1395 + t1483 * t1471;
t1493 = -t1478 * qJDD(4) - t1482 * t1441;
t1413 = qJD(5) * t1437 - t1493;
t1497 = -t1482 * qJDD(4) + t1478 * t1441;
t1490 = qJD(5) * t1438 - t1497;
t1499 = -t1477 * t1413 + t1481 * t1490;
t1443 = -t1473 * qJDD(1) + t1474 * t1485;
t1444 = qJDD(1) * t1474 + t1473 * t1485;
t1498 = -t1443 * t1480 + t1484 * t1444;
t1495 = qJDD(5) + t1496;
t1494 = t1443 * t1484 + t1444 * t1480;
t1491 = -qJDD(6) - t1495;
t1382 = -qJDD(4) * pkin(4) - t1517 * pkin(8) - t1479 * t1492 - t1391;
t1409 = t1495 - t1507;
t1486 = -t1481 * t1413 - t1477 * t1490;
t1456 = t1483 * t1485 * t1479;
t1455 = -t1470 * t1485 - t1517;
t1454 = -t1469 * t1485 - t1517;
t1450 = -qJDD(4) + t1456;
t1449 = qJDD(4) + t1456;
t1448 = t1503 * t1485;
t1447 = qJDD(1) * t1484 - t1480 * t1485;
t1446 = qJDD(1) * t1480 + t1484 * t1485;
t1445 = t1503 * qJDD(1);
t1442 = -0.2e1 * t1461 + t1501;
t1440 = 0.2e1 * t1500 + t1502;
t1432 = qJDD(1) * pkin(1) - t1488;
t1431 = -pkin(1) * t1485 + t1489;
t1428 = pkin(5) * t1457 + pkin(9) * t1438;
t1425 = t1450 * t1483 - t1454 * t1479;
t1424 = -t1449 * t1479 + t1455 * t1483;
t1423 = t1450 * t1479 + t1454 * t1483;
t1422 = t1449 * t1483 + t1455 * t1479;
t1420 = -t1511 - t1513;
t1419 = -t1445 * t1474 - t1448 * t1473;
t1418 = -t1445 * t1473 + t1448 * t1474;
t1414 = -t1511 - t1514;
t1410 = -t1495 - t1507;
t1408 = -t1513 - t1514;
t1406 = t1425 * t1474 - t1440 * t1473;
t1405 = t1424 * t1474 + t1442 * t1473;
t1404 = t1425 * t1473 + t1440 * t1474;
t1403 = t1424 * t1473 - t1442 * t1474;
t1400 = -t1512 - t1515;
t1399 = -t1505 * t1437 + t1493;
t1398 = t1413 + t1506;
t1397 = t1505 * t1438 - t1497;
t1396 = (-qJD(5) - t1457) * t1438 + t1497;
t1390 = t1410 * t1482 - t1420 * t1478;
t1389 = t1410 * t1478 + t1420 * t1482;
t1388 = -t1512 - t1516;
t1387 = -t1409 * t1478 + t1414 * t1482;
t1386 = t1409 * t1482 + t1414 * t1478;
t1385 = t1491 - t1508;
t1384 = -t1491 - t1508;
t1377 = -t1515 - t1516;
t1376 = -t1401 * t1473 + t1402 * t1474;
t1375 = t1401 * t1474 + t1402 * t1473;
t1374 = t1397 * t1482 - t1399 * t1478;
t1373 = t1397 * t1478 + t1399 * t1482;
t1372 = t1390 * t1483 + t1398 * t1479;
t1371 = t1390 * t1479 - t1398 * t1483;
t1370 = t1385 * t1481 - t1400 * t1477;
t1369 = t1385 * t1477 + t1400 * t1481;
t1368 = -t1391 * t1479 + t1392 * t1483;
t1367 = t1391 * t1483 + t1392 * t1479;
t1366 = t1387 * t1483 + t1396 * t1479;
t1365 = t1387 * t1479 - t1396 * t1483;
t1364 = t1504 * t1415 + t1486;
t1363 = -t1415 * t1518 - t1486;
t1362 = -t1504 * t1417 + t1499;
t1361 = t1417 * t1518 - t1499;
t1360 = -t1384 * t1477 + t1388 * t1481;
t1359 = t1384 * t1481 + t1388 * t1477;
t1358 = t1374 * t1483 + t1408 * t1479;
t1357 = t1374 * t1479 - t1408 * t1483;
t1356 = -t1490 * pkin(5) - t1514 * pkin(9) - t1438 * t1428 + t1382;
t1353 = t1368 * t1474 + t1394 * t1473;
t1352 = t1368 * t1473 - t1394 * t1474;
t1351 = t1372 * t1474 + t1389 * t1473;
t1350 = t1372 * t1473 - t1389 * t1474;
t1349 = t1366 * t1474 + t1386 * t1473;
t1348 = t1366 * t1473 - t1386 * t1474;
t1347 = -t1514 * pkin(5) + t1490 * pkin(9) - t1457 * t1428 + t1355;
t1346 = -t1369 * t1478 + t1370 * t1482;
t1345 = t1369 * t1482 + t1370 * t1478;
t1344 = t1358 * t1474 + t1373 * t1473;
t1343 = t1358 * t1473 - t1373 * t1474;
t1342 = (-t1413 + t1506) * pkin(9) + t1409 * pkin(5) + t1354;
t1341 = t1362 * t1481 - t1364 * t1477;
t1340 = t1362 * t1477 + t1364 * t1481;
t1339 = -t1359 * t1478 + t1360 * t1482;
t1338 = t1359 * t1482 + t1360 * t1478;
t1337 = -t1354 * t1478 + t1355 * t1482;
t1336 = t1354 * t1482 + t1355 * t1478;
t1335 = t1346 * t1483 + t1363 * t1479;
t1334 = t1346 * t1479 - t1363 * t1483;
t1333 = t1337 * t1483 + t1382 * t1479;
t1332 = t1337 * t1479 - t1382 * t1483;
t1331 = t1339 * t1483 + t1361 * t1479;
t1330 = t1339 * t1479 - t1361 * t1483;
t1329 = t1342 * t1477 + t1347 * t1481;
t1328 = t1342 * t1481 - t1347 * t1477;
t1327 = -t1340 * t1478 + t1341 * t1482;
t1326 = t1340 * t1482 + t1341 * t1478;
t1325 = t1335 * t1474 + t1345 * t1473;
t1324 = t1335 * t1473 - t1345 * t1474;
t1323 = t1327 * t1483 + t1377 * t1479;
t1322 = t1327 * t1479 - t1377 * t1483;
t1321 = t1331 * t1474 + t1338 * t1473;
t1320 = t1331 * t1473 - t1338 * t1474;
t1319 = t1333 * t1474 + t1336 * t1473;
t1318 = t1333 * t1473 - t1336 * t1474;
t1317 = -t1328 * t1477 + t1329 * t1481;
t1316 = t1328 * t1481 + t1329 * t1477;
t1315 = t1323 * t1474 + t1326 * t1473;
t1314 = t1323 * t1473 - t1326 * t1474;
t1313 = -t1316 * t1478 + t1317 * t1482;
t1312 = t1316 * t1482 + t1317 * t1478;
t1311 = t1313 * t1483 + t1356 * t1479;
t1310 = t1313 * t1479 - t1356 * t1483;
t1309 = t1311 * t1474 + t1312 * t1473;
t1308 = t1311 * t1473 - t1312 * t1474;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1446, -t1447, 0, -t1451 * t1480 + t1452 * t1484, 0, 0, 0, 0, 0, 0, -t1446, 0, t1447, t1431 * t1484 - t1432 * t1480, 0, 0, 0, 0, 0, 0, -t1494, t1498, 0, t1375 * t1480 + t1376 * t1484, 0, 0, 0, 0, 0, 0, t1403 * t1480 + t1405 * t1484, t1404 * t1480 + t1406 * t1484, t1418 * t1480 + t1419 * t1484, t1352 * t1480 + t1353 * t1484, 0, 0, 0, 0, 0, 0, t1348 * t1480 + t1349 * t1484, t1350 * t1480 + t1351 * t1484, t1343 * t1480 + t1344 * t1484, t1318 * t1480 + t1319 * t1484, 0, 0, 0, 0, 0, 0, t1320 * t1480 + t1321 * t1484, t1324 * t1480 + t1325 * t1484, t1314 * t1480 + t1315 * t1484, t1308 * t1480 + t1309 * t1484; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1447, -t1446, 0, t1451 * t1484 + t1452 * t1480, 0, 0, 0, 0, 0, 0, t1447, 0, t1446, t1431 * t1480 + t1432 * t1484, 0, 0, 0, 0, 0, 0, t1498, t1494, 0, -t1375 * t1484 + t1376 * t1480, 0, 0, 0, 0, 0, 0, -t1403 * t1484 + t1405 * t1480, -t1404 * t1484 + t1406 * t1480, -t1418 * t1484 + t1419 * t1480, -t1352 * t1484 + t1353 * t1480, 0, 0, 0, 0, 0, 0, -t1348 * t1484 + t1349 * t1480, -t1350 * t1484 + t1351 * t1480, -t1343 * t1484 + t1344 * t1480, -t1318 * t1484 + t1319 * t1480, 0, 0, 0, 0, 0, 0, -t1320 * t1484 + t1321 * t1480, -t1324 * t1484 + t1325 * t1480, -t1314 * t1484 + t1315 * t1480, -t1308 * t1484 + t1309 * t1480; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1471, 0, 0, 0, 0, 0, 0, -t1422, -t1423, 0, -t1367, 0, 0, 0, 0, 0, 0, -t1365, -t1371, -t1357, -t1332, 0, 0, 0, 0, 0, 0, -t1330, -t1334, -t1322, -t1310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1485, -qJDD(1), 0, t1452, 0, 0, 0, 0, 0, 0, -t1485, 0, qJDD(1), t1431, 0, 0, 0, 0, 0, 0, -t1443, t1444, 0, t1376, 0, 0, 0, 0, 0, 0, t1405, t1406, t1419, t1353, 0, 0, 0, 0, 0, 0, t1349, t1351, t1344, t1319, 0, 0, 0, 0, 0, 0, t1321, t1325, t1315, t1309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1485, 0, t1451, 0, 0, 0, 0, 0, 0, qJDD(1), 0, t1485, t1432, 0, 0, 0, 0, 0, 0, t1444, t1443, 0, -t1375, 0, 0, 0, 0, 0, 0, -t1403, -t1404, -t1418, -t1352, 0, 0, 0, 0, 0, 0, -t1348, -t1350, -t1343, -t1318, 0, 0, 0, 0, 0, 0, -t1320, -t1324, -t1314, -t1308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1471, 0, 0, 0, 0, 0, 0, -t1422, -t1423, 0, -t1367, 0, 0, 0, 0, 0, 0, -t1365, -t1371, -t1357, -t1332, 0, 0, 0, 0, 0, 0, -t1330, -t1334, -t1322, -t1310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1485, 0, qJDD(1), t1431, 0, 0, 0, 0, 0, 0, -t1443, t1444, 0, t1376, 0, 0, 0, 0, 0, 0, t1405, t1406, t1419, t1353, 0, 0, 0, 0, 0, 0, t1349, t1351, t1344, t1319, 0, 0, 0, 0, 0, 0, t1321, t1325, t1315, t1309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1471, 0, 0, 0, 0, 0, 0, -t1422, -t1423, 0, -t1367, 0, 0, 0, 0, 0, 0, -t1365, -t1371, -t1357, -t1332, 0, 0, 0, 0, 0, 0, -t1330, -t1334, -t1322, -t1310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), 0, -t1485, -t1432, 0, 0, 0, 0, 0, 0, -t1444, -t1443, 0, t1375, 0, 0, 0, 0, 0, 0, t1403, t1404, t1418, t1352, 0, 0, 0, 0, 0, 0, t1348, t1350, t1343, t1318, 0, 0, 0, 0, 0, 0, t1320, t1324, t1314, t1308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1485, qJDD(1), 0, t1402, 0, 0, 0, 0, 0, 0, t1424, t1425, -t1445, t1368, 0, 0, 0, 0, 0, 0, t1366, t1372, t1358, t1333, 0, 0, 0, 0, 0, 0, t1331, t1335, t1323, t1311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), -t1485, 0, t1401, 0, 0, 0, 0, 0, 0, -t1442, t1440, t1448, -t1394, 0, 0, 0, 0, 0, 0, -t1386, -t1389, -t1373, -t1336, 0, 0, 0, 0, 0, 0, -t1338, -t1345, -t1326, -t1312; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1471, 0, 0, 0, 0, 0, 0, t1422, t1423, 0, t1367, 0, 0, 0, 0, 0, 0, t1365, t1371, t1357, t1332, 0, 0, 0, 0, 0, 0, t1330, t1334, t1322, t1310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1455, t1450, -t1501, t1392, 0, 0, 0, 0, 0, 0, t1387, t1390, t1374, t1337, 0, 0, 0, 0, 0, 0, t1339, t1346, t1327, t1313; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1449, t1454, t1502, t1391, 0, 0, 0, 0, 0, 0, -t1396, -t1398, -t1408, -t1382, 0, 0, 0, 0, 0, 0, -t1361, -t1363, -t1377, -t1356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1442, -t1440, -t1448, t1394, 0, 0, 0, 0, 0, 0, t1386, t1389, t1373, t1336, 0, 0, 0, 0, 0, 0, t1338, t1345, t1326, t1312; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1414, t1410, t1397, t1355, 0, 0, 0, 0, 0, 0, t1360, t1370, t1341, t1317; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1409, t1420, t1399, t1354, 0, 0, 0, 0, 0, 0, t1359, t1369, t1340, t1316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1396, t1398, t1408, t1382, 0, 0, 0, 0, 0, 0, t1361, t1363, t1377, t1356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1388, t1385, t1362, t1329; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1384, t1400, t1364, t1328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1361, t1363, t1377, t1356;];
f_new_reg  = t1;

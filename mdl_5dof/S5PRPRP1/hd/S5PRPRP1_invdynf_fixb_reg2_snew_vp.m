% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5PRPRP1
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:29
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5PRPRP1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP1_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRP1_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRPRP1_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPRP1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP1_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:29:14
% EndTime: 2019-12-05 15:29:17
% DurationCPUTime: 2.77s
% Computational Cost: add. (4287->162), mult. (9975->209), div. (0->0), fcn. (7039->8), ass. (0->114)
t1423 = sin(pkin(8));
t1425 = cos(pkin(8));
t1427 = sin(qJ(4));
t1429 = cos(qJ(4));
t1394 = (-t1423 * t1427 + t1425 * t1429) * qJD(2);
t1438 = t1423 * t1429 + t1425 * t1427;
t1396 = t1438 * qJD(2);
t1455 = t1396 * t1394;
t1369 = -qJDD(4) + t1455;
t1391 = t1396 ^ 2;
t1431 = qJD(4) ^ 2;
t1461 = -t1391 - t1431;
t1345 = t1427 * t1369 + t1429 * t1461;
t1347 = t1429 * t1369 - t1427 * t1461;
t1317 = t1423 * t1345 - t1425 * t1347;
t1428 = sin(qJ(2));
t1430 = cos(qJ(2));
t1393 = t1438 * qJDD(2);
t1470 = 2 * qJD(4);
t1437 = t1394 * t1470 + t1393;
t1301 = t1428 * t1317 + t1430 * t1437;
t1302 = t1430 * t1317 - t1428 * t1437;
t1424 = sin(pkin(7));
t1426 = cos(pkin(7));
t1482 = t1426 * t1301 + t1424 * t1302;
t1481 = t1424 * t1301 - t1426 * t1302;
t1415 = t1425 * qJDD(2);
t1446 = t1423 * qJDD(2);
t1440 = t1429 * t1415 - t1427 * t1446;
t1456 = t1396 * qJD(4);
t1371 = -t1440 + 0.2e1 * t1456;
t1368 = qJDD(4) + t1455;
t1374 = t1394 ^ 2;
t1462 = -t1374 - t1431;
t1467 = -t1427 * t1368 + t1429 * t1462;
t1468 = t1429 * t1368 + t1427 * t1462;
t1472 = -t1423 * t1468 + t1425 * t1467;
t1477 = t1428 * t1371 + t1430 * t1472;
t1478 = -t1430 * t1371 + t1428 * t1472;
t1480 = -t1424 * t1478 + t1426 * t1477;
t1479 = t1424 * t1477 + t1426 * t1478;
t1327 = t1425 * t1345 + t1423 * t1347;
t1356 = t1391 + t1374;
t1459 = t1427 * t1393 + t1429 * t1440;
t1460 = -t1429 * t1393 + t1427 * t1440;
t1466 = -t1423 * t1460 + t1425 * t1459;
t1473 = -t1428 * t1356 + t1430 * t1466;
t1474 = t1430 * t1356 + t1428 * t1466;
t1476 = -t1424 * t1474 + t1426 * t1473;
t1475 = t1424 * t1473 + t1426 * t1474;
t1471 = t1423 * t1467 + t1425 * t1468;
t1407 = -t1426 * g(1) - t1424 * g(2);
t1441 = t1424 * g(1) - t1426 * g(2);
t1378 = t1430 * t1407 + t1428 * t1441;
t1432 = qJD(2) ^ 2;
t1469 = -t1432 * pkin(2) + qJDD(2) * qJ(3) + 0.2e1 * qJD(2) * qJD(3) + t1378;
t1465 = t1423 * t1459 + t1425 * t1460;
t1417 = t1425 ^ 2;
t1433 = t1423 ^ 2;
t1447 = t1417 + t1433;
t1404 = t1447 * t1432;
t1454 = t1417 * t1432;
t1420 = -g(3) + qJDD(1);
t1453 = t1425 * t1420;
t1452 = t1425 * t1432;
t1448 = t1433 * t1432;
t1354 = t1423 * t1420 + t1469 * t1425;
t1343 = -pkin(3) * t1454 + pkin(6) * t1415 + t1354;
t1436 = t1453 + (pkin(3) * t1452 - pkin(6) * qJDD(2) - t1469) * t1423;
t1325 = t1429 * t1343 + t1427 * t1436;
t1445 = t1428 * qJDD(2);
t1444 = t1430 * qJDD(2);
t1324 = -t1427 * t1343 + t1429 * t1436;
t1405 = -t1428 * t1432 + t1444;
t1406 = -t1430 * t1432 - t1445;
t1442 = -t1424 * t1405 + t1426 * t1406;
t1377 = -t1428 * t1407 + t1430 * t1441;
t1439 = t1426 * t1405 + t1424 * t1406;
t1370 = -qJDD(2) * pkin(2) - t1432 * qJ(3) + qJDD(3) - t1377;
t1350 = -pkin(3) * t1415 + t1370 + (-t1448 - t1454) * pkin(6);
t1408 = t1423 * t1452;
t1403 = t1447 * qJDD(2);
t1399 = t1425 * t1404;
t1398 = t1423 * t1404;
t1382 = -t1430 * t1399 - t1425 * t1445;
t1381 = t1430 * t1398 + t1423 * t1445;
t1380 = -t1428 * t1399 + t1425 * t1444;
t1379 = t1428 * t1398 - t1423 * t1444;
t1376 = t1430 * t1403 - t1428 * t1404;
t1375 = t1428 * t1403 + t1430 * t1404;
t1363 = -t1394 * pkin(4) - t1396 * qJ(5);
t1353 = -t1423 * t1469 + t1453;
t1349 = -t1428 * t1377 + t1430 * t1378;
t1348 = t1430 * t1377 + t1428 * t1378;
t1331 = -t1423 * t1353 + t1425 * t1354;
t1330 = t1425 * t1353 + t1423 * t1354;
t1321 = t1430 * t1331 + t1428 * t1370;
t1320 = t1428 * t1331 - t1430 * t1370;
t1309 = -(t1440 - t1456) * pkin(4) + (pkin(4) * qJD(4) - (2 * qJD(5))) * t1396 + t1350 - t1437 * qJ(5);
t1308 = -qJDD(4) * pkin(4) - t1431 * qJ(5) + t1396 * t1363 + qJDD(5) - t1324;
t1307 = -t1431 * pkin(4) + qJDD(4) * qJ(5) + (qJD(5) * t1470) + t1394 * t1363 + t1325;
t1300 = -t1427 * t1324 + t1429 * t1325;
t1299 = t1429 * t1324 + t1427 * t1325;
t1298 = t1429 * t1307 + t1427 * t1308;
t1297 = t1427 * t1307 - t1429 * t1308;
t1296 = -t1423 * t1299 + t1425 * t1300;
t1295 = t1425 * t1299 + t1423 * t1300;
t1294 = t1430 * t1296 + t1428 * t1350;
t1293 = t1428 * t1296 - t1430 * t1350;
t1292 = -t1423 * t1297 + t1425 * t1298;
t1291 = t1425 * t1297 + t1423 * t1298;
t1290 = t1430 * t1292 + t1428 * t1309;
t1289 = t1428 * t1292 - t1430 * t1309;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1426 * t1407 - t1424 * t1441, 0, 0, 0, 0, 0, 0, t1442, -t1439, 0, -t1424 * t1348 + t1426 * t1349, 0, 0, 0, 0, 0, 0, -t1424 * t1380 + t1426 * t1382, -t1424 * t1379 + t1426 * t1381, -t1424 * t1375 + t1426 * t1376, -t1424 * t1320 + t1426 * t1321, 0, 0, 0, 0, 0, 0, t1480, t1481, t1476, -t1424 * t1293 + t1426 * t1294, 0, 0, 0, 0, 0, 0, t1480, t1476, -t1481, -t1424 * t1289 + t1426 * t1290; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1424 * t1407 + t1426 * t1441, 0, 0, 0, 0, 0, 0, t1439, t1442, 0, t1426 * t1348 + t1424 * t1349, 0, 0, 0, 0, 0, 0, t1426 * t1380 + t1424 * t1382, t1426 * t1379 + t1424 * t1381, t1426 * t1375 + t1424 * t1376, t1426 * t1320 + t1424 * t1321, 0, 0, 0, 0, 0, 0, t1479, -t1482, t1475, t1426 * t1293 + t1424 * t1294, 0, 0, 0, 0, 0, 0, t1479, t1475, t1482, t1426 * t1289 + t1424 * t1290; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1420, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1420, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1330, 0, 0, 0, 0, 0, 0, t1471, t1327, t1465, t1295, 0, 0, 0, 0, 0, 0, t1471, t1465, -t1327, t1291; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1407, 0, 0, 0, 0, 0, 0, t1406, -t1405, 0, t1349, 0, 0, 0, 0, 0, 0, t1382, t1381, t1376, t1321, 0, 0, 0, 0, 0, 0, t1477, -t1302, t1473, t1294, 0, 0, 0, 0, 0, 0, t1477, t1473, t1302, t1290; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1441, 0, 0, 0, 0, 0, 0, t1405, t1406, 0, t1348, 0, 0, 0, 0, 0, 0, t1380, t1379, t1375, t1320, 0, 0, 0, 0, 0, 0, t1478, -t1301, t1474, t1293, 0, 0, 0, 0, 0, 0, t1478, t1474, t1301, t1289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1420, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1420, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1330, 0, 0, 0, 0, 0, 0, t1471, t1327, t1465, t1295, 0, 0, 0, 0, 0, 0, t1471, t1465, -t1327, t1291; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1432, -qJDD(2), 0, t1378, 0, 0, 0, 0, 0, 0, -t1399, t1398, t1403, t1331, 0, 0, 0, 0, 0, 0, t1472, -t1317, t1466, t1296, 0, 0, 0, 0, 0, 0, t1472, t1466, t1317, t1292; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1432, 0, t1377, 0, 0, 0, 0, 0, 0, t1415, -t1446, t1404, -t1370, 0, 0, 0, 0, 0, 0, -t1371, -t1437, t1356, -t1350, 0, 0, 0, 0, 0, 0, -t1371, t1356, t1437, -t1309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1420, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1330, 0, 0, 0, 0, 0, 0, t1471, t1327, t1465, t1295, 0, 0, 0, 0, 0, 0, t1471, t1465, -t1327, t1291; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1454, t1408, t1415, t1354, 0, 0, 0, 0, 0, 0, t1467, t1347, t1459, t1300, 0, 0, 0, 0, 0, 0, t1467, t1459, -t1347, t1298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1408, -t1448, -t1446, t1353, 0, 0, 0, 0, 0, 0, t1468, t1345, t1460, t1299, 0, 0, 0, 0, 0, 0, t1468, t1460, -t1345, t1297; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1415, t1446, -t1404, t1370, 0, 0, 0, 0, 0, 0, t1371, t1437, -t1356, t1350, 0, 0, 0, 0, 0, 0, t1371, -t1356, -t1437, t1309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1462, t1369, t1440, t1325, 0, 0, 0, 0, 0, 0, t1462, t1440, -t1369, t1307; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1368, t1461, -t1393, t1324, 0, 0, 0, 0, 0, 0, t1368, -t1393, -t1461, -t1308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1371, t1437, -t1356, t1350, 0, 0, 0, 0, 0, 0, t1371, -t1356, -t1437, t1309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1462, t1440, -t1369, t1307; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1371, -t1356, -t1437, t1309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1368, t1393, t1461, t1308;];
f_new_reg = t1;

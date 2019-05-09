% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRPRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 07:58
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRPRP5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP5_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP5_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP5_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP5_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 07:58:18
% EndTime: 2019-05-07 07:58:29
% DurationCPUTime: 11.88s
% Computational Cost: add. (61078->319), mult. (128259->391), div. (0->0), fcn. (93017->10), ass. (0->226)
t2546 = sin(qJ(2));
t2583 = qJD(1) * t2546;
t2534 = qJD(2) * t2583;
t2550 = cos(qJ(2));
t2567 = t2550 * qJDD(1);
t2563 = t2534 - t2567;
t2562 = -qJDD(3) - t2563;
t2560 = -qJDD(5) + t2562;
t2545 = sin(qJ(3));
t2549 = cos(qJ(3));
t2509 = -t2549 * qJD(2) + t2545 * t2583;
t2510 = qJD(2) * t2545 + t2549 * t2583;
t2541 = sin(pkin(10));
t2542 = cos(pkin(10));
t2490 = t2542 * t2509 + t2510 * t2541;
t2491 = -t2509 * t2541 + t2510 * t2542;
t2544 = sin(qJ(5));
t2548 = cos(qJ(5));
t2463 = t2548 * t2490 + t2491 * t2544;
t2465 = -t2490 * t2544 + t2491 * t2548;
t2579 = t2463 * t2465;
t2423 = t2560 - t2579;
t2462 = t2465 ^ 2;
t2582 = qJD(1) * t2550;
t2531 = -qJD(3) + t2582;
t2525 = -qJD(5) + t2531;
t2588 = t2525 ^ 2;
t2597 = -t2462 - t2588;
t2402 = t2423 * t2544 + t2548 * t2597;
t2404 = t2423 * t2548 - t2544 * t2597;
t2359 = t2402 * t2541 - t2404 * t2542;
t2371 = t2402 * t2542 + t2404 * t2541;
t2342 = t2359 * t2549 + t2371 * t2545;
t2566 = qJD(2) * t2582;
t2568 = t2546 * qJDD(1);
t2513 = t2566 + t2568;
t2561 = -t2545 * qJDD(2) - t2549 * t2513;
t2487 = -qJD(3) * t2509 - t2561;
t2564 = -t2549 * qJDD(2) + t2545 * t2513;
t2559 = qJD(3) * t2510 + t2564;
t2457 = t2542 * t2487 - t2541 * t2559;
t2556 = -t2541 * t2487 - t2542 * t2559;
t2555 = -t2548 * t2457 - t2544 * t2556;
t2571 = qJD(5) - t2525;
t2395 = t2463 * t2571 + t2555;
t2332 = t2342 * t2550 + t2395 * t2546;
t2340 = t2359 * t2545 - t2371 * t2549;
t2547 = sin(qJ(1));
t2551 = cos(qJ(1));
t2626 = t2332 * t2547 - t2340 * t2551;
t2625 = t2332 * t2551 + t2340 * t2547;
t2330 = t2342 * t2546 - t2395 * t2550;
t2424 = t2560 + t2579;
t2429 = t2463 ^ 2;
t2596 = -t2588 - t2429;
t2600 = t2424 * t2544 + t2548 * t2596;
t2601 = -t2548 * t2424 + t2544 * t2596;
t2604 = t2541 * t2600 + t2542 * t2601;
t2605 = -t2541 * t2601 + t2542 * t2600;
t2609 = -t2545 * t2604 + t2549 * t2605;
t2620 = t2546 * t2609;
t2610 = t2545 * t2605 + t2549 * t2604;
t2619 = t2547 * t2610;
t2618 = t2550 * t2609;
t2617 = t2551 * t2610;
t2570 = t2525 + qJD(5);
t2396 = t2463 * t2570 + t2555;
t2565 = t2544 * t2457 - t2548 * t2556;
t2557 = -t2465 * t2570 - t2565;
t2594 = -t2396 * t2544 + t2548 * t2557;
t2595 = t2548 * t2396 + t2544 * t2557;
t2598 = t2541 * t2594 + t2542 * t2595;
t2599 = -t2541 * t2595 + t2542 * t2594;
t2603 = t2545 * t2599 + t2549 * t2598;
t2413 = t2462 + t2429;
t2602 = -t2545 * t2598 + t2549 * t2599;
t2611 = -t2413 * t2546 + t2550 * t2602;
t2616 = t2547 * t2611 - t2551 * t2603;
t2615 = t2547 * t2603 + t2551 * t2611;
t2612 = t2413 * t2550 + t2546 * t2602;
t2593 = qJD(2) ^ 2;
t2592 = t2490 ^ 2;
t2591 = t2491 ^ 2;
t2590 = t2509 ^ 2;
t2589 = t2510 ^ 2;
t2587 = t2531 ^ 2;
t2586 = -2 * qJD(4);
t2585 = -2 * qJD(6);
t2584 = t2550 * g(3);
t2577 = t2490 * t2491;
t2576 = t2490 * t2531;
t2575 = t2509 * t2510;
t2574 = t2509 * t2531;
t2573 = t2531 * t2491;
t2572 = qJD(3) + t2531;
t2522 = t2547 * g(1) - t2551 * g(2);
t2552 = qJD(1) ^ 2;
t2505 = qJDD(1) * pkin(1) + t2552 * pkin(7) + t2522;
t2468 = (-t2513 - t2566) * pkin(8) + (t2563 + t2534) * pkin(2) - t2505;
t2523 = -g(1) * t2551 - g(2) * t2547;
t2506 = -pkin(1) * t2552 + qJDD(1) * pkin(7) + t2523;
t2499 = -g(3) * t2546 + t2550 * t2506;
t2511 = (-pkin(2) * t2550 - pkin(8) * t2546) * qJD(1);
t2478 = -pkin(2) * t2593 + qJDD(2) * pkin(8) + t2511 * t2582 + t2499;
t2443 = t2549 * t2468 - t2545 * t2478;
t2483 = -t2562 - t2575;
t2415 = (-t2487 + t2574) * qJ(4) + t2483 * pkin(3) + t2443;
t2444 = t2545 * t2468 + t2549 * t2478;
t2497 = -pkin(3) * t2531 - qJ(4) * t2510;
t2417 = -pkin(3) * t2590 - qJ(4) * t2559 + t2531 * t2497 + t2444;
t2380 = t2541 * t2415 + t2542 * t2417 + t2490 * t2586;
t2479 = -pkin(4) * t2531 - pkin(9) * t2491;
t2370 = -pkin(4) * t2592 + pkin(9) * t2556 + t2531 * t2479 + t2380;
t2379 = t2542 * t2415 - t2541 * t2417 + t2491 * t2586;
t2440 = -t2457 + t2576;
t2455 = -t2562 - t2577;
t2553 = pkin(4) * t2455 + pkin(9) * t2440 + t2379;
t2349 = t2548 * t2370 + t2544 * t2553;
t2538 = t2546 ^ 2;
t2539 = t2550 ^ 2;
t2569 = t2538 + t2539;
t2348 = -t2544 * t2370 + t2548 * t2553;
t2558 = -qJD(5) * t2465 - t2565;
t2477 = t2584 - qJDD(2) * pkin(2) - t2593 * pkin(8) + (qJD(1) * t2511 + t2506) * t2546;
t2436 = t2559 * pkin(3) - t2590 * qJ(4) + t2510 * t2497 + qJDD(4) + t2477;
t2389 = -t2556 * pkin(4) - t2592 * pkin(9) + t2491 * t2479 + t2436;
t2530 = t2550 * t2552 * t2546;
t2528 = -t2539 * t2552 - t2593;
t2527 = -t2538 * t2552 - t2593;
t2521 = -qJDD(2) + t2530;
t2520 = qJDD(2) + t2530;
t2518 = t2569 * t2552;
t2517 = -qJDD(1) * t2547 - t2551 * t2552;
t2516 = qJDD(1) * t2551 - t2547 * t2552;
t2515 = t2569 * qJDD(1);
t2514 = -0.2e1 * t2534 + t2567;
t2512 = 0.2e1 * t2566 + t2568;
t2498 = -t2546 * t2506 - t2584;
t2496 = t2521 * t2550 - t2527 * t2546;
t2495 = -t2520 * t2546 + t2528 * t2550;
t2494 = t2521 * t2546 + t2527 * t2550;
t2493 = t2520 * t2550 + t2528 * t2546;
t2492 = -t2587 - t2589;
t2489 = -t2587 - t2590;
t2482 = t2562 - t2575;
t2481 = -t2589 - t2590;
t2476 = -t2587 - t2591;
t2474 = -t2498 * t2546 + t2499 * t2550;
t2473 = t2498 * t2550 + t2499 * t2546;
t2472 = t2509 * t2572 + t2561;
t2471 = t2487 + t2574;
t2470 = -t2510 * t2572 - t2564;
t2469 = (qJD(3) - t2531) * t2510 + t2564;
t2461 = t2482 * t2549 - t2492 * t2545;
t2460 = t2482 * t2545 + t2492 * t2549;
t2459 = -t2587 - t2592;
t2454 = t2562 - t2577;
t2453 = -t2483 * t2545 + t2489 * t2549;
t2452 = t2483 * t2549 + t2489 * t2545;
t2445 = -t2591 - t2592;
t2442 = t2470 * t2549 - t2472 * t2545;
t2441 = t2470 * t2545 + t2472 * t2549;
t2439 = t2457 + t2576;
t2438 = t2556 - t2573;
t2437 = -t2556 - t2573;
t2435 = t2461 * t2550 + t2471 * t2546;
t2434 = t2454 * t2542 - t2476 * t2541;
t2433 = t2461 * t2546 - t2471 * t2550;
t2432 = t2454 * t2541 + t2476 * t2542;
t2431 = t2453 * t2550 + t2469 * t2546;
t2430 = t2453 * t2546 - t2469 * t2550;
t2428 = pkin(5) * t2463 - qJ(6) * t2465;
t2422 = -t2455 * t2541 + t2459 * t2542;
t2421 = t2455 * t2542 + t2459 * t2541;
t2420 = t2442 * t2550 + t2481 * t2546;
t2419 = t2442 * t2546 - t2481 * t2550;
t2411 = -t2443 * t2545 + t2444 * t2549;
t2410 = t2443 * t2549 + t2444 * t2545;
t2407 = t2438 * t2542 - t2440 * t2541;
t2406 = t2438 * t2541 + t2440 * t2542;
t2401 = t2411 * t2550 + t2477 * t2546;
t2400 = t2411 * t2546 - t2477 * t2550;
t2399 = -t2432 * t2545 + t2434 * t2549;
t2398 = t2432 * t2549 + t2434 * t2545;
t2392 = -t2465 * t2525 - t2558;
t2391 = t2465 * t2571 + t2565;
t2384 = -t2421 * t2545 + t2422 * t2549;
t2383 = t2421 * t2549 + t2422 * t2545;
t2382 = t2399 * t2550 + t2439 * t2546;
t2381 = t2399 * t2546 - t2439 * t2550;
t2378 = t2384 * t2550 + t2437 * t2546;
t2377 = t2384 * t2546 - t2437 * t2550;
t2376 = -t2406 * t2545 + t2407 * t2549;
t2375 = t2406 * t2549 + t2407 * t2545;
t2369 = t2376 * t2550 + t2445 * t2546;
t2368 = t2376 * t2546 - t2445 * t2550;
t2356 = -t2379 * t2541 + t2380 * t2542;
t2355 = t2379 * t2542 + t2380 * t2541;
t2354 = t2389 + (-pkin(5) * t2525 + t2585) * t2465 - t2558 * pkin(5) + t2395 * qJ(6);
t2339 = t2392 * t2546 + t2618;
t2337 = -t2392 * t2550 + t2620;
t2335 = pkin(5) * t2560 - qJ(6) * t2588 + t2465 * t2428 + qJDD(6) - t2348;
t2334 = -pkin(5) * t2588 - qJ(6) * t2560 - t2463 * t2428 + t2525 * t2585 + t2349;
t2333 = t2391 * t2546 + t2618;
t2331 = -t2391 * t2550 + t2620;
t2329 = -t2355 * t2545 + t2356 * t2549;
t2328 = t2355 * t2549 + t2356 * t2545;
t2327 = t2329 * t2550 + t2436 * t2546;
t2326 = t2329 * t2546 - t2436 * t2550;
t2325 = -t2348 * t2544 + t2349 * t2548;
t2324 = t2348 * t2548 + t2349 * t2544;
t2315 = t2334 * t2548 + t2335 * t2544;
t2314 = t2334 * t2544 - t2335 * t2548;
t2313 = -t2324 * t2541 + t2325 * t2542;
t2312 = t2324 * t2542 + t2325 * t2541;
t2311 = -t2314 * t2541 + t2315 * t2542;
t2310 = t2314 * t2542 + t2315 * t2541;
t2309 = -t2312 * t2545 + t2313 * t2549;
t2308 = t2312 * t2549 + t2313 * t2545;
t2307 = t2309 * t2550 + t2389 * t2546;
t2306 = t2309 * t2546 - t2389 * t2550;
t2305 = -t2310 * t2545 + t2311 * t2549;
t2304 = t2310 * t2549 + t2311 * t2545;
t2303 = t2305 * t2550 + t2354 * t2546;
t2302 = t2305 * t2546 - t2354 * t2550;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2517, -t2516, 0, -t2522 * t2547 + t2523 * t2551, 0, 0, 0, 0, 0, 0, t2495 * t2551 - t2514 * t2547, t2496 * t2551 + t2512 * t2547, t2515 * t2551 - t2518 * t2547, t2474 * t2551 - t2505 * t2547, 0, 0, 0, 0, 0, 0, t2431 * t2551 + t2452 * t2547, t2435 * t2551 + t2460 * t2547, t2420 * t2551 + t2441 * t2547, t2401 * t2551 + t2410 * t2547, 0, 0, 0, 0, 0, 0, t2378 * t2551 + t2383 * t2547, t2382 * t2551 + t2398 * t2547, t2369 * t2551 + t2375 * t2547, t2327 * t2551 + t2328 * t2547, 0, 0, 0, 0, 0, 0, t2333 * t2551 + t2619, -t2625, t2615, t2307 * t2551 + t2308 * t2547, 0, 0, 0, 0, 0, 0, t2339 * t2551 + t2619, t2615, t2625, t2303 * t2551 + t2304 * t2547; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2516, t2517, 0, t2522 * t2551 + t2523 * t2547, 0, 0, 0, 0, 0, 0, t2495 * t2547 + t2514 * t2551, t2496 * t2547 - t2512 * t2551, t2515 * t2547 + t2518 * t2551, t2474 * t2547 + t2505 * t2551, 0, 0, 0, 0, 0, 0, t2431 * t2547 - t2452 * t2551, t2435 * t2547 - t2460 * t2551, t2420 * t2547 - t2441 * t2551, t2401 * t2547 - t2410 * t2551, 0, 0, 0, 0, 0, 0, t2378 * t2547 - t2383 * t2551, t2382 * t2547 - t2398 * t2551, t2369 * t2547 - t2375 * t2551, t2327 * t2547 - t2328 * t2551, 0, 0, 0, 0, 0, 0, t2333 * t2547 - t2617, -t2626, t2616, t2307 * t2547 - t2308 * t2551, 0, 0, 0, 0, 0, 0, t2339 * t2547 - t2617, t2616, t2626, t2303 * t2547 - t2304 * t2551; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2493, t2494, 0, t2473, 0, 0, 0, 0, 0, 0, t2430, t2433, t2419, t2400, 0, 0, 0, 0, 0, 0, t2377, t2381, t2368, t2326, 0, 0, 0, 0, 0, 0, t2331, -t2330, t2612, t2306, 0, 0, 0, 0, 0, 0, t2337, t2612, t2330, t2302; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2552, -qJDD(1), 0, t2523, 0, 0, 0, 0, 0, 0, t2495, t2496, t2515, t2474, 0, 0, 0, 0, 0, 0, t2431, t2435, t2420, t2401, 0, 0, 0, 0, 0, 0, t2378, t2382, t2369, t2327, 0, 0, 0, 0, 0, 0, t2333, -t2332, t2611, t2307, 0, 0, 0, 0, 0, 0, t2339, t2611, t2332, t2303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2552, 0, t2522, 0, 0, 0, 0, 0, 0, t2514, -t2512, t2518, t2505, 0, 0, 0, 0, 0, 0, -t2452, -t2460, -t2441, -t2410, 0, 0, 0, 0, 0, 0, -t2383, -t2398, -t2375, -t2328, 0, 0, 0, 0, 0, 0, -t2610, t2340, -t2603, -t2308, 0, 0, 0, 0, 0, 0, -t2610, -t2603, -t2340, -t2304; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2493, t2494, 0, t2473, 0, 0, 0, 0, 0, 0, t2430, t2433, t2419, t2400, 0, 0, 0, 0, 0, 0, t2377, t2381, t2368, t2326, 0, 0, 0, 0, 0, 0, t2331, -t2330, t2612, t2306, 0, 0, 0, 0, 0, 0, t2337, t2612, t2330, t2302; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2528, t2521, t2567, t2499, 0, 0, 0, 0, 0, 0, t2453, t2461, t2442, t2411, 0, 0, 0, 0, 0, 0, t2384, t2399, t2376, t2329, 0, 0, 0, 0, 0, 0, t2609, -t2342, t2602, t2309, 0, 0, 0, 0, 0, 0, t2609, t2602, t2342, t2305; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2520, t2527, -t2568, t2498, 0, 0, 0, 0, 0, 0, -t2469, -t2471, -t2481, -t2477, 0, 0, 0, 0, 0, 0, -t2437, -t2439, -t2445, -t2436, 0, 0, 0, 0, 0, 0, -t2391, t2395, t2413, -t2389, 0, 0, 0, 0, 0, 0, -t2392, t2413, -t2395, -t2354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2514, t2512, -t2518, -t2505, 0, 0, 0, 0, 0, 0, t2452, t2460, t2441, t2410, 0, 0, 0, 0, 0, 0, t2383, t2398, t2375, t2328, 0, 0, 0, 0, 0, 0, t2610, -t2340, t2603, t2308, 0, 0, 0, 0, 0, 0, t2610, t2603, t2340, t2304; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2489, t2482, t2470, t2444, 0, 0, 0, 0, 0, 0, t2422, t2434, t2407, t2356, 0, 0, 0, 0, 0, 0, t2605, -t2359, t2599, t2313, 0, 0, 0, 0, 0, 0, t2605, t2599, t2359, t2311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2483, t2492, t2472, t2443, 0, 0, 0, 0, 0, 0, t2421, t2432, t2406, t2355, 0, 0, 0, 0, 0, 0, t2604, t2371, t2598, t2312, 0, 0, 0, 0, 0, 0, t2604, t2598, -t2371, t2310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2469, t2471, t2481, t2477, 0, 0, 0, 0, 0, 0, t2437, t2439, t2445, t2436, 0, 0, 0, 0, 0, 0, t2391, -t2395, -t2413, t2389, 0, 0, 0, 0, 0, 0, t2392, -t2413, t2395, t2354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2459, t2454, t2438, t2380, 0, 0, 0, 0, 0, 0, t2600, t2404, t2594, t2325, 0, 0, 0, 0, 0, 0, t2600, t2594, -t2404, t2315; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2455, t2476, t2440, t2379, 0, 0, 0, 0, 0, 0, t2601, t2402, t2595, t2324, 0, 0, 0, 0, 0, 0, t2601, t2595, -t2402, t2314; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2437, t2439, t2445, t2436, 0, 0, 0, 0, 0, 0, t2391, -t2395, -t2413, t2389, 0, 0, 0, 0, 0, 0, t2392, -t2413, t2395, t2354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2596, t2423, t2557, t2349, 0, 0, 0, 0, 0, 0, t2596, t2557, -t2423, t2334; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2424, t2597, t2396, t2348, 0, 0, 0, 0, 0, 0, -t2424, t2396, -t2597, -t2335; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2391, -t2395, -t2413, t2389, 0, 0, 0, 0, 0, 0, t2392, -t2413, t2395, t2354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2596, t2557, -t2423, t2334; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2392, -t2413, t2395, t2354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2424, -t2396, t2597, t2335;];
f_new_reg  = t1;

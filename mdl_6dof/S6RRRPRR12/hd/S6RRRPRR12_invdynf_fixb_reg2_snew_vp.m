% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRPRR12
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,d6,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 15:13
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRPRR12_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR12_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR12_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRR12_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR12_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPRR12_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 15:12:43
% EndTime: 2019-05-07 15:12:59
% DurationCPUTime: 17.13s
% Computational Cost: add. (225641->388), mult. (493977->586), div. (0->0), fcn. (402519->14), ass. (0->326)
t2642 = sin(pkin(6));
t2653 = cos(qJ(2));
t2698 = qJDD(1) * t2653;
t2648 = sin(qJ(2));
t2715 = qJD(1) * t2648;
t2730 = (qJD(2) * t2715 - t2698) * t2642;
t2660 = qJDD(3) + t2730;
t2644 = cos(pkin(6));
t2636 = qJD(1) * t2644 + qJD(2);
t2647 = sin(qJ(3));
t2652 = cos(qJ(3));
t2705 = t2642 * t2648;
t2697 = qJD(1) * t2705;
t2609 = -t2652 * t2636 + t2647 * t2697;
t2607 = qJD(5) + t2609;
t2605 = qJD(6) + t2607;
t2729 = qJD(6) + t2605;
t2611 = t2636 * t2647 + t2652 * t2697;
t2704 = t2642 * t2653;
t2696 = qJD(1) * t2704;
t2628 = -qJD(3) + t2696;
t2641 = sin(pkin(12));
t2643 = cos(pkin(12));
t2595 = t2611 * t2641 + t2628 * t2643;
t2596 = t2611 * t2643 - t2628 * t2641;
t2646 = sin(qJ(5));
t2651 = cos(qJ(5));
t2567 = t2651 * t2595 + t2596 * t2646;
t2569 = -t2595 * t2646 + t2596 * t2651;
t2645 = sin(qJ(6));
t2650 = cos(qJ(6));
t2530 = t2650 * t2567 + t2569 * t2645;
t2728 = t2530 ^ 2;
t2532 = -t2567 * t2645 + t2569 * t2650;
t2727 = t2532 ^ 2;
t2726 = t2567 ^ 2;
t2725 = t2569 ^ 2;
t2724 = t2595 ^ 2;
t2723 = t2596 ^ 2;
t2722 = t2605 ^ 2;
t2721 = t2607 ^ 2;
t2588 = t2609 ^ 2;
t2720 = t2611 ^ 2;
t2719 = t2628 ^ 2;
t2718 = t2636 ^ 2;
t2717 = -2 * qJD(4);
t2716 = t2644 * g(3);
t2714 = qJD(1) * t2653;
t2713 = t2530 * t2532;
t2712 = t2567 * t2569;
t2711 = t2595 * t2596;
t2710 = t2596 * t2609;
t2709 = t2607 * t2567;
t2708 = t2609 * t2595;
t2707 = t2611 * t2609;
t2655 = qJD(1) ^ 2;
t2706 = t2642 ^ 2 * t2655;
t2703 = qJD(3) + t2628;
t2702 = qJD(5) - t2607;
t2701 = qJD(6) - t2605;
t2617 = (-pkin(2) * t2653 - pkin(9) * t2648) * t2642 * qJD(1);
t2635 = t2644 * qJDD(1) + qJDD(2);
t2649 = sin(qJ(1));
t2654 = cos(qJ(1));
t2630 = -g(1) * t2654 - g(2) * t2649;
t2699 = qJDD(1) * t2642;
t2614 = -pkin(1) * t2655 + pkin(8) * t2699 + t2630;
t2629 = t2649 * g(1) - t2654 * g(2);
t2659 = t2655 * t2642 * pkin(8) + qJDD(1) * pkin(1) + t2629;
t2657 = t2644 * t2659;
t2700 = t2653 * t2614 + t2648 * t2657;
t2557 = -t2718 * pkin(2) + t2635 * pkin(9) + (-g(3) * t2648 + t2617 * t2714) * t2642 + t2700;
t2618 = qJD(2) * t2696 + t2648 * t2699;
t2656 = -t2618 * pkin(9) - t2716 + (-t2636 * pkin(9) * t2714 + (-t2698 + (qJD(2) + t2636) * t2715) * pkin(2) - t2659) * t2642;
t2526 = t2652 * t2557 + t2647 * t2656;
t2587 = pkin(3) * t2609 - qJ(4) * t2611;
t2504 = -pkin(3) * t2719 + qJ(4) * t2660 - t2609 * t2587 + t2526;
t2691 = t2648 * t2614 - t2653 * t2657;
t2556 = -t2635 * pkin(2) - t2718 * pkin(9) + (g(3) * t2653 + t2617 * t2715) * t2642 + t2691;
t2690 = t2647 * t2618 - t2652 * t2635;
t2581 = qJD(3) * t2611 + t2690;
t2668 = -t2652 * t2618 - t2647 * t2635;
t2582 = -qJD(3) * t2609 - t2668;
t2692 = -t2609 * t2628 - t2582;
t2509 = t2692 * qJ(4) + (-t2611 * t2628 + t2581) * pkin(3) + t2556;
t2471 = -t2641 * t2504 + t2643 * t2509 + t2596 * t2717;
t2574 = t2643 * t2582 + t2641 * t2660;
t2538 = -t2574 - t2708;
t2539 = t2581 - t2711;
t2456 = pkin(4) * t2539 + pkin(10) * t2538 + t2471;
t2472 = t2643 * t2504 + t2641 * t2509 + t2595 * t2717;
t2577 = pkin(4) * t2609 - pkin(10) * t2596;
t2693 = -t2582 * t2641 + t2643 * t2660;
t2460 = -pkin(4) * t2724 + pkin(10) * t2693 - t2609 * t2577 + t2472;
t2426 = t2646 * t2456 + t2651 * t2460;
t2425 = t2651 * t2456 - t2646 * t2460;
t2662 = -t2651 * t2574 - t2646 * t2693;
t2512 = -t2567 * qJD(5) - t2662;
t2694 = t2646 * t2574 - t2651 * t2693;
t2667 = qJD(5) * t2569 + t2694;
t2695 = -t2645 * t2512 - t2650 * t2667;
t2525 = -t2647 * t2557 + t2652 * t2656;
t2689 = t2636 * t2696;
t2665 = qJDD(5) + t2581;
t2517 = t2665 - t2712;
t2417 = (-t2512 - t2709) * pkin(11) + t2517 * pkin(5) + t2425;
t2548 = pkin(5) * t2607 - pkin(11) * t2569;
t2418 = -pkin(5) * t2726 - pkin(11) * t2667 - t2607 * t2548 + t2426;
t2395 = t2417 * t2650 - t2418 * t2645;
t2396 = t2417 * t2645 + t2418 * t2650;
t2381 = t2395 * t2650 + t2396 * t2645;
t2382 = -t2395 * t2645 + t2396 * t2650;
t2373 = t2381 * t2651 + t2382 * t2646;
t2374 = -t2381 * t2646 + t2382 * t2651;
t2368 = -t2373 * t2641 + t2374 * t2643;
t2503 = -t2660 * pkin(3) - t2719 * qJ(4) + t2611 * t2587 + qJDD(4) - t2525;
t2475 = -t2693 * pkin(4) - t2724 * pkin(10) + t2596 * t2577 + t2503;
t2443 = pkin(5) * t2667 - pkin(11) * t2726 + t2569 * t2548 + t2475;
t2366 = t2368 * t2652 + t2443 * t2647;
t2367 = t2373 * t2643 + t2374 * t2641;
t2688 = t2366 * t2648 - t2367 * t2653;
t2453 = -t2532 * t2701 + t2695;
t2658 = -t2650 * t2512 + t2645 * t2667;
t2455 = t2530 * t2701 + t2658;
t2421 = t2453 * t2645 + t2455 * t2650;
t2422 = t2453 * t2650 - t2455 * t2645;
t2401 = t2421 * t2651 + t2422 * t2646;
t2402 = -t2421 * t2646 + t2422 * t2651;
t2389 = -t2401 * t2641 + t2402 * t2643;
t2474 = -t2727 - t2728;
t2384 = t2389 * t2652 + t2474 * t2647;
t2388 = t2401 * t2643 + t2402 * t2641;
t2687 = t2384 * t2648 - t2388 * t2653;
t2405 = t2425 * t2651 + t2426 * t2646;
t2406 = -t2425 * t2646 + t2426 * t2651;
t2391 = -t2405 * t2641 + t2406 * t2643;
t2386 = t2391 * t2652 + t2475 * t2647;
t2390 = t2405 * t2643 + t2406 * t2641;
t2686 = t2386 * t2648 - t2390 * t2653;
t2661 = -qJDD(6) - t2665;
t2483 = -t2661 - t2713;
t2489 = -t2722 - t2728;
t2461 = t2483 * t2650 + t2489 * t2645;
t2462 = -t2483 * t2645 + t2489 * t2650;
t2427 = t2461 * t2651 + t2462 * t2646;
t2428 = -t2461 * t2646 + t2462 * t2651;
t2411 = -t2427 * t2641 + t2428 * t2643;
t2452 = t2532 * t2729 - t2695;
t2400 = t2411 * t2652 + t2452 * t2647;
t2410 = t2427 * t2643 + t2428 * t2641;
t2685 = t2400 * t2648 - t2410 * t2653;
t2484 = t2661 - t2713;
t2519 = -t2722 - t2727;
t2468 = t2484 * t2645 + t2519 * t2650;
t2469 = t2484 * t2650 - t2519 * t2645;
t2433 = t2468 * t2651 + t2469 * t2646;
t2434 = -t2468 * t2646 + t2469 * t2651;
t2416 = -t2433 * t2641 + t2434 * t2643;
t2454 = -t2530 * t2729 - t2658;
t2404 = t2416 * t2652 + t2454 * t2647;
t2415 = t2433 * t2643 + t2434 * t2641;
t2684 = t2404 * t2648 - t2415 * t2653;
t2493 = -t2569 * t2702 - t2694;
t2495 = t2567 * t2702 + t2662;
t2465 = t2493 * t2646 + t2495 * t2651;
t2466 = t2493 * t2651 - t2495 * t2646;
t2432 = -t2465 * t2641 + t2466 * t2643;
t2513 = -t2725 - t2726;
t2424 = t2432 * t2652 + t2513 * t2647;
t2431 = t2465 * t2643 + t2466 * t2641;
t2683 = t2424 * t2648 - t2431 * t2653;
t2436 = -t2471 * t2641 + t2472 * t2643;
t2430 = t2436 * t2652 + t2503 * t2647;
t2435 = t2471 * t2643 + t2472 * t2641;
t2682 = t2430 * t2648 - t2435 * t2653;
t2527 = -t2721 - t2726;
t2479 = t2517 * t2651 + t2527 * t2646;
t2480 = -t2517 * t2646 + t2527 * t2651;
t2458 = -t2479 * t2641 + t2480 * t2643;
t2492 = (qJD(5) + t2607) * t2569 + t2694;
t2438 = t2458 * t2652 + t2492 * t2647;
t2457 = t2479 * t2643 + t2480 * t2641;
t2681 = t2438 * t2648 - t2457 * t2653;
t2518 = -t2665 - t2712;
t2541 = -t2721 - t2725;
t2496 = t2518 * t2646 + t2541 * t2651;
t2497 = t2518 * t2651 - t2541 * t2646;
t2464 = -t2496 * t2641 + t2497 * t2643;
t2494 = t2512 - t2709;
t2442 = t2464 * t2652 + t2494 * t2647;
t2463 = t2496 * t2643 + t2497 * t2641;
t2680 = t2442 * t2648 - t2463 * t2653;
t2536 = t2693 + t2710;
t2506 = t2536 * t2643 - t2538 * t2641;
t2544 = -t2723 - t2724;
t2482 = t2506 * t2652 + t2544 * t2647;
t2505 = t2536 * t2641 + t2538 * t2643;
t2679 = t2482 * t2648 - t2505 * t2653;
t2486 = -t2525 * t2647 + t2526 * t2652;
t2678 = t2486 * t2648 - t2556 * t2653;
t2550 = -t2588 - t2724;
t2516 = -t2539 * t2641 + t2550 * t2643;
t2535 = -t2693 + t2710;
t2488 = t2516 * t2652 + t2535 * t2647;
t2515 = t2539 * t2643 + t2550 * t2641;
t2677 = t2488 * t2648 - t2515 * t2653;
t2540 = -t2581 - t2711;
t2571 = -t2588 - t2723;
t2521 = t2540 * t2643 - t2571 * t2641;
t2537 = t2574 - t2708;
t2491 = t2521 * t2652 + t2537 * t2647;
t2520 = t2540 * t2641 + t2571 * t2643;
t2676 = t2491 * t2648 - t2520 * t2653;
t2562 = -t2611 * t2703 - t2690;
t2564 = t2609 * t2703 + t2668;
t2529 = t2562 * t2652 - t2564 * t2647;
t2576 = -t2720 - t2588;
t2675 = t2529 * t2648 - t2576 * t2653;
t2579 = t2660 - t2707;
t2583 = -t2588 - t2719;
t2543 = -t2579 * t2647 + t2583 * t2652;
t2561 = (qJD(3) - t2628) * t2611 + t2690;
t2674 = t2543 * t2648 - t2561 * t2653;
t2578 = -t2707 - t2660;
t2589 = -t2719 - t2720;
t2547 = t2578 * t2652 - t2589 * t2647;
t2673 = t2547 * t2648 + t2653 * t2692;
t2584 = -g(3) * t2704 - t2691;
t2585 = -g(3) * t2705 + t2700;
t2672 = t2584 * t2653 + t2585 * t2648;
t2598 = t2689 - t2618;
t2621 = t2636 * t2697;
t2599 = t2621 - t2730;
t2671 = t2598 * t2653 + t2599 * t2648;
t2639 = t2648 ^ 2;
t2606 = -t2639 * t2706 - t2718;
t2627 = t2653 * t2648 * t2706;
t2616 = t2627 - t2635;
t2670 = t2606 * t2653 + t2616 * t2648;
t2615 = t2627 + t2635;
t2640 = t2653 ^ 2;
t2619 = -t2640 * t2706 - t2718;
t2669 = t2615 * t2653 + t2619 * t2648;
t2626 = -qJDD(1) * t2649 - t2654 * t2655;
t2625 = qJDD(1) * t2654 - t2649 * t2655;
t2620 = (-t2639 - t2640) * t2706;
t2602 = -t2642 * t2659 - t2716;
t2600 = t2621 + t2730;
t2597 = t2689 + t2618;
t2593 = -t2615 * t2648 + t2619 * t2653;
t2586 = -t2606 * t2648 + t2616 * t2653;
t2575 = -t2598 * t2648 + t2599 * t2653;
t2573 = -t2642 * t2600 + t2644 * t2669;
t2572 = t2644 * t2600 + t2642 * t2669;
t2559 = -t2642 * t2597 + t2644 * t2670;
t2558 = t2644 * t2597 + t2642 * t2670;
t2555 = -t2642 * t2620 + t2644 * t2671;
t2554 = t2644 * t2620 + t2642 * t2671;
t2546 = t2578 * t2647 + t2589 * t2652;
t2545 = -t2584 * t2648 + t2585 * t2653;
t2542 = t2579 * t2652 + t2583 * t2647;
t2534 = -t2642 * t2602 + t2644 * t2672;
t2533 = t2644 * t2602 + t2642 * t2672;
t2528 = t2562 * t2647 + t2564 * t2652;
t2523 = t2547 * t2653 - t2648 * t2692;
t2522 = t2543 * t2653 + t2561 * t2648;
t2514 = t2529 * t2653 + t2576 * t2648;
t2501 = -t2642 * t2546 + t2644 * t2673;
t2500 = t2644 * t2546 + t2642 * t2673;
t2499 = -t2642 * t2542 + t2644 * t2674;
t2498 = t2644 * t2542 + t2642 * t2674;
t2490 = t2521 * t2647 - t2537 * t2652;
t2487 = t2516 * t2647 - t2535 * t2652;
t2485 = t2525 * t2652 + t2526 * t2647;
t2481 = t2506 * t2647 - t2544 * t2652;
t2478 = -t2642 * t2528 + t2644 * t2675;
t2477 = t2644 * t2528 + t2642 * t2675;
t2476 = t2486 * t2653 + t2556 * t2648;
t2473 = t2491 * t2653 + t2520 * t2648;
t2470 = t2488 * t2653 + t2515 * t2648;
t2467 = t2482 * t2653 + t2505 * t2648;
t2449 = -t2642 * t2485 + t2644 * t2678;
t2448 = t2644 * t2485 + t2642 * t2678;
t2447 = -t2642 * t2490 + t2644 * t2676;
t2446 = t2644 * t2490 + t2642 * t2676;
t2445 = -t2642 * t2487 + t2644 * t2677;
t2444 = t2644 * t2487 + t2642 * t2677;
t2441 = t2464 * t2647 - t2494 * t2652;
t2440 = -t2642 * t2481 + t2644 * t2679;
t2439 = t2644 * t2481 + t2642 * t2679;
t2437 = t2458 * t2647 - t2492 * t2652;
t2429 = t2436 * t2647 - t2503 * t2652;
t2423 = t2432 * t2647 - t2513 * t2652;
t2420 = t2442 * t2653 + t2463 * t2648;
t2419 = t2438 * t2653 + t2457 * t2648;
t2414 = t2430 * t2653 + t2435 * t2648;
t2413 = -t2642 * t2441 + t2644 * t2680;
t2412 = t2644 * t2441 + t2642 * t2680;
t2409 = t2424 * t2653 + t2431 * t2648;
t2408 = -t2642 * t2437 + t2644 * t2681;
t2407 = t2644 * t2437 + t2642 * t2681;
t2403 = t2416 * t2647 - t2454 * t2652;
t2399 = t2411 * t2647 - t2452 * t2652;
t2398 = -t2642 * t2429 + t2644 * t2682;
t2397 = t2644 * t2429 + t2642 * t2682;
t2394 = -t2642 * t2423 + t2644 * t2683;
t2393 = t2644 * t2423 + t2642 * t2683;
t2392 = t2404 * t2653 + t2415 * t2648;
t2387 = t2400 * t2653 + t2410 * t2648;
t2385 = t2391 * t2647 - t2475 * t2652;
t2383 = t2389 * t2647 - t2474 * t2652;
t2380 = -t2642 * t2403 + t2644 * t2684;
t2379 = t2644 * t2403 + t2642 * t2684;
t2378 = -t2642 * t2399 + t2644 * t2685;
t2377 = t2644 * t2399 + t2642 * t2685;
t2376 = t2386 * t2653 + t2390 * t2648;
t2375 = t2384 * t2653 + t2388 * t2648;
t2372 = -t2642 * t2385 + t2644 * t2686;
t2371 = t2644 * t2385 + t2642 * t2686;
t2370 = -t2642 * t2383 + t2644 * t2687;
t2369 = t2644 * t2383 + t2642 * t2687;
t2365 = t2368 * t2647 - t2443 * t2652;
t2364 = t2366 * t2653 + t2367 * t2648;
t2363 = -t2642 * t2365 + t2644 * t2688;
t2362 = t2644 * t2365 + t2642 * t2688;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2626, -t2625, 0, -t2629 * t2649 + t2630 * t2654, 0, 0, 0, 0, 0, 0, -t2573 * t2649 + t2593 * t2654, -t2559 * t2649 + t2586 * t2654, -t2555 * t2649 + t2575 * t2654, -t2534 * t2649 + t2545 * t2654, 0, 0, 0, 0, 0, 0, -t2499 * t2649 + t2522 * t2654, -t2501 * t2649 + t2523 * t2654, -t2478 * t2649 + t2514 * t2654, -t2449 * t2649 + t2476 * t2654, 0, 0, 0, 0, 0, 0, -t2445 * t2649 + t2470 * t2654, -t2447 * t2649 + t2473 * t2654, -t2440 * t2649 + t2467 * t2654, -t2398 * t2649 + t2414 * t2654, 0, 0, 0, 0, 0, 0, -t2408 * t2649 + t2419 * t2654, -t2413 * t2649 + t2420 * t2654, -t2394 * t2649 + t2409 * t2654, -t2372 * t2649 + t2376 * t2654, 0, 0, 0, 0, 0, 0, -t2378 * t2649 + t2387 * t2654, -t2380 * t2649 + t2392 * t2654, -t2370 * t2649 + t2375 * t2654, -t2363 * t2649 + t2364 * t2654; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2625, t2626, 0, t2629 * t2654 + t2630 * t2649, 0, 0, 0, 0, 0, 0, t2573 * t2654 + t2593 * t2649, t2559 * t2654 + t2586 * t2649, t2555 * t2654 + t2575 * t2649, t2534 * t2654 + t2545 * t2649, 0, 0, 0, 0, 0, 0, t2499 * t2654 + t2522 * t2649, t2501 * t2654 + t2523 * t2649, t2478 * t2654 + t2514 * t2649, t2449 * t2654 + t2476 * t2649, 0, 0, 0, 0, 0, 0, t2445 * t2654 + t2470 * t2649, t2447 * t2654 + t2473 * t2649, t2440 * t2654 + t2467 * t2649, t2398 * t2654 + t2414 * t2649, 0, 0, 0, 0, 0, 0, t2408 * t2654 + t2419 * t2649, t2413 * t2654 + t2420 * t2649, t2394 * t2654 + t2409 * t2649, t2372 * t2654 + t2376 * t2649, 0, 0, 0, 0, 0, 0, t2378 * t2654 + t2387 * t2649, t2380 * t2654 + t2392 * t2649, t2370 * t2654 + t2375 * t2649, t2363 * t2654 + t2364 * t2649; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2572, t2558, t2554, t2533, 0, 0, 0, 0, 0, 0, t2498, t2500, t2477, t2448, 0, 0, 0, 0, 0, 0, t2444, t2446, t2439, t2397, 0, 0, 0, 0, 0, 0, t2407, t2412, t2393, t2371, 0, 0, 0, 0, 0, 0, t2377, t2379, t2369, t2362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2655, -qJDD(1), 0, t2630, 0, 0, 0, 0, 0, 0, t2593, t2586, t2575, t2545, 0, 0, 0, 0, 0, 0, t2522, t2523, t2514, t2476, 0, 0, 0, 0, 0, 0, t2470, t2473, t2467, t2414, 0, 0, 0, 0, 0, 0, t2419, t2420, t2409, t2376, 0, 0, 0, 0, 0, 0, t2387, t2392, t2375, t2364; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2655, 0, t2629, 0, 0, 0, 0, 0, 0, t2573, t2559, t2555, t2534, 0, 0, 0, 0, 0, 0, t2499, t2501, t2478, t2449, 0, 0, 0, 0, 0, 0, t2445, t2447, t2440, t2398, 0, 0, 0, 0, 0, 0, t2408, t2413, t2394, t2372, 0, 0, 0, 0, 0, 0, t2378, t2380, t2370, t2363; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2572, t2558, t2554, t2533, 0, 0, 0, 0, 0, 0, t2498, t2500, t2477, t2448, 0, 0, 0, 0, 0, 0, t2444, t2446, t2439, t2397, 0, 0, 0, 0, 0, 0, t2407, t2412, t2393, t2371, 0, 0, 0, 0, 0, 0, t2377, t2379, t2369, t2362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2619, t2616, t2599, t2585, 0, 0, 0, 0, 0, 0, t2543, t2547, t2529, t2486, 0, 0, 0, 0, 0, 0, t2488, t2491, t2482, t2430, 0, 0, 0, 0, 0, 0, t2438, t2442, t2424, t2386, 0, 0, 0, 0, 0, 0, t2400, t2404, t2384, t2366; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2615, t2606, t2598, t2584, 0, 0, 0, 0, 0, 0, -t2561, t2692, -t2576, -t2556, 0, 0, 0, 0, 0, 0, -t2515, -t2520, -t2505, -t2435, 0, 0, 0, 0, 0, 0, -t2457, -t2463, -t2431, -t2390, 0, 0, 0, 0, 0, 0, -t2410, -t2415, -t2388, -t2367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2600, t2597, t2620, t2602, 0, 0, 0, 0, 0, 0, t2542, t2546, t2528, t2485, 0, 0, 0, 0, 0, 0, t2487, t2490, t2481, t2429, 0, 0, 0, 0, 0, 0, t2437, t2441, t2423, t2385, 0, 0, 0, 0, 0, 0, t2399, t2403, t2383, t2365; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2583, t2578, t2562, t2526, 0, 0, 0, 0, 0, 0, t2516, t2521, t2506, t2436, 0, 0, 0, 0, 0, 0, t2458, t2464, t2432, t2391, 0, 0, 0, 0, 0, 0, t2411, t2416, t2389, t2368; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2579, t2589, t2564, t2525, 0, 0, 0, 0, 0, 0, -t2535, -t2537, -t2544, -t2503, 0, 0, 0, 0, 0, 0, -t2492, -t2494, -t2513, -t2475, 0, 0, 0, 0, 0, 0, -t2452, -t2454, -t2474, -t2443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2561, -t2692, t2576, t2556, 0, 0, 0, 0, 0, 0, t2515, t2520, t2505, t2435, 0, 0, 0, 0, 0, 0, t2457, t2463, t2431, t2390, 0, 0, 0, 0, 0, 0, t2410, t2415, t2388, t2367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2550, t2540, t2536, t2472, 0, 0, 0, 0, 0, 0, t2480, t2497, t2466, t2406, 0, 0, 0, 0, 0, 0, t2428, t2434, t2402, t2374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2539, t2571, t2538, t2471, 0, 0, 0, 0, 0, 0, t2479, t2496, t2465, t2405, 0, 0, 0, 0, 0, 0, t2427, t2433, t2401, t2373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2535, t2537, t2544, t2503, 0, 0, 0, 0, 0, 0, t2492, t2494, t2513, t2475, 0, 0, 0, 0, 0, 0, t2452, t2454, t2474, t2443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2527, t2518, t2493, t2426, 0, 0, 0, 0, 0, 0, t2462, t2469, t2422, t2382; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2517, t2541, t2495, t2425, 0, 0, 0, 0, 0, 0, t2461, t2468, t2421, t2381; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2492, t2494, t2513, t2475, 0, 0, 0, 0, 0, 0, t2452, t2454, t2474, t2443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2489, t2484, t2453, t2396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2483, t2519, t2455, t2395; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2452, t2454, t2474, t2443;];
f_new_reg  = t1;

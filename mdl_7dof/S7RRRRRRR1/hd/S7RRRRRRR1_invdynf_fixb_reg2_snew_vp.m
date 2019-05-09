% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S7RRRRRRR1
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [7x1]
%   Generalized joint coordinates (joint angles)
% qJD [7x1]
%   Generalized joint velocities
% qJDD [7x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[d1,d3,d5,d7]';
%
% Output:
% f_new_reg [(3*8)x(8*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-09 00:12
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S7RRRRRRR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(7,1),zeros(7,1),zeros(7,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [7 1]), ...
  'S7RRRRRRR1_invdynf_fixb_reg2_snew_vp: qJ has to be [7x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [7 1]), ...
  'S7RRRRRRR1_invdynf_fixb_reg2_snew_vp: qJD has to be [7x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [7 1]), ...
  'S7RRRRRRR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [7x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S7RRRRRRR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S7RRRRRRR1_invdynf_fixb_reg2_snew_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 23:24:46
% EndTime: 2019-05-08 23:25:14
% DurationCPUTime: 17.23s
% Computational Cost: add. (158212->398), mult. (286565->572), div. (0->0), fcn. (242703->14), ass. (0->337)
t2574 = sin(qJ(3));
t2581 = cos(qJ(3));
t2575 = sin(qJ(2));
t2623 = qJD(1) * t2575;
t2544 = -t2574 * qJD(2) + t2581 * t2623;
t2582 = cos(qJ(2));
t2622 = qJD(1) * t2582;
t2600 = qJD(2) * t2622;
t2603 = t2575 * qJDD(1);
t2548 = t2600 + t2603;
t2598 = t2544 * qJD(3) + t2581 * qJDD(2) + t2574 * t2548;
t2594 = -qJDD(4) + t2598;
t2562 = qJD(3) + t2622;
t2573 = sin(qJ(4));
t2580 = cos(qJ(4));
t2523 = t2544 * t2573 + t2562 * t2580;
t2525 = t2544 * t2580 - t2573 * t2562;
t2615 = t2523 * t2525;
t2474 = t2594 - t2615;
t2542 = qJD(2) * t2581 + t2574 * t2623;
t2540 = -qJD(4) + t2542;
t2572 = sin(qJ(5));
t2579 = cos(qJ(5));
t2505 = t2525 * t2579 - t2540 * t2572;
t2522 = qJD(5) + t2523;
t2571 = sin(qJ(6));
t2578 = cos(qJ(6));
t2484 = t2505 * t2578 + t2522 * t2571;
t2481 = t2484 ^ 2;
t2503 = t2525 * t2572 + t2579 * t2540;
t2502 = qJD(6) + t2503;
t2501 = t2502 ^ 2;
t2437 = -t2481 - t2501;
t2627 = t2540 ^ 2;
t2628 = t2525 ^ 2;
t2495 = -t2627 - t2628;
t2570 = sin(qJ(7));
t2577 = cos(qJ(7));
t2456 = t2484 * t2570 + t2502 * t2577;
t2636 = t2456 ^ 2;
t2458 = t2484 * t2577 - t2570 * t2502;
t2635 = t2458 ^ 2;
t2482 = t2505 * t2571 - t2578 * t2522;
t2478 = -qJD(7) + t2482;
t2634 = t2478 ^ 2;
t2633 = t2482 ^ 2;
t2632 = t2503 ^ 2;
t2631 = t2505 ^ 2;
t2630 = t2522 ^ 2;
t2629 = t2523 ^ 2;
t2626 = t2542 ^ 2;
t2625 = t2544 ^ 2;
t2624 = t2562 ^ 2;
t2576 = sin(qJ(1));
t2583 = cos(qJ(1));
t2558 = -g(1) * t2583 - g(2) * t2576;
t2533 = -t2575 * g(3) + t2582 * t2558;
t2557 = t2576 * g(1) - t2583 * g(2);
t2593 = t2548 + t2600;
t2585 = qJD(1) ^ 2;
t2561 = t2582 * t2585 * t2575;
t2602 = -qJDD(2) + t2561;
t2494 = t2581 * t2533 + t2574 * t2557 + (-t2574 * t2593 + t2581 * t2602) * pkin(2);
t2532 = -t2582 * g(3) - t2575 * t2558;
t2568 = t2575 ^ 2;
t2584 = qJD(2) ^ 2;
t2559 = -t2568 * t2585 - t2584;
t2526 = pkin(2) * t2559 + t2532;
t2473 = t2580 * t2494 - t2573 * t2526;
t2436 = -pkin(3) * t2474 + t2473;
t2493 = -t2574 * t2533 + t2581 * t2557 + (-t2574 * t2602 - t2581 * t2593) * pkin(2);
t2515 = -t2542 * qJD(3) - t2574 * qJDD(2) + t2581 * t2548;
t2565 = t2582 * qJDD(1);
t2601 = qJD(2) * t2623;
t2541 = qJDD(3) + t2565 - t2601;
t2480 = -t2523 * qJD(4) + t2580 * t2515 - t2541 * t2573;
t2614 = t2523 * t2540;
t2595 = -t2480 - t2614;
t2586 = pkin(3) * t2595 + t2493;
t2406 = t2572 * t2436 - t2579 * t2586;
t2621 = t2406 * t2572;
t2620 = t2456 * t2458;
t2619 = t2482 * t2484;
t2618 = t2493 * t2574;
t2617 = t2493 * t2581;
t2616 = t2503 * t2505;
t2613 = t2525 * t2540;
t2612 = t2542 * t2544;
t2611 = t2542 * t2562;
t2610 = t2544 * t2562;
t2609 = t2557 * t2576;
t2608 = qJD(5) - t2522;
t2607 = qJD(6) - t2502;
t2606 = qJD(7) - t2478;
t2605 = qJD(7) + t2478;
t2407 = t2579 * t2436 + t2572 * t2586;
t2472 = -t2494 * t2573 - t2526 * t2580;
t2455 = pkin(3) * t2495 - t2472;
t2388 = t2578 * t2407 + t2571 * t2455;
t2569 = t2582 ^ 2;
t2604 = t2568 + t2569;
t2599 = t2525 * qJD(4) + t2573 * t2515 + t2580 * t2541;
t2387 = -t2571 * t2407 + t2578 * t2455;
t2588 = -t2579 * t2480 + t2572 * t2594;
t2441 = -qJD(5) * t2503 - t2588;
t2477 = qJDD(5) + t2599;
t2589 = -t2578 * t2441 - t2571 * t2477;
t2409 = -qJD(6) * t2482 - t2589;
t2395 = -t2502 * t2482 + t2409;
t2596 = t2572 * t2480 + t2579 * t2594;
t2440 = qJD(5) * t2505 + qJDD(6) + t2596;
t2413 = -t2440 - t2619;
t2597 = t2571 * t2441 - t2578 * t2477;
t2591 = -t2577 * t2409 + t2570 * t2440;
t2590 = -t2570 * t2409 - t2577 * t2440;
t2587 = -qJD(6) * t2484 + qJDD(7) - t2597;
t2560 = -t2569 * t2585 - t2584;
t2555 = qJDD(2) + t2561;
t2553 = t2604 * t2585;
t2552 = -qJDD(1) * t2576 - t2583 * t2585;
t2551 = qJDD(1) * t2583 - t2576 * t2585;
t2550 = t2604 * qJDD(1);
t2549 = t2565 - 0.2e1 * t2601;
t2547 = 0.2e1 * t2600 + t2603;
t2546 = t2583 * t2557;
t2530 = -t2559 * t2575 + t2582 * t2602;
t2529 = -t2555 * t2575 + t2560 * t2582;
t2528 = t2559 * t2582 + t2575 * t2602;
t2527 = t2555 * t2582 + t2560 * t2575;
t2520 = -t2624 - t2625;
t2516 = -t2624 - t2626;
t2511 = -t2541 - t2612;
t2510 = t2541 - t2612;
t2508 = -t2625 - t2626;
t2507 = -t2532 * t2575 + t2533 * t2582;
t2506 = t2532 * t2582 + t2533 * t2575;
t2499 = -t2515 - t2611;
t2498 = t2515 - t2611;
t2497 = -t2598 + t2610;
t2496 = t2598 + t2610;
t2491 = -t2627 - t2629;
t2490 = t2511 * t2581 - t2520 * t2574;
t2489 = t2511 * t2574 + t2520 * t2581;
t2487 = -t2510 * t2574 + t2516 * t2581;
t2486 = t2510 * t2581 + t2516 * t2574;
t2485 = -t2628 - t2629;
t2475 = -t2594 - t2615;
t2471 = -t2630 - t2631;
t2470 = t2497 * t2581 - t2499 * t2574;
t2469 = t2497 * t2574 + t2499 * t2581;
t2468 = -t2480 + t2614;
t2466 = -t2599 - t2613;
t2465 = t2599 - t2613;
t2464 = -t2630 - t2632;
t2462 = t2494 * t2581 - t2618;
t2461 = t2494 * t2574 + t2617;
t2460 = t2490 * t2582 - t2498 * t2575;
t2459 = t2490 * t2575 + t2498 * t2582;
t2454 = t2487 * t2582 - t2496 * t2575;
t2453 = t2487 * t2575 + t2496 * t2582;
t2450 = -t2631 - t2632;
t2449 = t2474 * t2580 - t2495 * t2573;
t2448 = -t2474 * t2573 - t2495 * t2580;
t2447 = t2470 * t2582 - t2508 * t2575;
t2446 = t2470 * t2575 + t2508 * t2582;
t2445 = -t2475 * t2573 + t2491 * t2580;
t2444 = -t2475 * t2580 - t2491 * t2573;
t2443 = t2462 * t2582 - t2526 * t2575;
t2442 = t2462 * t2575 + t2526 * t2582;
t2439 = -t2477 - t2616;
t2438 = t2477 - t2616;
t2434 = -t2472 * t2573 + t2473 * t2580;
t2433 = -t2472 * t2580 - t2473 * t2573;
t2432 = -t2501 - t2633;
t2431 = -t2481 - t2633;
t2430 = t2503 * t2608 + t2588;
t2429 = -t2522 * t2503 + t2441;
t2428 = -t2505 * t2608 - t2596;
t2427 = (qJD(5) + t2522) * t2505 + t2596;
t2426 = t2466 * t2580 - t2468 * t2573;
t2425 = -t2466 * t2573 - t2468 * t2580;
t2424 = t2434 * t2581 - t2618;
t2423 = t2434 * t2574 + t2617;
t2422 = t2449 * t2581 + t2574 * t2595;
t2421 = t2449 * t2574 - t2581 * t2595;
t2420 = t2439 * t2579 - t2471 * t2572;
t2419 = t2439 * t2572 + t2471 * t2579;
t2418 = t2445 * t2581 - t2465 * t2574;
t2417 = t2445 * t2574 + t2465 * t2581;
t2416 = -t2634 - t2635;
t2415 = -t2438 * t2572 + t2464 * t2579;
t2414 = t2438 * t2579 + t2464 * t2572;
t2412 = t2440 - t2619;
t2411 = t2426 * t2581 - t2485 * t2574;
t2410 = t2426 * t2574 + t2485 * t2581;
t2408 = -t2634 - t2636;
t2405 = t2579 * t2406;
t2403 = -t2635 - t2636;
t2402 = t2422 * t2582 - t2448 * t2575;
t2401 = t2422 * t2575 + t2448 * t2582;
t2400 = t2418 * t2582 - t2444 * t2575;
t2399 = t2418 * t2575 + t2444 * t2582;
t2398 = t2424 * t2582 - t2433 * t2575;
t2397 = t2424 * t2575 + t2433 * t2582;
t2396 = t2482 * t2607 + t2589;
t2394 = -t2484 * t2607 - t2597;
t2393 = (qJD(6) + t2502) * t2484 + t2597;
t2392 = t2428 * t2579 - t2430 * t2572;
t2391 = t2428 * t2572 + t2430 * t2579;
t2390 = t2413 * t2578 - t2437 * t2571;
t2389 = t2413 * t2571 + t2437 * t2578;
t2386 = t2420 * t2580 + t2429 * t2573;
t2385 = -t2420 * t2573 + t2429 * t2580;
t2384 = -t2412 * t2571 + t2432 * t2578;
t2383 = t2412 * t2578 + t2432 * t2571;
t2382 = t2415 * t2580 + t2427 * t2573;
t2381 = -t2415 * t2573 + t2427 * t2580;
t2380 = t2411 * t2582 - t2425 * t2575;
t2379 = t2411 * t2575 + t2425 * t2582;
t2378 = t2587 - t2620;
t2377 = -t2587 - t2620;
t2376 = t2392 * t2580 + t2450 * t2573;
t2375 = -t2392 * t2573 + t2450 * t2580;
t2374 = pkin(4) * t2437 + t2387;
t2373 = t2407 * t2579 + t2621;
t2372 = t2407 * t2572 - t2405;
t2371 = t2386 * t2581 - t2419 * t2574;
t2370 = t2386 * t2574 + t2419 * t2581;
t2369 = pkin(4) * t2395 + t2406;
t2368 = pkin(4) * t2413 + t2388;
t2367 = t2382 * t2581 - t2414 * t2574;
t2366 = t2382 * t2574 + t2414 * t2581;
t2365 = t2456 * t2605 + t2591;
t2364 = -t2456 * t2606 - t2591;
t2363 = -t2458 * t2605 + t2590;
t2362 = t2458 * t2606 - t2590;
t2361 = t2373 * t2580 + t2455 * t2573;
t2360 = -t2373 * t2573 + t2455 * t2580;
t2359 = t2377 * t2577 - t2416 * t2570;
t2358 = t2377 * t2570 + t2416 * t2577;
t2357 = t2394 * t2578 - t2396 * t2571;
t2356 = t2394 * t2571 + t2396 * t2578;
t2355 = -t2378 * t2570 + t2408 * t2577;
t2354 = t2378 * t2577 + t2408 * t2570;
t2353 = t2390 * t2579 + t2395 * t2572;
t2352 = t2390 * t2572 - t2395 * t2579;
t2351 = t2384 * t2579 + t2393 * t2572;
t2350 = t2384 * t2572 - t2393 * t2579;
t2349 = -t2387 * t2571 + t2388 * t2578;
t2348 = t2387 * t2578 + t2388 * t2571;
t2347 = t2376 * t2581 - t2391 * t2574;
t2346 = t2376 * t2574 + t2391 * t2581;
t2345 = t2357 * t2579 + t2431 * t2572;
t2344 = t2357 * t2572 - t2431 * t2579;
t2343 = t2371 * t2582 - t2385 * t2575;
t2342 = t2371 * t2575 + t2385 * t2582;
t2341 = t2349 * t2579 + t2621;
t2340 = t2349 * t2572 - t2405;
t2339 = t2367 * t2582 - t2381 * t2575;
t2338 = t2367 * t2575 + t2381 * t2582;
t2337 = t2353 * t2580 + t2389 * t2573;
t2336 = -t2353 * t2573 + t2389 * t2580;
t2335 = t2351 * t2580 + t2383 * t2573;
t2334 = -t2351 * t2573 + t2383 * t2580;
t2333 = t2361 * t2581 - t2372 * t2574;
t2332 = t2361 * t2574 + t2372 * t2581;
t2331 = t2368 * t2577 - t2369 * t2570;
t2330 = -t2368 * t2570 - t2369 * t2577;
t2329 = t2363 * t2577 - t2365 * t2570;
t2328 = t2363 * t2570 + t2365 * t2577;
t2327 = t2347 * t2582 - t2375 * t2575;
t2326 = t2347 * t2575 + t2375 * t2582;
t2325 = t2359 * t2578 - t2364 * t2571;
t2324 = t2359 * t2571 + t2364 * t2578;
t2323 = t2355 * t2578 - t2362 * t2571;
t2322 = t2355 * t2571 + t2362 * t2578;
t2321 = t2345 * t2580 + t2356 * t2573;
t2320 = -t2345 * t2573 + t2356 * t2580;
t2319 = t2329 * t2578 - t2403 * t2571;
t2318 = t2329 * t2571 + t2403 * t2578;
t2317 = t2341 * t2580 + t2348 * t2573;
t2316 = -t2341 * t2573 + t2348 * t2580;
t2315 = t2337 * t2581 - t2352 * t2574;
t2314 = t2337 * t2574 + t2352 * t2581;
t2313 = t2333 * t2582 - t2360 * t2575;
t2312 = t2333 * t2575 + t2360 * t2582;
t2311 = t2335 * t2581 - t2350 * t2574;
t2310 = t2335 * t2574 + t2350 * t2581;
t2309 = t2325 * t2579 - t2358 * t2572;
t2308 = t2325 * t2572 + t2358 * t2579;
t2307 = t2323 * t2579 - t2354 * t2572;
t2306 = t2323 * t2572 + t2354 * t2579;
t2305 = t2321 * t2581 - t2344 * t2574;
t2304 = t2321 * t2574 + t2344 * t2581;
t2303 = -t2330 * t2570 + t2331 * t2577;
t2302 = t2330 * t2577 + t2331 * t2570;
t2301 = t2317 * t2581 - t2340 * t2574;
t2300 = t2317 * t2574 + t2340 * t2581;
t2299 = t2319 * t2579 - t2328 * t2572;
t2298 = t2319 * t2572 + t2328 * t2579;
t2297 = t2315 * t2582 - t2336 * t2575;
t2296 = t2315 * t2575 + t2336 * t2582;
t2295 = t2303 * t2578 - t2374 * t2571;
t2294 = t2303 * t2571 + t2374 * t2578;
t2293 = t2311 * t2582 - t2334 * t2575;
t2292 = t2311 * t2575 + t2334 * t2582;
t2291 = t2309 * t2580 + t2324 * t2573;
t2290 = -t2309 * t2573 + t2324 * t2580;
t2289 = t2307 * t2580 + t2322 * t2573;
t2288 = -t2307 * t2573 + t2322 * t2580;
t2287 = t2305 * t2582 - t2320 * t2575;
t2286 = t2305 * t2575 + t2320 * t2582;
t2285 = t2299 * t2580 + t2318 * t2573;
t2284 = -t2299 * t2573 + t2318 * t2580;
t2283 = t2301 * t2582 - t2316 * t2575;
t2282 = t2301 * t2575 + t2316 * t2582;
t2281 = t2291 * t2581 - t2308 * t2574;
t2280 = t2291 * t2574 + t2308 * t2581;
t2279 = t2295 * t2579 - t2302 * t2572;
t2278 = t2295 * t2572 + t2302 * t2579;
t2277 = t2289 * t2581 - t2306 * t2574;
t2276 = t2289 * t2574 + t2306 * t2581;
t2275 = t2285 * t2581 - t2298 * t2574;
t2274 = t2285 * t2574 + t2298 * t2581;
t2273 = t2279 * t2580 + t2294 * t2573;
t2272 = -t2279 * t2573 + t2294 * t2580;
t2271 = t2281 * t2582 - t2290 * t2575;
t2270 = t2281 * t2575 + t2290 * t2582;
t2269 = t2277 * t2582 - t2288 * t2575;
t2268 = t2277 * t2575 + t2288 * t2582;
t2267 = t2275 * t2582 - t2284 * t2575;
t2266 = t2275 * t2575 + t2284 * t2582;
t2265 = t2273 * t2581 - t2278 * t2574;
t2264 = t2273 * t2574 + t2278 * t2581;
t2263 = t2265 * t2582 - t2272 * t2575;
t2262 = t2265 * t2575 + t2272 * t2582;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2552, -t2551, 0, t2558 * t2583 - t2609, 0, 0, 0, 0, 0, 0, t2529 * t2583 - t2549 * t2576, t2530 * t2583 + t2547 * t2576, t2550 * t2583 - t2553 * t2576, t2507 * t2583 - t2609, 0, 0, 0, 0, 0, 0, t2454 * t2583 - t2486 * t2576, t2460 * t2583 - t2489 * t2576, t2447 * t2583 - t2469 * t2576, t2443 * t2583 - t2461 * t2576, 0, 0, 0, 0, 0, 0, t2400 * t2583 - t2417 * t2576, t2402 * t2583 - t2421 * t2576, t2380 * t2583 - t2410 * t2576, t2398 * t2583 - t2423 * t2576, 0, 0, 0, 0, 0, 0, t2339 * t2583 - t2366 * t2576, t2343 * t2583 - t2370 * t2576, t2327 * t2583 - t2346 * t2576, t2313 * t2583 - t2332 * t2576, 0, 0, 0, 0, 0, 0, t2293 * t2583 - t2310 * t2576, t2297 * t2583 - t2314 * t2576, t2287 * t2583 - t2304 * t2576, t2283 * t2583 - t2300 * t2576, 0, 0, 0, 0, 0, 0, t2269 * t2583 - t2276 * t2576, t2271 * t2583 - t2280 * t2576, t2267 * t2583 - t2274 * t2576, t2263 * t2583 - t2264 * t2576; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2551, t2552, 0, t2558 * t2576 + t2546, 0, 0, 0, 0, 0, 0, t2529 * t2576 + t2549 * t2583, t2530 * t2576 - t2547 * t2583, t2550 * t2576 + t2553 * t2583, t2507 * t2576 + t2546, 0, 0, 0, 0, 0, 0, t2454 * t2576 + t2486 * t2583, t2460 * t2576 + t2489 * t2583, t2447 * t2576 + t2469 * t2583, t2443 * t2576 + t2461 * t2583, 0, 0, 0, 0, 0, 0, t2400 * t2576 + t2417 * t2583, t2402 * t2576 + t2421 * t2583, t2380 * t2576 + t2410 * t2583, t2398 * t2576 + t2423 * t2583, 0, 0, 0, 0, 0, 0, t2339 * t2576 + t2366 * t2583, t2343 * t2576 + t2370 * t2583, t2327 * t2576 + t2346 * t2583, t2313 * t2576 + t2332 * t2583, 0, 0, 0, 0, 0, 0, t2293 * t2576 + t2310 * t2583, t2297 * t2576 + t2314 * t2583, t2287 * t2576 + t2304 * t2583, t2283 * t2576 + t2300 * t2583, 0, 0, 0, 0, 0, 0, t2269 * t2576 + t2276 * t2583, t2271 * t2576 + t2280 * t2583, t2267 * t2576 + t2274 * t2583, t2263 * t2576 + t2264 * t2583; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2527, t2528, 0, t2506, 0, 0, 0, 0, 0, 0, t2453, t2459, t2446, t2442, 0, 0, 0, 0, 0, 0, t2399, t2401, t2379, t2397, 0, 0, 0, 0, 0, 0, t2338, t2342, t2326, t2312, 0, 0, 0, 0, 0, 0, t2292, t2296, t2286, t2282, 0, 0, 0, 0, 0, 0, t2268, t2270, t2266, t2262; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2585, -qJDD(1), 0, t2558, 0, 0, 0, 0, 0, 0, t2529, t2530, t2550, t2507, 0, 0, 0, 0, 0, 0, t2454, t2460, t2447, t2443, 0, 0, 0, 0, 0, 0, t2400, t2402, t2380, t2398, 0, 0, 0, 0, 0, 0, t2339, t2343, t2327, t2313, 0, 0, 0, 0, 0, 0, t2293, t2297, t2287, t2283, 0, 0, 0, 0, 0, 0, t2269, t2271, t2267, t2263; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2585, 0, t2557, 0, 0, 0, 0, 0, 0, t2549, -t2547, t2553, t2557, 0, 0, 0, 0, 0, 0, t2486, t2489, t2469, t2461, 0, 0, 0, 0, 0, 0, t2417, t2421, t2410, t2423, 0, 0, 0, 0, 0, 0, t2366, t2370, t2346, t2332, 0, 0, 0, 0, 0, 0, t2310, t2314, t2304, t2300, 0, 0, 0, 0, 0, 0, t2276, t2280, t2274, t2264; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2527, t2528, 0, t2506, 0, 0, 0, 0, 0, 0, t2453, t2459, t2446, t2442, 0, 0, 0, 0, 0, 0, t2399, t2401, t2379, t2397, 0, 0, 0, 0, 0, 0, t2338, t2342, t2326, t2312, 0, 0, 0, 0, 0, 0, t2292, t2296, t2286, t2282, 0, 0, 0, 0, 0, 0, t2268, t2270, t2266, t2262; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2560, t2602, t2565, t2533, 0, 0, 0, 0, 0, 0, t2487, t2490, t2470, t2462, 0, 0, 0, 0, 0, 0, t2418, t2422, t2411, t2424, 0, 0, 0, 0, 0, 0, t2367, t2371, t2347, t2333, 0, 0, 0, 0, 0, 0, t2311, t2315, t2305, t2301, 0, 0, 0, 0, 0, 0, t2277, t2281, t2275, t2265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2555, t2559, -t2603, t2532, 0, 0, 0, 0, 0, 0, t2496, t2498, t2508, t2526, 0, 0, 0, 0, 0, 0, t2444, t2448, t2425, t2433, 0, 0, 0, 0, 0, 0, t2381, t2385, t2375, t2360, 0, 0, 0, 0, 0, 0, t2334, t2336, t2320, t2316, 0, 0, 0, 0, 0, 0, t2288, t2290, t2284, t2272; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2549, t2547, -t2553, -t2557, 0, 0, 0, 0, 0, 0, -t2486, -t2489, -t2469, -t2461, 0, 0, 0, 0, 0, 0, -t2417, -t2421, -t2410, -t2423, 0, 0, 0, 0, 0, 0, -t2366, -t2370, -t2346, -t2332, 0, 0, 0, 0, 0, 0, -t2310, -t2314, -t2304, -t2300, 0, 0, 0, 0, 0, 0, -t2276, -t2280, -t2274, -t2264; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2516, t2511, t2497, t2494, 0, 0, 0, 0, 0, 0, t2445, t2449, t2426, t2434, 0, 0, 0, 0, 0, 0, t2382, t2386, t2376, t2361, 0, 0, 0, 0, 0, 0, t2335, t2337, t2321, t2317, 0, 0, 0, 0, 0, 0, t2289, t2291, t2285, t2273; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2510, t2520, t2499, t2493, 0, 0, 0, 0, 0, 0, t2465, -t2595, t2485, t2493, 0, 0, 0, 0, 0, 0, t2414, t2419, t2391, t2372, 0, 0, 0, 0, 0, 0, t2350, t2352, t2344, t2340, 0, 0, 0, 0, 0, 0, t2306, t2308, t2298, t2278; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2496, t2498, t2508, t2526, 0, 0, 0, 0, 0, 0, t2444, t2448, t2425, t2433, 0, 0, 0, 0, 0, 0, t2381, t2385, t2375, t2360, 0, 0, 0, 0, 0, 0, t2334, t2336, t2320, t2316, 0, 0, 0, 0, 0, 0, t2288, t2290, t2284, t2272; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2491, t2474, t2466, t2473, 0, 0, 0, 0, 0, 0, t2415, t2420, t2392, t2373, 0, 0, 0, 0, 0, 0, t2351, t2353, t2345, t2341, 0, 0, 0, 0, 0, 0, t2307, t2309, t2299, t2279; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2475, t2495, t2468, t2472, 0, 0, 0, 0, 0, 0, -t2427, -t2429, -t2450, -t2455, 0, 0, 0, 0, 0, 0, -t2383, -t2389, -t2356, -t2348, 0, 0, 0, 0, 0, 0, -t2322, -t2324, -t2318, -t2294; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2465, -t2595, t2485, t2493, 0, 0, 0, 0, 0, 0, t2414, t2419, t2391, t2372, 0, 0, 0, 0, 0, 0, t2350, t2352, t2344, t2340, 0, 0, 0, 0, 0, 0, t2306, t2308, t2298, t2278; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2464, t2439, t2428, t2407, 0, 0, 0, 0, 0, 0, t2384, t2390, t2357, t2349, 0, 0, 0, 0, 0, 0, t2323, t2325, t2319, t2295; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2438, t2471, t2430, -t2406, 0, 0, 0, 0, 0, 0, -t2393, -t2395, -t2431, -t2406, 0, 0, 0, 0, 0, 0, t2354, t2358, t2328, t2302; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2427, t2429, t2450, t2455, 0, 0, 0, 0, 0, 0, t2383, t2389, t2356, t2348, 0, 0, 0, 0, 0, 0, t2322, t2324, t2318, t2294; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2432, t2413, t2394, t2388, 0, 0, 0, 0, 0, 0, t2355, t2359, t2329, t2303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2412, t2437, t2396, t2387, 0, 0, 0, 0, 0, 0, t2362, t2364, t2403, t2374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2393, t2395, t2431, t2406, 0, 0, 0, 0, 0, 0, -t2354, -t2358, -t2328, -t2302; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2408, t2377, t2363, t2331; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2378, t2416, t2365, t2330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2362, t2364, t2403, t2374;];
f_new_reg  = t1;

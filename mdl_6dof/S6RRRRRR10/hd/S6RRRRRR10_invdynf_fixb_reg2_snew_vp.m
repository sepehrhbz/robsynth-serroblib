% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRRR10
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
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d2,d3,d4,d5,d6]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 19:15
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRRR10_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR10_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR10_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRR10_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR10_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RRRRRR10_invdynf_fixb_reg2_snew_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 19:14:07
% EndTime: 2019-05-08 19:15:14
% DurationCPUTime: 68.47s
% Computational Cost: add. (1024458->453), mult. (2627278->745), div. (0->0), fcn. (2288885->18), ass. (0->403)
t3444 = cos(pkin(6));
t3433 = qJD(1) * t3444 + qJD(2);
t3448 = sin(qJ(3));
t3454 = cos(qJ(3));
t3443 = cos(pkin(7));
t3441 = sin(pkin(6));
t3455 = cos(qJ(2));
t3535 = t3441 * t3455;
t3526 = qJD(1) * t3535;
t3519 = t3443 * t3526;
t3449 = sin(qJ(2));
t3536 = t3441 * t3449;
t3527 = qJD(1) * t3536;
t3440 = sin(pkin(7));
t3537 = t3440 * t3454;
t3387 = -t3433 * t3537 + t3448 * t3527 - t3454 * t3519;
t3528 = qJDD(1) * t3441;
t3413 = qJD(2) * t3526 + t3449 * t3528;
t3414 = -qJD(2) * t3527 + t3455 * t3528;
t3432 = t3444 * qJDD(1) + qJDD(2);
t3533 = t3443 * t3448;
t3538 = t3440 * t3448;
t3362 = -t3387 * qJD(3) + t3454 * t3413 + t3414 * t3533 + t3432 * t3538;
t3439 = sin(pkin(8));
t3442 = cos(pkin(8));
t3399 = (t3433 * t3440 + t3519) * pkin(11);
t3450 = sin(qJ(1));
t3456 = cos(qJ(1));
t3428 = -g(1) * t3456 - g(2) * t3450;
t3457 = qJD(1) ^ 2;
t3410 = -pkin(1) * t3457 + pkin(10) * t3528 + t3428;
t3427 = t3450 * g(1) - g(2) * t3456;
t3409 = pkin(10) * t3441 * t3457 + qJDD(1) * pkin(1) + t3427;
t3541 = t3409 * t3444;
t3521 = -t3449 * t3410 + t3455 * t3541;
t3551 = qJD(1) * t3441;
t3557 = pkin(11) * t3440;
t3552 = qJD(1) * (-pkin(2) * t3455 - t3449 * t3557) * t3551;
t3556 = pkin(11) * t3443;
t3336 = -t3413 * t3556 + t3432 * pkin(2) + t3433 * t3399 + (-g(3) * t3455 - t3449 * t3552) * t3441 + t3521;
t3406 = pkin(2) * t3433 - t3527 * t3556;
t3529 = t3455 * t3410 + t3449 * t3541;
t3337 = -t3433 * t3406 + (-g(3) * t3449 + t3455 * t3552) * t3441 + (t3414 * t3443 + t3432 * t3440) * pkin(11) + t3529;
t3553 = t3444 * g(3);
t3343 = -t3413 * t3557 - t3414 * pkin(2) - t3553 + (-t3409 + (-t3399 * t3455 + t3406 * t3449) * qJD(1)) * t3441;
t3532 = t3443 * t3454;
t3297 = t3336 * t3532 - t3337 * t3448 + t3343 * t3537;
t3389 = t3433 * t3538 + (t3449 * t3454 + t3455 * t3533) * t3551;
t3555 = pkin(12) * t3439;
t3370 = pkin(3) * t3387 - t3389 * t3555;
t3402 = -t3443 * t3433 + t3440 * t3526 - qJD(3);
t3469 = -t3387 * t3442 - t3402 * t3439;
t3374 = t3469 * pkin(12);
t3390 = -t3414 * t3440 + t3443 * t3432 + qJDD(3);
t3461 = pkin(3) * t3390 - t3370 * t3389 - t3374 * t3402 + t3297;
t3317 = -t3336 * t3440 + t3443 * t3343;
t3516 = t3448 * t3413 - t3414 * t3532 - t3432 * t3537;
t3361 = -qJD(3) * t3389 - t3516;
t3554 = pkin(12) * t3442;
t3377 = -pkin(3) * t3402 - t3389 * t3554;
t3462 = -pkin(3) * t3361 + t3374 * t3387 + t3377 * t3389 + t3317;
t3573 = t3442 * (-t3362 * t3554 + t3461) + t3439 * (-t3362 * t3555 + t3462);
t3572 = t3361 * t3442 + t3390 * t3439;
t3447 = sin(qJ(4));
t3453 = cos(qJ(4));
t3351 = t3453 * t3389 + t3447 * t3469;
t3375 = -t3387 * t3439 + t3402 * t3442 - qJD(4);
t3446 = sin(qJ(5));
t3452 = cos(qJ(5));
t3323 = t3351 * t3446 + t3452 * t3375;
t3322 = qJD(6) + t3323;
t3571 = qJD(6) + t3322;
t3325 = t3351 * t3452 - t3375 * t3446;
t3534 = t3442 * t3453;
t3539 = t3439 * t3453;
t3349 = t3387 * t3534 + t3389 * t3447 + t3402 * t3539;
t3348 = qJD(5) + t3349;
t3445 = sin(qJ(6));
t3451 = cos(qJ(6));
t3312 = t3325 * t3445 - t3451 * t3348;
t3570 = t3312 ^ 2;
t3314 = t3325 * t3451 + t3348 * t3445;
t3569 = t3314 ^ 2;
t3568 = t3322 ^ 2;
t3567 = t3323 ^ 2;
t3566 = t3325 ^ 2;
t3565 = t3348 ^ 2;
t3564 = t3349 ^ 2;
t3563 = t3351 ^ 2;
t3562 = t3375 ^ 2;
t3561 = t3387 ^ 2;
t3560 = t3389 ^ 2;
t3559 = t3402 ^ 2;
t3558 = t3433 ^ 2;
t3550 = t3312 * t3314;
t3549 = t3323 * t3325;
t3548 = t3349 * t3351;
t3547 = t3349 * t3375;
t3546 = t3351 * t3375;
t3544 = t3387 * t3389;
t3543 = t3387 * t3402;
t3540 = t3441 ^ 2 * t3457;
t3531 = qJD(5) - t3348;
t3530 = qJD(6) - t3322;
t3298 = t3336 * t3533 + t3454 * t3337 + t3343 * t3538;
t3276 = pkin(12) * t3572 - t3387 * t3370 + t3402 * t3377 + t3298;
t3229 = t3453 * t3276 + t3447 * t3573;
t3319 = pkin(4) * t3349 - pkin(13) * t3351;
t3339 = -t3361 * t3439 + t3442 * t3390 + qJDD(4);
t3222 = -pkin(4) * t3562 + pkin(13) * t3339 - t3319 * t3349 + t3229;
t3244 = -t3439 * t3461 + t3442 * t3462;
t3518 = -t3351 * qJD(4) + t3361 * t3534 - t3447 * t3362 + t3390 * t3539;
t3289 = -t3518 - t3546;
t3309 = -t3349 * qJD(4) + t3453 * t3362 + t3447 * t3572;
t3522 = -t3309 - t3547;
t3458 = pkin(4) * t3289 + pkin(13) * t3522 + t3244;
t3193 = t3452 * t3222 + t3446 * t3458;
t3192 = -t3222 * t3446 + t3452 * t3458;
t3474 = -t3452 * t3309 - t3446 * t3339;
t3280 = -qJD(5) * t3323 - t3474;
t3465 = qJDD(5) - t3518;
t3525 = -t3445 * t3280 + t3451 * t3465;
t3524 = t3348 * t3323 - t3280;
t3523 = t3446 * t3309 - t3452 * t3339;
t3520 = t3433 * t3526;
t3517 = t3447 * t3276 - t3453 * t3573;
t3300 = pkin(5) * t3323 - pkin(14) * t3325;
t3185 = -pkin(5) * t3565 + pkin(14) * t3465 - t3323 * t3300 + t3193;
t3221 = -t3339 * pkin(4) - t3562 * pkin(13) + t3351 * t3319 + t3517;
t3262 = (qJD(5) + t3348) * t3325 + t3523;
t3196 = pkin(5) * t3262 + pkin(14) * t3524 + t3221;
t3162 = -t3185 * t3445 + t3196 * t3451;
t3163 = t3185 * t3451 + t3196 * t3445;
t3148 = -t3162 * t3445 + t3163 * t3451;
t3184 = -pkin(5) * t3465 - pkin(14) * t3565 + t3300 * t3325 - t3192;
t3134 = t3148 * t3446 - t3184 * t3452;
t3135 = t3148 * t3452 + t3184 * t3446;
t3147 = t3162 * t3451 + t3163 * t3445;
t3511 = t3135 * t3447 - t3147 * t3453;
t3115 = t3442 * t3134 + t3439 * t3511;
t3116 = -t3439 * t3134 + t3442 * t3511;
t3124 = t3135 * t3453 + t3147 * t3447;
t3514 = t3116 * t3454 + t3124 * t3448;
t3108 = -t3440 * t3115 + t3443 * t3514;
t3111 = -t3116 * t3448 + t3124 * t3454;
t3515 = t3108 * t3455 + t3111 * t3449;
t3164 = t3192 * t3452 + t3193 * t3446;
t3165 = -t3192 * t3446 + t3193 * t3452;
t3504 = t3165 * t3447 - t3221 * t3453;
t3143 = t3442 * t3164 + t3439 * t3504;
t3144 = -t3439 * t3164 + t3442 * t3504;
t3157 = t3165 * t3453 + t3221 * t3447;
t3508 = t3144 * t3454 + t3157 * t3448;
t3122 = -t3440 * t3143 + t3443 * t3508;
t3129 = -t3144 * t3448 + t3157 * t3454;
t3513 = t3122 * t3455 + t3129 * t3449;
t3240 = -t3314 * t3530 + t3525;
t3463 = -t3451 * t3280 - t3445 * t3465;
t3242 = t3312 * t3530 + t3463;
t3209 = t3240 * t3451 - t3242 * t3445;
t3270 = -t3569 - t3570;
t3197 = t3209 * t3446 - t3270 * t3452;
t3198 = t3209 * t3452 + t3270 * t3446;
t3208 = t3240 * t3445 + t3242 * t3451;
t3498 = t3198 * t3447 - t3208 * t3453;
t3158 = t3442 * t3197 + t3439 * t3498;
t3159 = -t3439 * t3197 + t3442 * t3498;
t3177 = t3198 * t3453 + t3208 * t3447;
t3506 = t3159 * t3454 + t3177 * t3448;
t3131 = -t3440 * t3158 + t3443 * t3506;
t3149 = -t3159 * t3448 + t3177 * t3454;
t3512 = t3131 * t3455 + t3149 * t3449;
t3464 = -qJD(5) * t3325 - qJDD(6) - t3523;
t3247 = -t3464 - t3550;
t3272 = -t3568 - t3570;
t3232 = -t3247 * t3445 + t3272 * t3451;
t3239 = t3314 * t3571 - t3525;
t3202 = t3232 * t3446 - t3239 * t3452;
t3203 = t3232 * t3452 + t3239 * t3446;
t3231 = t3247 * t3451 + t3272 * t3445;
t3496 = t3203 * t3447 - t3231 * t3453;
t3169 = t3442 * t3202 + t3439 * t3496;
t3170 = -t3439 * t3202 + t3442 * t3496;
t3186 = t3203 * t3453 + t3231 * t3447;
t3503 = t3170 * t3454 + t3186 * t3448;
t3138 = -t3440 * t3169 + t3443 * t3503;
t3153 = -t3170 * t3448 + t3186 * t3454;
t3510 = t3138 * t3455 + t3153 * t3449;
t3248 = t3464 - t3550;
t3281 = -t3568 - t3569;
t3234 = t3248 * t3451 - t3281 * t3445;
t3241 = -t3312 * t3571 - t3463;
t3206 = t3234 * t3446 - t3241 * t3452;
t3207 = t3234 * t3452 + t3241 * t3446;
t3233 = t3248 * t3445 + t3281 * t3451;
t3494 = t3207 * t3447 - t3233 * t3453;
t3171 = t3442 * t3206 + t3439 * t3494;
t3172 = -t3439 * t3206 + t3442 * t3494;
t3189 = t3207 * t3453 + t3233 * t3447;
t3502 = t3172 * t3454 + t3189 * t3448;
t3140 = -t3440 * t3171 + t3443 * t3502;
t3154 = -t3172 * t3448 + t3189 * t3454;
t3509 = t3140 * t3455 + t3154 * t3449;
t3489 = t3229 * t3447 - t3453 * t3517;
t3187 = t3442 * t3244 + t3439 * t3489;
t3188 = -t3439 * t3244 + t3442 * t3489;
t3201 = t3229 * t3453 + t3447 * t3517;
t3499 = t3188 * t3454 + t3201 * t3448;
t3152 = -t3440 * t3187 + t3443 * t3499;
t3168 = -t3188 * t3448 + t3201 * t3454;
t3507 = t3152 * t3455 + t3168 * t3449;
t3263 = -t3325 * t3531 - t3523;
t3265 = t3323 * t3531 + t3474;
t3235 = t3263 * t3446 + t3265 * t3452;
t3236 = t3263 * t3452 - t3265 * t3446;
t3288 = -t3566 - t3567;
t3488 = t3236 * t3447 - t3288 * t3453;
t3199 = t3442 * t3235 + t3439 * t3488;
t3200 = -t3439 * t3235 + t3442 * t3488;
t3223 = t3236 * t3453 + t3288 * t3447;
t3497 = t3200 * t3454 + t3223 * t3448;
t3161 = -t3440 * t3199 + t3443 * t3497;
t3182 = -t3200 * t3448 + t3223 * t3454;
t3505 = t3161 * t3455 + t3182 * t3449;
t3278 = t3465 - t3549;
t3294 = -t3565 - t3567;
t3249 = t3278 * t3452 + t3294 * t3446;
t3250 = -t3278 * t3446 + t3294 * t3452;
t3486 = t3250 * t3447 - t3262 * t3453;
t3210 = t3442 * t3249 + t3439 * t3486;
t3211 = -t3439 * t3249 + t3442 * t3486;
t3227 = t3250 * t3453 + t3262 * t3447;
t3493 = t3211 * t3454 + t3227 * t3448;
t3174 = -t3440 * t3210 + t3443 * t3493;
t3190 = -t3211 * t3448 + t3227 * t3454;
t3501 = t3174 * t3455 + t3190 * t3449;
t3279 = -t3465 - t3549;
t3299 = -t3565 - t3566;
t3257 = t3279 * t3446 + t3299 * t3452;
t3258 = t3279 * t3452 - t3299 * t3446;
t3483 = t3258 * t3447 + t3453 * t3524;
t3212 = t3442 * t3257 + t3439 * t3483;
t3213 = -t3439 * t3257 + t3442 * t3483;
t3230 = t3258 * t3453 - t3447 * t3524;
t3492 = t3213 * t3454 + t3230 * t3448;
t3176 = -t3440 * t3212 + t3443 * t3492;
t3191 = -t3213 * t3448 + t3230 * t3454;
t3500 = t3176 * t3455 + t3191 * t3449;
t3310 = -t3563 - t3564;
t3290 = t3518 - t3546;
t3292 = -t3309 + t3547;
t3481 = t3290 * t3447 + t3292 * t3453;
t3245 = t3442 * t3310 + t3439 * t3481;
t3246 = -t3439 * t3310 + t3442 * t3481;
t3261 = t3290 * t3453 - t3292 * t3447;
t3487 = t3246 * t3454 + t3261 * t3448;
t3205 = -t3440 * t3245 + t3443 * t3487;
t3226 = -t3246 * t3448 + t3261 * t3454;
t3495 = t3205 * t3455 + t3226 * t3449;
t3306 = t3339 - t3548;
t3316 = -t3562 - t3564;
t3475 = t3306 * t3453 + t3316 * t3447;
t3253 = t3442 * t3289 + t3439 * t3475;
t3254 = -t3439 * t3289 + t3442 * t3475;
t3284 = -t3306 * t3447 + t3316 * t3453;
t3485 = t3254 * t3454 + t3284 * t3448;
t3217 = -t3440 * t3253 + t3443 * t3485;
t3238 = -t3254 * t3448 + t3284 * t3454;
t3491 = t3217 * t3455 + t3238 * t3449;
t3305 = -t3339 - t3548;
t3318 = -t3562 - t3563;
t3476 = t3305 * t3447 + t3318 * t3453;
t3255 = t3439 * t3476 - t3442 * t3522;
t3256 = t3439 * t3522 + t3442 * t3476;
t3285 = t3305 * t3453 - t3318 * t3447;
t3484 = t3256 * t3454 + t3285 * t3448;
t3219 = -t3440 * t3255 + t3443 * t3484;
t3243 = -t3256 * t3448 + t3285 * t3454;
t3490 = t3219 * t3455 + t3243 * t3449;
t3479 = t3297 * t3454 + t3298 * t3448;
t3260 = -t3440 * t3317 + t3443 * t3479;
t3271 = -t3297 * t3448 + t3298 * t3454;
t3482 = t3260 * t3455 + t3271 * t3449;
t3352 = -t3560 - t3561;
t3327 = (-qJD(3) - t3402) * t3389 - t3516;
t3329 = -t3362 + t3543;
t3473 = t3327 * t3448 + t3329 * t3454;
t3296 = -t3440 * t3352 + t3443 * t3473;
t3311 = t3327 * t3454 - t3329 * t3448;
t3480 = t3296 * t3455 + t3311 * t3449;
t3326 = (qJD(3) - t3402) * t3389 + t3516;
t3355 = t3390 - t3544;
t3360 = -t3559 - t3561;
t3471 = t3355 * t3454 + t3360 * t3448;
t3302 = -t3440 * t3326 + t3443 * t3471;
t3320 = -t3355 * t3448 + t3360 * t3454;
t3478 = t3302 * t3455 + t3320 * t3449;
t3328 = t3362 + t3543;
t3354 = -t3390 - t3544;
t3367 = -t3559 - t3560;
t3472 = t3354 * t3448 + t3367 * t3454;
t3304 = -t3440 * t3328 + t3443 * t3472;
t3321 = t3354 * t3454 - t3367 * t3448;
t3477 = t3304 * t3455 + t3321 * t3449;
t3378 = -g(3) * t3535 + t3521;
t3379 = -g(3) * t3536 + t3529;
t3470 = t3378 * t3455 + t3379 * t3449;
t3392 = t3520 - t3413;
t3417 = t3433 * t3527;
t3393 = t3414 + t3417;
t3468 = t3392 * t3455 + t3393 * t3449;
t3437 = t3449 ^ 2;
t3404 = -t3437 * t3540 - t3558;
t3426 = t3455 * t3449 * t3540;
t3412 = t3426 - t3432;
t3467 = t3404 * t3455 + t3412 * t3449;
t3411 = t3426 + t3432;
t3438 = t3455 ^ 2;
t3415 = -t3438 * t3540 - t3558;
t3466 = t3411 * t3455 + t3415 * t3449;
t3425 = -qJDD(1) * t3450 - t3456 * t3457;
t3424 = qJDD(1) * t3456 - t3450 * t3457;
t3416 = (-t3437 - t3438) * t3540;
t3396 = -t3441 * t3409 - t3553;
t3394 = -t3414 + t3417;
t3391 = t3520 + t3413;
t3382 = -t3411 * t3449 + t3415 * t3455;
t3380 = -t3404 * t3449 + t3412 * t3455;
t3372 = -t3392 * t3449 + t3393 * t3455;
t3369 = -t3441 * t3394 + t3444 * t3466;
t3368 = t3444 * t3394 + t3441 * t3466;
t3366 = -t3441 * t3391 + t3444 * t3467;
t3365 = t3444 * t3391 + t3441 * t3467;
t3364 = -t3441 * t3416 + t3444 * t3468;
t3363 = t3444 * t3416 + t3441 * t3468;
t3353 = -t3378 * t3449 + t3379 * t3455;
t3331 = -t3441 * t3396 + t3444 * t3470;
t3330 = t3444 * t3396 + t3441 * t3470;
t3303 = t3443 * t3328 + t3440 * t3472;
t3301 = t3443 * t3326 + t3440 * t3471;
t3295 = t3443 * t3352 + t3440 * t3473;
t3287 = -t3304 * t3449 + t3321 * t3455;
t3286 = -t3302 * t3449 + t3320 * t3455;
t3277 = -t3296 * t3449 + t3311 * t3455;
t3269 = -t3441 * t3303 + t3444 * t3477;
t3268 = t3444 * t3303 + t3441 * t3477;
t3267 = -t3441 * t3301 + t3444 * t3478;
t3266 = t3444 * t3301 + t3441 * t3478;
t3259 = t3443 * t3317 + t3440 * t3479;
t3252 = -t3441 * t3295 + t3444 * t3480;
t3251 = t3444 * t3295 + t3441 * t3480;
t3237 = -t3260 * t3449 + t3271 * t3455;
t3218 = t3443 * t3255 + t3440 * t3484;
t3216 = t3443 * t3253 + t3440 * t3485;
t3215 = -t3441 * t3259 + t3444 * t3482;
t3214 = t3444 * t3259 + t3441 * t3482;
t3204 = t3443 * t3245 + t3440 * t3487;
t3195 = -t3219 * t3449 + t3243 * t3455;
t3194 = -t3217 * t3449 + t3238 * t3455;
t3183 = -t3205 * t3449 + t3226 * t3455;
t3181 = -t3441 * t3218 + t3444 * t3490;
t3180 = t3444 * t3218 + t3441 * t3490;
t3179 = -t3441 * t3216 + t3444 * t3491;
t3178 = t3444 * t3216 + t3441 * t3491;
t3175 = t3443 * t3212 + t3440 * t3492;
t3173 = t3443 * t3210 + t3440 * t3493;
t3167 = -t3441 * t3204 + t3444 * t3495;
t3166 = t3444 * t3204 + t3441 * t3495;
t3160 = t3443 * t3199 + t3440 * t3497;
t3156 = -t3176 * t3449 + t3191 * t3455;
t3155 = -t3174 * t3449 + t3190 * t3455;
t3151 = t3443 * t3187 + t3440 * t3499;
t3150 = -t3161 * t3449 + t3182 * t3455;
t3146 = -t3441 * t3175 + t3444 * t3500;
t3145 = t3444 * t3175 + t3441 * t3500;
t3142 = -t3441 * t3173 + t3444 * t3501;
t3141 = t3444 * t3173 + t3441 * t3501;
t3139 = t3443 * t3171 + t3440 * t3502;
t3137 = t3443 * t3169 + t3440 * t3503;
t3136 = -t3152 * t3449 + t3168 * t3455;
t3133 = -t3441 * t3160 + t3444 * t3505;
t3132 = t3444 * t3160 + t3441 * t3505;
t3130 = t3443 * t3158 + t3440 * t3506;
t3128 = -t3140 * t3449 + t3154 * t3455;
t3127 = -t3138 * t3449 + t3153 * t3455;
t3126 = -t3441 * t3151 + t3444 * t3507;
t3125 = t3444 * t3151 + t3441 * t3507;
t3123 = -t3131 * t3449 + t3149 * t3455;
t3121 = t3443 * t3143 + t3440 * t3508;
t3120 = -t3441 * t3139 + t3444 * t3509;
t3119 = t3444 * t3139 + t3441 * t3509;
t3118 = -t3441 * t3137 + t3444 * t3510;
t3117 = t3444 * t3137 + t3441 * t3510;
t3114 = -t3441 * t3130 + t3444 * t3512;
t3113 = t3444 * t3130 + t3441 * t3512;
t3112 = -t3122 * t3449 + t3129 * t3455;
t3110 = -t3441 * t3121 + t3444 * t3513;
t3109 = t3444 * t3121 + t3441 * t3513;
t3107 = t3443 * t3115 + t3440 * t3514;
t3106 = -t3108 * t3449 + t3111 * t3455;
t3105 = -t3441 * t3107 + t3444 * t3515;
t3104 = t3444 * t3107 + t3441 * t3515;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t3425, -t3424, 0, -t3427 * t3450 + t3428 * t3456, 0, 0, 0, 0, 0, 0, -t3369 * t3450 + t3382 * t3456, -t3366 * t3450 + t3380 * t3456, -t3364 * t3450 + t3372 * t3456, -t3331 * t3450 + t3353 * t3456, 0, 0, 0, 0, 0, 0, -t3267 * t3450 + t3286 * t3456, -t3269 * t3450 + t3287 * t3456, -t3252 * t3450 + t3277 * t3456, -t3215 * t3450 + t3237 * t3456, 0, 0, 0, 0, 0, 0, -t3179 * t3450 + t3194 * t3456, -t3181 * t3450 + t3195 * t3456, -t3167 * t3450 + t3183 * t3456, -t3126 * t3450 + t3136 * t3456, 0, 0, 0, 0, 0, 0, -t3142 * t3450 + t3155 * t3456, -t3146 * t3450 + t3156 * t3456, -t3133 * t3450 + t3150 * t3456, -t3110 * t3450 + t3112 * t3456, 0, 0, 0, 0, 0, 0, -t3118 * t3450 + t3127 * t3456, -t3120 * t3450 + t3128 * t3456, -t3114 * t3450 + t3123 * t3456, -t3105 * t3450 + t3106 * t3456; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t3424, t3425, 0, t3427 * t3456 + t3428 * t3450, 0, 0, 0, 0, 0, 0, t3369 * t3456 + t3382 * t3450, t3366 * t3456 + t3380 * t3450, t3364 * t3456 + t3372 * t3450, t3331 * t3456 + t3353 * t3450, 0, 0, 0, 0, 0, 0, t3267 * t3456 + t3286 * t3450, t3269 * t3456 + t3287 * t3450, t3252 * t3456 + t3277 * t3450, t3215 * t3456 + t3237 * t3450, 0, 0, 0, 0, 0, 0, t3179 * t3456 + t3194 * t3450, t3181 * t3456 + t3195 * t3450, t3167 * t3456 + t3183 * t3450, t3126 * t3456 + t3136 * t3450, 0, 0, 0, 0, 0, 0, t3142 * t3456 + t3155 * t3450, t3146 * t3456 + t3156 * t3450, t3133 * t3456 + t3150 * t3450, t3110 * t3456 + t3112 * t3450, 0, 0, 0, 0, 0, 0, t3118 * t3456 + t3127 * t3450, t3120 * t3456 + t3128 * t3450, t3114 * t3456 + t3123 * t3450, t3105 * t3456 + t3106 * t3450; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t3368, t3365, t3363, t3330, 0, 0, 0, 0, 0, 0, t3266, t3268, t3251, t3214, 0, 0, 0, 0, 0, 0, t3178, t3180, t3166, t3125, 0, 0, 0, 0, 0, 0, t3141, t3145, t3132, t3109, 0, 0, 0, 0, 0, 0, t3117, t3119, t3113, t3104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t3457, -qJDD(1), 0, t3428, 0, 0, 0, 0, 0, 0, t3382, t3380, t3372, t3353, 0, 0, 0, 0, 0, 0, t3286, t3287, t3277, t3237, 0, 0, 0, 0, 0, 0, t3194, t3195, t3183, t3136, 0, 0, 0, 0, 0, 0, t3155, t3156, t3150, t3112, 0, 0, 0, 0, 0, 0, t3127, t3128, t3123, t3106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t3457, 0, t3427, 0, 0, 0, 0, 0, 0, t3369, t3366, t3364, t3331, 0, 0, 0, 0, 0, 0, t3267, t3269, t3252, t3215, 0, 0, 0, 0, 0, 0, t3179, t3181, t3167, t3126, 0, 0, 0, 0, 0, 0, t3142, t3146, t3133, t3110, 0, 0, 0, 0, 0, 0, t3118, t3120, t3114, t3105; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t3368, t3365, t3363, t3330, 0, 0, 0, 0, 0, 0, t3266, t3268, t3251, t3214, 0, 0, 0, 0, 0, 0, t3178, t3180, t3166, t3125, 0, 0, 0, 0, 0, 0, t3141, t3145, t3132, t3109, 0, 0, 0, 0, 0, 0, t3117, t3119, t3113, t3104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3415, t3412, t3393, t3379, 0, 0, 0, 0, 0, 0, t3320, t3321, t3311, t3271, 0, 0, 0, 0, 0, 0, t3238, t3243, t3226, t3168, 0, 0, 0, 0, 0, 0, t3190, t3191, t3182, t3129, 0, 0, 0, 0, 0, 0, t3153, t3154, t3149, t3111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3411, t3404, t3392, t3378, 0, 0, 0, 0, 0, 0, t3302, t3304, t3296, t3260, 0, 0, 0, 0, 0, 0, t3217, t3219, t3205, t3152, 0, 0, 0, 0, 0, 0, t3174, t3176, t3161, t3122, 0, 0, 0, 0, 0, 0, t3138, t3140, t3131, t3108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3394, t3391, t3416, t3396, 0, 0, 0, 0, 0, 0, t3301, t3303, t3295, t3259, 0, 0, 0, 0, 0, 0, t3216, t3218, t3204, t3151, 0, 0, 0, 0, 0, 0, t3173, t3175, t3160, t3121, 0, 0, 0, 0, 0, 0, t3137, t3139, t3130, t3107; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3360, t3354, t3327, t3298, 0, 0, 0, 0, 0, 0, t3284, t3285, t3261, t3201, 0, 0, 0, 0, 0, 0, t3227, t3230, t3223, t3157, 0, 0, 0, 0, 0, 0, t3186, t3189, t3177, t3124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3355, t3367, t3329, t3297, 0, 0, 0, 0, 0, 0, t3254, t3256, t3246, t3188, 0, 0, 0, 0, 0, 0, t3211, t3213, t3200, t3144, 0, 0, 0, 0, 0, 0, t3170, t3172, t3159, t3116; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3326, t3328, t3352, t3317, 0, 0, 0, 0, 0, 0, t3253, t3255, t3245, t3187, 0, 0, 0, 0, 0, 0, t3210, t3212, t3199, t3143, 0, 0, 0, 0, 0, 0, t3169, t3171, t3158, t3115; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3316, t3305, t3290, t3229, 0, 0, 0, 0, 0, 0, t3250, t3258, t3236, t3165, 0, 0, 0, 0, 0, 0, t3203, t3207, t3198, t3135; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3306, t3318, t3292, -t3517, 0, 0, 0, 0, 0, 0, -t3262, t3524, -t3288, -t3221, 0, 0, 0, 0, 0, 0, -t3231, -t3233, -t3208, -t3147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3289, -t3522, t3310, t3244, 0, 0, 0, 0, 0, 0, t3249, t3257, t3235, t3164, 0, 0, 0, 0, 0, 0, t3202, t3206, t3197, t3134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3294, t3279, t3263, t3193, 0, 0, 0, 0, 0, 0, t3232, t3234, t3209, t3148; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3278, t3299, t3265, t3192, 0, 0, 0, 0, 0, 0, -t3239, -t3241, -t3270, -t3184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3262, -t3524, t3288, t3221, 0, 0, 0, 0, 0, 0, t3231, t3233, t3208, t3147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3272, t3248, t3240, t3163; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3247, t3281, t3242, t3162; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3239, t3241, t3270, t3184;];
f_new_reg  = t1;

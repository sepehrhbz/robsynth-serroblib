% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRRPRP2
% Use Code from Maple symbolic Code Generation
% 
% Rotationsmatrix-Jacobi-Matrix: Differentieller Zusammenhang zwischen
% gestapelter Endeffektor-Rotationsmatrix und verallgemeinerten Koordinaten.
% Zeitableitung: Die Gradientenmatrix wird nochmal nach der Zeit abgeleitet.
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 11:36
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRRPRP2_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP2_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP2_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRRPRP2_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP2_jacobiRD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:36:55
	% EndTime: 2019-10-10 11:36:55
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:36:55
	% EndTime: 2019-10-10 11:36:55
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (3->3), mult. (4->2), div. (0->0), fcn. (4->2), ass. (0->3)
	t31 = qJD(1) * sin(qJ(1));
	t30 = qJD(1) * cos(qJ(1));
	t1 = [-t30, 0, 0, 0, 0, 0; -t31, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t31, 0, 0, 0, 0, 0; -t30, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 2
	%% Symbolic Calculation
	% From jacobiRD_rot_2_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:36:55
	% EndTime: 2019-10-10 11:36:55
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (11->9), mult. (36->13), div. (0->0), fcn. (36->4), ass. (0->14)
	t34 = sin(qJ(1));
	t41 = qJD(1) * t34;
	t36 = cos(qJ(1));
	t40 = qJD(1) * t36;
	t33 = sin(qJ(2));
	t39 = qJD(2) * t33;
	t35 = cos(qJ(2));
	t38 = qJD(2) * t35;
	t37 = qJD(2) * t36;
	t32 = t34 * t39 - t35 * t40;
	t31 = t33 * t40 + t34 * t38;
	t30 = t33 * t37 + t35 * t41;
	t29 = t33 * t41 - t35 * t37;
	t1 = [t32, t29, 0, 0, 0, 0; -t30, -t31, 0, 0, 0, 0; 0, -t39, 0, 0, 0, 0; t31, t30, 0, 0, 0, 0; t29, t32, 0, 0, 0, 0; 0, -t38, 0, 0, 0, 0; -t41, 0, 0, 0, 0, 0; t40, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:36:55
	% EndTime: 2019-10-10 11:36:55
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (61->14), mult. (54->14), div. (0->0), fcn. (54->4), ass. (0->17)
	t71 = qJ(2) + qJ(3);
	t68 = sin(t71);
	t70 = qJD(2) + qJD(3);
	t79 = t70 * t68;
	t69 = cos(t71);
	t78 = t70 * t69;
	t72 = sin(qJ(1));
	t77 = t70 * t72;
	t73 = cos(qJ(1));
	t76 = t70 * t73;
	t75 = qJD(1) * t72;
	t74 = qJD(1) * t73;
	t67 = t68 * t77 - t69 * t74;
	t66 = t68 * t74 + t69 * t77;
	t65 = t68 * t76 + t69 * t75;
	t64 = t68 * t75 - t69 * t76;
	t1 = [t67, t64, t64, 0, 0, 0; -t65, -t66, -t66, 0, 0, 0; 0, -t79, -t79, 0, 0, 0; t66, t65, t65, 0, 0, 0; t64, t67, t67, 0, 0, 0; 0, -t78, -t78, 0, 0, 0; -t75, 0, 0, 0, 0, 0; t74, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:36:55
	% EndTime: 2019-10-10 11:36:55
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (89->14), mult. (54->14), div. (0->0), fcn. (54->4), ass. (0->17)
	t85 = qJ(2) + qJ(3) + pkin(10);
	t83 = sin(t85);
	t86 = qJD(2) + qJD(3);
	t94 = t86 * t83;
	t84 = cos(t85);
	t93 = t86 * t84;
	t87 = sin(qJ(1));
	t92 = t86 * t87;
	t88 = cos(qJ(1));
	t91 = t86 * t88;
	t90 = qJD(1) * t87;
	t89 = qJD(1) * t88;
	t82 = t83 * t92 - t84 * t89;
	t81 = t83 * t89 + t84 * t92;
	t80 = t83 * t91 + t84 * t90;
	t79 = t83 * t90 - t84 * t91;
	t1 = [t82, t79, t79, 0, 0, 0; -t80, -t81, -t81, 0, 0, 0; 0, -t94, -t94, 0, 0, 0; t81, t80, t80, 0, 0, 0; t79, t82, t82, 0, 0, 0; 0, -t93, -t93, 0, 0, 0; -t90, 0, 0, 0, 0, 0; t89, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:36:57
	% EndTime: 2019-10-10 11:36:57
	% DurationCPUTime: 0.14s
	% Computational Cost: add. (238->29), mult. (226->57), div. (0->0), fcn. (226->6), ass. (0->41)
	t342 = qJD(2) + qJD(3);
	t343 = sin(qJ(5));
	t365 = t342 * t343;
	t344 = sin(qJ(1));
	t364 = t342 * t344;
	t345 = cos(qJ(5));
	t363 = t342 * t345;
	t346 = cos(qJ(1));
	t362 = t342 * t346;
	t361 = t345 * t346;
	t360 = qJD(1) * t344;
	t359 = qJD(1) * t346;
	t358 = qJD(5) * t343;
	t357 = qJD(5) * t345;
	t356 = qJD(5) * t346;
	t341 = qJ(2) + qJ(3) + pkin(10);
	t339 = sin(t341);
	t355 = t339 * t363;
	t354 = t339 * t364;
	t340 = cos(t341);
	t353 = t340 * t364;
	t352 = t339 * t362;
	t351 = t340 * t362;
	t350 = qJD(5) * t340 - qJD(1);
	t349 = qJD(1) * t340 - qJD(5);
	t348 = t350 * t343;
	t347 = t349 * t344 + t352;
	t338 = t342 * t340;
	t337 = t340 * t359 - t354;
	t336 = -t340 * t360 - t352;
	t335 = -t340 * t358 - t355;
	t334 = t339 * t365 - t340 * t357;
	t333 = -t345 * t353 + (t344 * t358 - t345 * t359) * t339;
	t332 = t343 * t353 + (t343 * t359 + t344 * t357) * t339;
	t331 = -t345 * t351 + (t343 * t356 + t345 * t360) * t339;
	t330 = t343 * t351 + (-t343 * t360 + t345 * t356) * t339;
	t329 = -t349 * t361 + (t348 + t355) * t344;
	t328 = t350 * t345 * t344 + (t349 * t346 - t354) * t343;
	t327 = t347 * t345 + t346 * t348;
	t326 = t347 * t343 - t350 * t361;
	t1 = [t329, t331, t331, 0, t326, 0; -t327, t333, t333, 0, -t328, 0; 0, t335, t335, 0, -t339 * t357 - t340 * t365, 0; t328, t330, t330, 0, t327, 0; t326, t332, t332, 0, t329, 0; 0, t334, t334, 0, t339 * t358 - t340 * t363, 0; -t339 * t359 - t353, t336, t336, 0, 0, 0; -t339 * t360 + t351, t337, t337, 0, 0, 0; 0, t338, t338, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 11:36:57
	% EndTime: 2019-10-10 11:36:58
	% DurationCPUTime: 0.23s
	% Computational Cost: add. (238->29), mult. (226->57), div. (0->0), fcn. (226->6), ass. (0->41)
	t411 = cos(qJ(1));
	t406 = qJ(2) + qJ(3) + pkin(10);
	t405 = cos(t406);
	t413 = qJD(1) * t405 - qJD(5);
	t430 = t413 * t411;
	t409 = sin(qJ(1));
	t404 = sin(t406);
	t407 = qJD(2) + qJD(3);
	t425 = t407 * t411;
	t416 = t404 * t425;
	t429 = t413 * t409 + t416;
	t408 = sin(qJ(5));
	t428 = t407 * t408;
	t427 = t407 * t409;
	t410 = cos(qJ(5));
	t426 = t407 * t410;
	t424 = qJD(1) * t409;
	t423 = qJD(1) * t411;
	t422 = qJD(5) * t408;
	t421 = qJD(5) * t410;
	t420 = qJD(5) * t411;
	t419 = t404 * t426;
	t418 = t404 * t427;
	t417 = t405 * t427;
	t415 = t405 * t425;
	t414 = -qJD(5) * t405 + qJD(1);
	t412 = t414 * t411;
	t403 = t407 * t405;
	t402 = t405 * t423 - t418;
	t401 = -t405 * t424 - t416;
	t400 = -t405 * t422 - t419;
	t399 = -t404 * t428 + t405 * t421;
	t398 = -t410 * t417 + (t409 * t422 - t410 * t423) * t404;
	t397 = -t408 * t417 + (-t408 * t423 - t409 * t421) * t404;
	t396 = -t410 * t415 + (t408 * t420 + t410 * t424) * t404;
	t395 = -t408 * t415 + (t408 * t424 - t410 * t420) * t404;
	t394 = t410 * t430 + (t414 * t408 - t419) * t409;
	t393 = t414 * t410 * t409 + (t418 - t430) * t408;
	t392 = t408 * t412 - t429 * t410;
	t391 = t429 * t408 + t410 * t412;
	t1 = [-t394, t396, t396, 0, t391, 0; t392, t398, t398, 0, t393, 0; 0, t400, t400, 0, -t404 * t421 - t405 * t428, 0; -t404 * t423 - t417, t401, t401, 0, 0, 0; -t404 * t424 + t415, t402, t402, 0, 0, 0; 0, t403, t403, 0, 0, 0; t393, t395, t395, 0, t392, 0; -t391, t397, t397, 0, t394, 0; 0, t399, t399, 0, -t404 * t422 + t405 * t426, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end
% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRPRRP8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 10:41
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRPRRP8_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP8_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP8_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRP8_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP8_jacobiRD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:03
	% EndTime: 2019-10-10 10:41:03
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:03
	% EndTime: 2019-10-10 10:41:03
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
	% StartTime: 2019-10-10 10:41:03
	% EndTime: 2019-10-10 10:41:03
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
	% StartTime: 2019-10-10 10:41:05
	% EndTime: 2019-10-10 10:41:05
	% DurationCPUTime: 0.07s
	% Computational Cost: add. (17->17), mult. (77->37), div. (0->0), fcn. (77->6), ass. (0->18)
	t180 = sin(qJ(1));
	t181 = cos(qJ(2));
	t193 = t180 * t181;
	t182 = cos(qJ(1));
	t192 = t181 * t182;
	t191 = qJD(1) * t180;
	t190 = qJD(1) * t182;
	t179 = sin(qJ(2));
	t189 = qJD(2) * t179;
	t188 = qJD(2) * t181;
	t187 = qJD(2) * t182;
	t186 = t180 * t189;
	t185 = t179 * t187;
	t184 = t179 * t190 + t180 * t188;
	t183 = t179 * t191 - t181 * t187;
	t178 = cos(pkin(10));
	t177 = sin(pkin(10));
	t1 = [t178 * t186 + (-t177 * t180 - t178 * t192) * qJD(1), t183 * t178, 0, 0, 0, 0; -t178 * t185 + (t177 * t182 - t178 * t193) * qJD(1), -t184 * t178, 0, 0, 0, 0; 0, -t178 * t189, 0, 0, 0, 0; -t177 * t186 + (t177 * t192 - t178 * t180) * qJD(1), -t183 * t177, 0, 0, 0, 0; t177 * t185 + (t177 * t193 + t178 * t182) * qJD(1), t184 * t177, 0, 0, 0, 0; 0, t177 * t189, 0, 0, 0, 0; -t184, -t181 * t191 - t185, 0, 0, 0, 0; -t183, t181 * t190 - t186, 0, 0, 0, 0; 0, t188, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:05
	% EndTime: 2019-10-10 10:41:05
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (108->25), mult. (173->44), div. (0->0), fcn. (173->6), ass. (0->31)
	t253 = cos(qJ(1));
	t252 = cos(qJ(2));
	t264 = qJD(4) * t252;
	t259 = -qJD(1) + t264;
	t272 = t253 * t259;
	t270 = qJD(1) * t252;
	t258 = -qJD(4) + t270;
	t251 = sin(qJ(1));
	t250 = sin(qJ(2));
	t268 = qJD(2) * t250;
	t261 = t251 * t268;
	t271 = t258 * t253 - t261;
	t269 = qJD(1) * t253;
	t267 = qJD(2) * t252;
	t266 = qJD(2) * t253;
	t265 = qJD(4) * t250;
	t249 = pkin(10) + qJ(4);
	t247 = sin(t249);
	t263 = t247 * t265;
	t248 = cos(t249);
	t262 = t248 * t265;
	t260 = t250 * t266;
	t257 = t259 * t251;
	t256 = t250 * t269 + t251 * t267;
	t255 = qJD(1) * t251 * t250 - t252 * t266;
	t254 = t258 * t251 + t260;
	t246 = t247 * t257 - t271 * t248;
	t245 = t271 * t247 + t248 * t257;
	t244 = t247 * t272 + t254 * t248;
	t243 = t254 * t247 - t248 * t272;
	t1 = [t246, t255 * t248 + t253 * t263, 0, t243, 0, 0; -t244, -t256 * t248 + t251 * t263, 0, -t245, 0, 0; 0, -t247 * t264 - t248 * t268, 0, -t247 * t267 - t262, 0, 0; t245, -t255 * t247 + t253 * t262, 0, t244, 0, 0; t243, t256 * t247 + t251 * t262, 0, t246, 0, 0; 0, t247 * t268 - t248 * t264, 0, -t248 * t267 + t263, 0, 0; -t256, -t251 * t270 - t260, 0, 0, 0, 0; -t255, t252 * t269 - t261, 0, 0, 0, 0; 0, t267, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:05
	% EndTime: 2019-10-10 10:41:05
	% DurationCPUTime: 0.19s
	% Computational Cost: add. (268->30), mult. (233->48), div. (0->0), fcn. (233->6), ass. (0->35)
	t301 = qJD(4) + qJD(5);
	t302 = sin(qJ(2));
	t325 = t301 * t302;
	t304 = cos(qJ(2));
	t324 = t301 * t304;
	t303 = sin(qJ(1));
	t323 = qJD(1) * t303;
	t322 = qJD(1) * t304;
	t305 = cos(qJ(1));
	t321 = qJD(1) * t305;
	t320 = qJD(2) * t302;
	t319 = qJD(2) * t304;
	t318 = qJD(2) * t305;
	t300 = pkin(10) + qJ(4) + qJ(5);
	t298 = sin(t300);
	t317 = t298 * t325;
	t299 = cos(t300);
	t316 = t299 * t325;
	t315 = t303 * t301 * t299;
	t314 = t305 * t301 * t298;
	t313 = t303 * t320;
	t312 = t302 * t318;
	t311 = -qJD(1) + t324;
	t310 = -t301 + t322;
	t309 = t298 * t311;
	t308 = t302 * t321 + t303 * t319;
	t307 = t302 * t323 - t304 * t318;
	t306 = t310 * t303 + t312;
	t294 = -t299 * t319 + t317;
	t293 = -t298 * t319 - t316;
	t292 = t303 * t309 + (-t310 * t305 + t313) * t299;
	t291 = -t298 * t313 - t314 - t299 * t323 + (t298 * t321 + t315) * t304;
	t290 = t306 * t299 + t305 * t309;
	t289 = -t311 * t305 * t299 + t306 * t298;
	t1 = [t292, t307 * t299 + t302 * t314, 0, t289, t289, 0; -t290, -t308 * t299 + t303 * t317, 0, -t291, -t291, 0; 0, -t298 * t324 - t299 * t320, 0, t293, t293, 0; t291, -t307 * t298 + t305 * t316, 0, t290, t290, 0; t289, t308 * t298 + t302 * t315, 0, t292, t292, 0; 0, t298 * t320 - t299 * t324, 0, t294, t294, 0; -t308, -t303 * t322 - t312, 0, 0, 0, 0; -t307, t304 * t321 - t313, 0, 0, 0, 0; 0, t319, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 10:41:06
	% EndTime: 2019-10-10 10:41:06
	% DurationCPUTime: 0.22s
	% Computational Cost: add. (268->25), mult. (233->44), div. (0->0), fcn. (233->6), ass. (0->34)
	t374 = sin(qJ(1));
	t372 = qJD(4) + qJD(5);
	t375 = cos(qJ(2));
	t391 = qJD(1) * t375;
	t381 = -t372 + t391;
	t373 = sin(qJ(2));
	t376 = cos(qJ(1));
	t387 = qJD(2) * t376;
	t383 = t373 * t387;
	t395 = t374 * t381 + t383;
	t389 = qJD(2) * t373;
	t384 = t374 * t389;
	t394 = t376 * t381 - t384;
	t393 = t372 * t373;
	t392 = t372 * t375;
	t390 = qJD(1) * t376;
	t388 = qJD(2) * t375;
	t371 = pkin(10) + qJ(4) + qJ(5);
	t369 = sin(t371);
	t386 = t369 * t393;
	t370 = cos(t371);
	t385 = t370 * t393;
	t382 = qJD(1) - t392;
	t380 = t382 * t374;
	t379 = t382 * t376;
	t378 = -t373 * t390 - t374 * t388;
	t377 = qJD(1) * t374 * t373 - t375 * t387;
	t368 = t370 * t388 - t386;
	t367 = -t369 * t388 - t385;
	t366 = t369 * t380 + t394 * t370;
	t365 = -t394 * t369 + t370 * t380;
	t364 = t369 * t379 - t395 * t370;
	t363 = t395 * t369 + t370 * t379;
	t1 = [-t366, t370 * t377 + t376 * t386, 0, t363, t363, 0; t364, t370 * t378 + t374 * t386, 0, t365, t365, 0; 0, -t369 * t392 - t370 * t389, 0, t367, t367, 0; t378, -t374 * t391 - t383, 0, 0, 0, 0; -t377, t375 * t390 - t384, 0, 0, 0, 0; 0, t388, 0, 0, 0, 0; t365, t369 * t377 - t376 * t385, 0, t364, t364, 0; -t363, t369 * t378 - t374 * t385, 0, t366, t366, 0; 0, -t369 * t389 + t370 * t392, 0, t368, t368, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end
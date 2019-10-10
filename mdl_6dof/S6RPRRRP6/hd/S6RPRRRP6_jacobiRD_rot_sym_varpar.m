% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RPRRRP6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 01:54
% Revision: ee6bc4d0f60ba4b3bab3f447780ef990a2753b00 (2019-10-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RPRRRP6_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP6_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP6_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RPRRRP6_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP6_jacobiRD_rot_sym_varpar: pkin has to be [10x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
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
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.06s
	% Computational Cost: add. (3->3), mult. (10->6), div. (0->0), fcn. (10->4), ass. (0->5)
	t22 = qJD(1) * sin(qJ(1));
	t21 = qJD(1) * cos(qJ(1));
	t18 = cos(pkin(10));
	t17 = sin(pkin(10));
	t1 = [-t18 * t21, 0, 0, 0, 0, 0; -t18 * t22, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; t17 * t21, 0, 0, 0, 0, 0; t17 * t22, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; -t22, 0, 0, 0, 0, 0; t21, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 3
	%% Symbolic Calculation
	% From jacobiRD_rot_3_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:08
	% EndTime: 2019-10-10 01:54:08
	% DurationCPUTime: 0.04s
	% Computational Cost: add. (29->10), mult. (36->14), div. (0->0), fcn. (36->4), ass. (0->14)
	t43 = sin(qJ(1));
	t48 = qJD(1) * t43;
	t44 = cos(qJ(1));
	t47 = qJD(1) * t44;
	t46 = qJD(3) * t43;
	t45 = qJD(3) * t44;
	t42 = pkin(10) + qJ(3);
	t41 = cos(t42);
	t40 = sin(t42);
	t39 = t40 * t46 - t41 * t47;
	t38 = t40 * t47 + t41 * t46;
	t37 = t40 * t45 + t41 * t48;
	t36 = t40 * t48 - t41 * t45;
	t1 = [t39, 0, t36, 0, 0, 0; -t37, 0, -t38, 0, 0, 0; 0, 0, -qJD(3) * t40, 0, 0, 0; t38, 0, t37, 0, 0, 0; t36, 0, t39, 0, 0, 0; 0, 0, -qJD(3) * t41, 0, 0, 0; -t48, 0, 0, 0, 0, 0; t47, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:09
	% EndTime: 2019-10-10 01:54:09
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (101->28), mult. (173->57), div. (0->0), fcn. (173->6), ass. (0->31)
	t245 = cos(qJ(4));
	t246 = cos(qJ(1));
	t265 = t245 * t246;
	t244 = sin(qJ(1));
	t264 = qJD(1) * t244;
	t263 = qJD(1) * t246;
	t243 = sin(qJ(4));
	t262 = qJD(3) * t243;
	t261 = qJD(3) * t244;
	t260 = qJD(3) * t245;
	t259 = qJD(3) * t246;
	t258 = qJD(4) * t243;
	t257 = qJD(4) * t245;
	t256 = qJD(4) * t246;
	t242 = pkin(10) + qJ(3);
	t240 = sin(t242);
	t255 = t240 * t260;
	t254 = t240 * t261;
	t241 = cos(t242);
	t253 = t241 * t261;
	t252 = t240 * t259;
	t251 = t241 * t259;
	t250 = qJD(4) * t241 - qJD(1);
	t249 = qJD(1) * t241 - qJD(4);
	t248 = t250 * t243;
	t247 = t249 * t244 + t252;
	t239 = -t249 * t265 + (t248 + t255) * t244;
	t238 = t250 * t245 * t244 + (t249 * t246 - t254) * t243;
	t237 = t247 * t245 + t246 * t248;
	t236 = t247 * t243 - t250 * t265;
	t1 = [t239, 0, -t245 * t251 + (t243 * t256 + t245 * t264) * t240, t236, 0, 0; -t237, 0, -t245 * t253 + (t244 * t258 - t245 * t263) * t240, -t238, 0, 0; 0, 0, -t241 * t258 - t255, -t240 * t257 - t241 * t262, 0, 0; t238, 0, t243 * t251 + (-t243 * t264 + t245 * t256) * t240, t237, 0, 0; t236, 0, t243 * t253 + (t243 * t263 + t244 * t257) * t240, t239, 0, 0; 0, 0, t240 * t262 - t241 * t257, t240 * t258 - t241 * t260, 0, 0; -t240 * t263 - t253, 0, -t241 * t264 - t252, 0, 0, 0; -t240 * t264 + t251, 0, t241 * t263 - t254, 0, 0, 0; 0, 0, qJD(3) * t241, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 5
	%% Symbolic Calculation
	% From jacobiRD_rot_5_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:09
	% EndTime: 2019-10-10 01:54:10
	% DurationCPUTime: 0.15s
	% Computational Cost: add. (253->31), mult. (233->57), div. (0->0), fcn. (233->6), ass. (0->36)
	t307 = qJ(4) + qJ(5);
	t303 = sin(t307);
	t306 = qJD(4) + qJD(5);
	t329 = t303 * t306;
	t304 = cos(t307);
	t328 = t304 * t306;
	t308 = sin(qJ(1));
	t327 = t306 * t308;
	t309 = cos(qJ(1));
	t326 = t306 * t309;
	t325 = qJD(1) * t308;
	t324 = qJD(1) * t309;
	t323 = qJD(3) * t303;
	t322 = qJD(3) * t304;
	t321 = qJD(3) * t308;
	t320 = qJD(3) * t309;
	t305 = pkin(10) + qJ(3);
	t301 = sin(t305);
	t319 = t301 * t321;
	t302 = cos(t305);
	t318 = t302 * t321;
	t317 = t301 * t320;
	t316 = t302 * t320;
	t315 = t302 * t306 - qJD(1);
	t314 = qJD(1) * t302 - t306;
	t313 = t303 * t315;
	t312 = t303 * t326 + t304 * t325;
	t311 = t303 * t324 + t304 * t327;
	t310 = t314 * t308 + t317;
	t297 = t301 * t329 - t302 * t322;
	t296 = -t301 * t328 - t302 * t323;
	t295 = t308 * t313 + (-t314 * t309 + t319) * t304;
	t294 = t311 * t302 - t303 * t319 - t312;
	t293 = t310 * t304 + t309 * t313;
	t292 = -t315 * t309 * t304 + t310 * t303;
	t1 = [t295, 0, t312 * t301 - t304 * t316, t292, t292, 0; -t293, 0, -t304 * t318 + (t303 * t327 - t304 * t324) * t301, -t294, -t294, 0; 0, 0, -t301 * t322 - t302 * t329, t296, t296, 0; t294, 0, t303 * t316 + (-t303 * t325 + t304 * t326) * t301, t293, t293, 0; t292, 0, t311 * t301 + t303 * t318, t295, t295, 0; 0, 0, t301 * t323 - t302 * t328, t297, t297, 0; -t301 * t324 - t318, 0, -t302 * t325 - t317, 0, 0, 0; -t301 * t325 + t316, 0, t302 * t324 - t319, 0, 0, 0; 0, 0, qJD(3) * t302, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 01:54:09
	% EndTime: 2019-10-10 01:54:10
	% DurationCPUTime: 0.21s
	% Computational Cost: add. (253->31), mult. (233->57), div. (0->0), fcn. (233->6), ass. (0->36)
	t320 = qJ(4) + qJ(5);
	t316 = sin(t320);
	t319 = qJD(4) + qJD(5);
	t342 = t316 * t319;
	t317 = cos(t320);
	t341 = t317 * t319;
	t321 = sin(qJ(1));
	t340 = t319 * t321;
	t322 = cos(qJ(1));
	t339 = t319 * t322;
	t338 = qJD(1) * t321;
	t337 = qJD(1) * t322;
	t336 = qJD(3) * t316;
	t335 = qJD(3) * t317;
	t334 = qJD(3) * t321;
	t333 = qJD(3) * t322;
	t318 = pkin(10) + qJ(3);
	t314 = sin(t318);
	t332 = t314 * t334;
	t315 = cos(t318);
	t331 = t315 * t334;
	t330 = t314 * t333;
	t329 = t315 * t333;
	t328 = t315 * t319 - qJD(1);
	t327 = qJD(1) * t315 - t319;
	t326 = t316 * t328;
	t325 = t316 * t339 + t317 * t338;
	t324 = t316 * t337 + t317 * t340;
	t323 = t327 * t321 + t330;
	t310 = t314 * t342 - t315 * t335;
	t309 = -t314 * t341 - t315 * t336;
	t308 = t321 * t326 + (-t327 * t322 + t332) * t317;
	t307 = t324 * t315 - t316 * t332 - t325;
	t306 = t323 * t317 + t322 * t326;
	t305 = -t328 * t322 * t317 + t323 * t316;
	t1 = [t308, 0, t325 * t314 - t317 * t329, t305, t305, 0; -t306, 0, -t317 * t331 + (t316 * t340 - t317 * t337) * t314, -t307, -t307, 0; 0, 0, -t314 * t335 - t315 * t342, t309, t309, 0; t307, 0, t316 * t329 + (-t316 * t338 + t317 * t339) * t314, t306, t306, 0; t305, 0, t324 * t314 + t316 * t331, t308, t308, 0; 0, 0, t314 * t336 - t315 * t341, t310, t310, 0; -t314 * t337 - t331, 0, -t315 * t338 - t330, 0, 0, 0; -t314 * t338 + t329, 0, t315 * t337 - t332, 0, 0, 0; 0, 0, qJD(3) * t315, 0, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end
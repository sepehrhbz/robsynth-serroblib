% Zeitableitung der Rotationsmatrix-Jacobi-Matrix für beliebiges Segment von
% S6RRPRPP3
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,theta3]';
% 
% Output:
% JRD_rot [9x6]
%   Zeitableitung der Jacobi-Matrix der Endeffektor-Rotationsmatrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-10-10 09:59
% Revision: eb1f267a533306f0f157b6776e21de13647fd8af (2019-10-10)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function JRD_rot = S6RRPRPP3_jacobiRD_rot_sym_varpar(qJ, qJD, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),uint8(0),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP3_jacobiRD_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPP3_jacobiRD_rot_sym_varpar: qJD has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRPP3_jacobiRD_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRPP3_jacobiRD_rot_sym_varpar: pkin has to be [9x1] (double)');
if link_index == 0
	%% Symbolic Calculation
	% From jacobiRD_rot_0_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:59:10
	% EndTime: 2019-10-10 09:59:10
	% DurationCPUTime: 0.05s
	% Computational Cost: add. (0->0), mult. (0->0), div. (0->0), fcn. (0->0), ass. (0->1)
	t1 = [0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 1
	%% Symbolic Calculation
	% From jacobiRD_rot_1_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:59:10
	% EndTime: 2019-10-10 09:59:10
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
	% StartTime: 2019-10-10 09:59:10
	% EndTime: 2019-10-10 09:59:10
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
	% StartTime: 2019-10-10 09:59:11
	% EndTime: 2019-10-10 09:59:11
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
	t178 = cos(pkin(9));
	t177 = sin(pkin(9));
	t1 = [t178 * t186 + (-t177 * t180 - t178 * t192) * qJD(1), t183 * t178, 0, 0, 0, 0; -t178 * t185 + (t177 * t182 - t178 * t193) * qJD(1), -t184 * t178, 0, 0, 0, 0; 0, -t178 * t189, 0, 0, 0, 0; -t177 * t186 + (t177 * t192 - t178 * t180) * qJD(1), -t183 * t177, 0, 0, 0, 0; t177 * t185 + (t177 * t193 + t178 * t182) * qJD(1), t184 * t177, 0, 0, 0, 0; 0, t177 * t189, 0, 0, 0, 0; -t184, -t181 * t191 - t185, 0, 0, 0, 0; -t183, t181 * t190 - t186, 0, 0, 0, 0; 0, t188, 0, 0, 0, 0;];
	JRD_rot = t1;
elseif link_index == 4
	%% Symbolic Calculation
	% From jacobiRD_rot_4_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:59:11
	% EndTime: 2019-10-10 09:59:12
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
	t249 = pkin(9) + qJ(4);
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
	% StartTime: 2019-10-10 09:59:12
	% EndTime: 2019-10-10 09:59:12
	% DurationCPUTime: 0.18s
	% Computational Cost: add. (108->25), mult. (173->44), div. (0->0), fcn. (173->6), ass. (0->31)
	t308 = sin(qJ(1));
	t309 = cos(qJ(2));
	t321 = qJD(4) * t309;
	t316 = -qJD(1) + t321;
	t329 = t308 * t316;
	t327 = qJD(1) * t309;
	t315 = -qJD(4) + t327;
	t307 = sin(qJ(2));
	t310 = cos(qJ(1));
	t323 = qJD(2) * t310;
	t317 = t307 * t323;
	t328 = t315 * t308 + t317;
	t326 = qJD(1) * t310;
	t325 = qJD(2) * t307;
	t324 = qJD(2) * t309;
	t322 = qJD(4) * t307;
	t306 = pkin(9) + qJ(4);
	t304 = sin(t306);
	t320 = t304 * t322;
	t305 = cos(t306);
	t319 = t305 * t322;
	t318 = t308 * t325;
	t314 = t316 * t310;
	t313 = t307 * t326 + t308 * t324;
	t312 = qJD(1) * t308 * t307 - t309 * t323;
	t311 = t315 * t310 - t318;
	t303 = -t304 * t329 + t311 * t305;
	t302 = t311 * t304 + t305 * t329;
	t301 = t304 * t314 + t328 * t305;
	t300 = -t328 * t304 + t305 * t314;
	t1 = [-t313, -t308 * t327 - t317, 0, 0, 0, 0; -t312, t309 * t326 - t318, 0, 0, 0, 0; 0, t324, 0, 0, 0, 0; t303, -t312 * t305 - t310 * t320, 0, t300, 0, 0; t301, t313 * t305 - t308 * t320, 0, t302, 0, 0; 0, t304 * t321 + t305 * t325, 0, t304 * t324 + t319, 0, 0; -t302, t312 * t304 - t310 * t319, 0, -t301, 0, 0; t300, -t313 * t304 - t308 * t319, 0, t303, 0, 0; 0, -t304 * t325 + t305 * t321, 0, t305 * t324 - t320, 0, 0;];
	JRD_rot = t1;
elseif link_index == 6
	%% Symbolic Calculation
	% From jacobiRD_rot_6_floatb_twist_matlab.m
	% OptimizationMode: 2
	% StartTime: 2019-10-10 09:59:12
	% EndTime: 2019-10-10 09:59:12
	% DurationCPUTime: 0.12s
	% Computational Cost: add. (108->24), mult. (173->44), div. (0->0), fcn. (173->6), ass. (0->31)
	t310 = sin(qJ(1));
	t311 = cos(qJ(2));
	t329 = qJD(1) * t311;
	t317 = -qJD(4) + t329;
	t309 = sin(qJ(2));
	t312 = cos(qJ(1));
	t325 = qJD(2) * t312;
	t319 = t309 * t325;
	t331 = t317 * t310 + t319;
	t327 = qJD(2) * t309;
	t320 = t310 * t327;
	t330 = t317 * t312 - t320;
	t328 = qJD(1) * t312;
	t326 = qJD(2) * t311;
	t324 = qJD(4) * t309;
	t323 = qJD(4) * t311;
	t308 = pkin(9) + qJ(4);
	t306 = sin(t308);
	t322 = t306 * t324;
	t307 = cos(t308);
	t321 = t307 * t324;
	t318 = qJD(1) - t323;
	t316 = t318 * t310;
	t315 = t318 * t312;
	t314 = -t309 * t328 - t310 * t326;
	t313 = qJD(1) * t310 * t309 - t311 * t325;
	t305 = t306 * t316 + t330 * t307;
	t304 = -t330 * t306 + t307 * t316;
	t303 = t306 * t315 - t331 * t307;
	t302 = t331 * t306 + t307 * t315;
	t1 = [t314, -t310 * t329 - t319, 0, 0, 0, 0; -t313, t311 * t328 - t320, 0, 0, 0, 0; 0, t326, 0, 0, 0, 0; t304, t313 * t306 - t312 * t321, 0, t303, 0, 0; -t302, t314 * t306 - t310 * t321, 0, t305, 0, 0; 0, -t306 * t327 + t307 * t323, 0, t307 * t326 - t322, 0, 0; -t305, t313 * t307 + t312 * t322, 0, t302, 0, 0; t303, t314 * t307 + t310 * t322, 0, t304, 0, 0; 0, -t306 * t323 - t307 * t327, 0, -t306 * t326 - t321, 0, 0;];
	JRD_rot = t1;
else
	JRD_rot=NaN(9,6);
end
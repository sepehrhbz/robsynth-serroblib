% Rotatorische Teilmatrix der geometrischen Jacobi-Matrix für beliebiges Segment von
% S6RRPRRR14V3
% Use Code from Maple symbolic Code Generation
%
% Geometrische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorgeschwindigkeit und Geschw. der verallgemeinerten Koordinaten.
% 
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt. (0=Basis).
%   Siehe auch: bsp_3T1R_fkine_fixb_rotmat_mdh_sym_varpar.m
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[dummy]';
% 
% Output:
% Jg_rot [3x6]
%   Rotatorische Teilmatrix der geometrischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-04-12 15:12
% Revision: b693519ea345eb34ae9622239e7f1167217e9d53 (2019-04-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Jg_rot = S6RRPRRR14V3_jacobig_rot_sym_varpar(qJ, link_index, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),uint8(0),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR14V3_jacobig_rot_sym_varpar: qJ has to be [6x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S6RRPRRR14V3_jacobig_rot_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S6RRPRRR14V3_jacobig_rot_sym_varpar: pkin has to be [1x1] (double)');
%% Function calls
if link_index == 0
	Jg_rot=S6RRPRRR14V3_jacobig_rot_0_sym_varpar(qJ, pkin);
elseif link_index == 1
	Jg_rot=S6RRPRRR14V3_jacobig_rot_1_sym_varpar(qJ, pkin);
elseif link_index == 2
	Jg_rot=S6RRPRRR14V3_jacobig_rot_2_sym_varpar(qJ, pkin);
elseif link_index == 3
	Jg_rot=S6RRPRRR14V3_jacobig_rot_3_sym_varpar(qJ, pkin);
elseif link_index == 4
	Jg_rot=S6RRPRRR14V3_jacobig_rot_4_sym_varpar(qJ, pkin);
elseif link_index == 5
	Jg_rot=S6RRPRRR14V3_jacobig_rot_5_sym_varpar(qJ, pkin);
elseif link_index == 6
	Jg_rot=S6RRPRRR14V3_jacobig_rot_6_sym_varpar(qJ, pkin);
else
	Jg_rot=NaN(3,6);
end
% Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix für beliebiges Segment von
% S4RPRR1
% Use Code from Maple symbolic Code Generation
% 
% analytische Jacobi-Matrix: Differentieller Zusammenhang zwischen
% Endeffektorposition und verallgemeinerten Koordinaten.
% Zeitableitung der Winkeldarstellung des Endeffektors in Basis-Koordinaten
% 
% Winkeldarstellung: Euler-XYZ-Winkel, rotx(alpha)*roty(beta)*rotz(gamma)
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% link_index [1x1 uint8]
%   Index des Segmentes, auf dem der Punkt C liegt.
%   Wie in S4RPRR1_fkine_fixb_rotmat_mdh_sym_varpar.m (1=Basis).
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,d4,theta2]';
% 
% Output:
% JaD_rot [3x4]
%   Zeitableitung der rotatorischen Teilmatrix der analytischen Jacobi-Matrix

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:51
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function JaD_rot = S4RPRR1_jacobiaD_rot_floatb_twist_sym_varpar(qJ, qJD, link_index, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),uint8(0),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR1_jacobiaD_rot_floatb_twist_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRR1_jacobiaD_rot_floatb_twist_sym_varpar: qJD has to be [4x1] (double)');
assert(isa(link_index,'uint8') && all(size(link_index) == [1 1]), ...
	'S4RPRR1_jacobiaD_rot_floatb_twist_sym_varpar: link_index has to be [1x1] uint8');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR1_jacobiaD_rot_floatb_twist_sym_varpar: pkin has to be [7x1] (double)');
%% Function calls
if link_index == 0
	JaD_rot=S4RPRR1_jacobiaD_rot_0_floatb_twist_sym_varpar(qJ, qJD, pkin);
elseif link_index == 1
	JaD_rot=S4RPRR1_jacobiaD_rot_1_floatb_twist_sym_varpar(qJ, qJD, pkin);
elseif link_index == 2
	JaD_rot=S4RPRR1_jacobiaD_rot_2_floatb_twist_sym_varpar(qJ, qJD, pkin);
elseif link_index == 3
	JaD_rot=S4RPRR1_jacobiaD_rot_3_floatb_twist_sym_varpar(qJ, qJD, pkin);
elseif link_index == 4
	JaD_rot=S4RPRR1_jacobiaD_rot_4_floatb_twist_sym_varpar(qJ, qJD, pkin);
else
	JaD_rot=NaN(6,4);
end
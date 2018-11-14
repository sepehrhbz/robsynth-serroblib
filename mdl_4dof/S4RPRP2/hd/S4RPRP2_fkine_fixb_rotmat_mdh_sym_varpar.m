% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S4RPRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3]';
% 
% Output:
% T_c_mdh [4x4x(4+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   5:  mdh base (link 0) -> mdh frame (5-1), link (5-1)
%   ...
%   4+1:  mdh base (link 0) -> mdh frame (4)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:49
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T_c_mdh = S4RPRP2_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP2_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RPRP2_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:49:20
% EndTime: 2018-11-14 13:49:20
% DurationCPUTime: 0.06s
% Computational Cost: add. (37->21), mult. (38->16), div. (0->0), fcn. (62->4), ass. (0->14)
t10 = sin(qJ(3));
t11 = sin(qJ(1));
t18 = t11 * t10;
t9 = pkin(4) + 0;
t17 = t11 * pkin(1) + 0;
t16 = -pkin(5) + t9;
t13 = cos(qJ(1));
t15 = t13 * pkin(1) + t11 * qJ(2) + 0;
t14 = -t13 * qJ(2) + t17;
t12 = cos(qJ(3));
t5 = t12 * pkin(3) + pkin(2);
t2 = -t13 * t10 + t11 * t12;
t1 = -t13 * t12 - t18;
t3 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t13, -t11, 0, 0; t11, t13, 0, 0; 0, 0, 1, t9; 0, 0, 0, 1; t13, 0, t11, t15; t11, 0, -t13, t14; 0, 1, 0, t9; 0, 0, 0, 1; -t1, t2, 0, t13 * pkin(2) + t15; t2, t1, 0, t11 * pkin(2) + t14; 0, 0, -1, t16; 0, 0, 0, 1; -t1, t2, 0, pkin(3) * t18 + t13 * t5 + t15; t2, t1, 0, t11 * t5 + (-pkin(3) * t10 - qJ(2)) * t13 + t17; 0, 0, -1, -qJ(4) + t16; 0, 0, 0, 1;];
T_ges = t3;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,4+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,4+1]); end % symbolisch
for i = 1:4+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end

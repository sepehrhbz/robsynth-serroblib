% Calculate homogenous joint transformation matrices for
% S4RPPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d4,theta2,theta3]';
% 
% Output:
% T_mdh [4x4x4]
%   homogenous transformation matrices for joint transformation (MDH)
%   Transformation matrices from one joint to the next (not: from base to joints)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-29 12:37
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T_mdh = S4RPPR3_joint_trafo_rotmat_mdh_sym_varpar(qJ, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR3_joint_trafo_rotmat_mdh_sym_varpar: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPPR3_joint_trafo_rotmat_mdh_sym_varpar: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From joint_transformation_mdh_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-29 12:36:20
% EndTime: 2019-12-29 12:36:20
% DurationCPUTime: 0.05s
% Computational Cost: add. (5->5), mult. (0->0), div. (0->0), fcn. (16->8), ass. (0->9)
t26 = cos(qJ(1));
t25 = cos(qJ(4));
t24 = sin(qJ(1));
t23 = sin(qJ(4));
t22 = cos(pkin(6));
t21 = cos(pkin(7));
t20 = sin(pkin(6));
t19 = sin(pkin(7));
t1 = [t26, -t24, 0, 0; t24, t26, 0, 0; 0, 0, 1, pkin(4); 0, 0, 0, 1; t22, -t20, 0, pkin(1); t20, t22, 0, 0; 0, 0, 1, qJ(2); 0, 0, 0, 1; t21, -t19, 0, pkin(2); 0, 0, -1, -qJ(3); t19, t21, 0, 0; 0, 0, 0, 1; t25, -t23, 0, pkin(3); t23, t25, 0, 0; 0, 0, 1, pkin(5); 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_mdh = NaN(4,4,4);             % numerisch
else,                         T_mdh = sym('xx', [4,4,4]); end % symbolisch

for i = 1:4
  T_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end

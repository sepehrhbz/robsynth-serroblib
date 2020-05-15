% Calculate forward kinematics (homogenous transformation matrices) for fixed-base
% S6RRRPPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6,theta4]';
% 
% Output:
% T_c_mdh [4x4x(6+1)]
%   homogenous transformation matrices for each (body) frame (MDH)
%   1:  mdh base (link 0) -> mdh base link 0 (unit matrix, no information)
%   ...
%   7:  mdh base (link 0) -> mdh frame (7-1), link (7-1)
%   ...
%   6+1:  mdh base (link 0) -> mdh frame (6)

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 17:37
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function [T_c_mdh, Tc_stack] = S6RRRPPR6_fkine_fixb_rotmat_mdh_sym_varpar(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR6_fkine_fixb_rotmat_mdh_sym_varpar: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR6_fkine_fixb_rotmat_mdh_sym_varpar: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From fkine_mdh_floatb_twist_rotmat_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 17:36:29
% EndTime: 2018-11-23 17:36:30
% DurationCPUTime: 0.18s
% Computational Cost: add. (552->78), mult. (536->86), div. (0->0), fcn. (603->16), ass. (0->51)
t40 = cos(pkin(6));
t43 = sin(qJ(3));
t71 = t40 * t43;
t39 = sin(pkin(6));
t45 = sin(qJ(1));
t70 = t45 * t39;
t49 = cos(qJ(1));
t69 = t49 * t39;
t68 = pkin(6) - qJ(2);
t67 = pkin(6) + qJ(2);
t66 = pkin(7) + 0;
t65 = t45 * pkin(1) + 0;
t64 = t43 * t70;
t63 = t40 * pkin(8) + t66;
t62 = t49 * pkin(1) + pkin(8) * t70 + 0;
t61 = cos(t67);
t60 = sin(t68);
t59 = cos(t68) / 0.2e1;
t58 = sin(t67) / 0.2e1;
t57 = -pkin(8) * t69 + t65;
t21 = t58 + t60 / 0.2e1;
t23 = t59 - t61 / 0.2e1;
t47 = cos(qJ(3));
t32 = t47 * pkin(3) + pkin(2);
t41 = -qJ(4) - pkin(9);
t56 = pkin(3) * t71 + t21 * t41 + t23 * t32 + t63;
t44 = sin(qJ(2));
t52 = t59 + t61 / 0.2e1;
t16 = t49 * t44 + t45 * t52;
t22 = t58 - t60 / 0.2e1;
t48 = cos(qJ(2));
t17 = -t45 * t22 + t49 * t48;
t55 = pkin(3) * t64 - t16 * t41 + t17 * t32 + t62;
t38 = qJ(3) + pkin(11);
t33 = sin(t38);
t34 = cos(t38);
t5 = t17 * t33 - t34 * t70;
t6 = t17 * t34 + t33 * t70;
t54 = t6 * pkin(4) + t5 * qJ(5) + t55;
t10 = t23 * t33 - t40 * t34;
t11 = t23 * t34 + t40 * t33;
t53 = t11 * pkin(4) + t10 * qJ(5) + t56;
t14 = t45 * t44 - t49 * t52;
t15 = t49 * t22 + t45 * t48;
t51 = -t14 * t41 + t15 * t32 + (-pkin(3) * t43 - pkin(8)) * t69 + t65;
t3 = t15 * t33 + t34 * t69;
t4 = t15 * t34 - t33 * t69;
t50 = t4 * pkin(4) + t3 * qJ(5) + t51;
t46 = cos(qJ(6));
t42 = sin(qJ(6));
t1 = [1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; t49, -t45, 0, 0; t45, t49, 0, 0; 0, 0, 1, t66; 0, 0, 0, 1; t17, -t16, t70, t62; t15, -t14, -t69, t57; t23, t21, t40, t63; 0, 0, 0, 1; t17 * t47 + t64, -t17 * t43 + t47 * t70, t16, t17 * pkin(2) + t16 * pkin(9) + t62; t15 * t47 - t43 * t69, -t15 * t43 - t47 * t69, t14, t15 * pkin(2) + t14 * pkin(9) + t57; t23 * t47 + t71, -t23 * t43 + t40 * t47, -t21, t23 * pkin(2) - t21 * pkin(9) + t63; 0, 0, 0, 1; t6, -t5, t16, t55; t4, -t3, t14, t51; t11, -t10, -t21, t56; 0, 0, 0, 1; t16, -t6, t5, t54; t14, -t4, t3, t50; -t21, -t11, t10, t53; 0, 0, 0, 1; t16 * t46 + t5 * t42, -t16 * t42 + t5 * t46, t6, t16 * pkin(5) + t6 * pkin(10) + t54; t14 * t46 + t3 * t42, -t14 * t42 + t3 * t46, t4, t14 * pkin(5) + t4 * pkin(10) + t50; t10 * t42 - t21 * t46, t10 * t46 + t21 * t42, t11, -t21 * pkin(5) + t11 * pkin(10) + t53; 0, 0, 0, 1;];
T_ges = t1;
%% Postprocessing: Reshape Output
% Convert Maple format (2-dimensional tensor) to Matlab format (3-dimensional tensor)
% Fallunterscheidung der Initialisierung für symbolische Eingabe
if isa([qJ; pkin], 'double'), T_c_mdh = NaN(4,4,6+1);               % numerisch
else,                         T_c_mdh = sym('xx', [4,4,6+1]); end % symbolisch
for i = 1:6+1
  T_c_mdh(:,:,i) = T_ges((i-1)*4+1 : 4*i, :);
end
Tc_stack = NaN(3*size(T_c_mdh,3),4);
% Zusätzliche Ausgabe: Als 2D-array gestapelt, ohne Zeile mit 0001
for i = 1:size(T_c_mdh,3), Tc_stack((i-1)*3+1:3*i,1:4) = T_c_mdh(1:3,1:4,i); end

% Calculate potential energy for
% S1R1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [1x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[d1]';
% m [2x1]
%   mass of all robot links (including the base)
% rSges [2x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2020-06-19 09:13
% Revision: caa0dbda1e8a16d11faaa29ba3bbef6afcd619f7 (2020-05-25)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S1R1_energypot_fixb_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(1,1),zeros(3,1),zeros(1,1),zeros(2,1),zeros(2,3)}
assert(isreal(qJ) && all(size(qJ) == [1 1]), ...
  'S1R1_energypot_fixb_slag_vp1: qJ has to be [1x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S1R1_energypot_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S1R1_energypot_fixb_slag_vp1: pkin has to be [1x1] (double)');
assert(isreal(m) && all(size(m) == [2 1]), ...
  'S1R1_energypot_fixb_slag_vp1: m has to be [2x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [2,3]), ...
  'S1R1_energypot_fixb_slag_vp1: rSges has to be [2x3] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_worldframe_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2020-06-19 09:12:50
% EndTime: 2020-06-19 09:12:51
% DurationCPUTime: 0.04s
% Computational Cost: add. (8->8), mult. (12->12), div. (0->0), fcn. (4->2), ass. (0->3)
t4 = cos(qJ(1));
t3 = sin(qJ(1));
t1 = -m(1) * (g(1) * rSges(1,1) + g(2) * rSges(1,2) + g(3) * rSges(1,3)) - m(2) * (g(1) * (t4 * rSges(2,1) - t3 * rSges(2,2)) + g(2) * (t3 * rSges(2,1) + t4 * rSges(2,2)) + g(3) * (pkin(1) + rSges(2,3)));
U = t1;

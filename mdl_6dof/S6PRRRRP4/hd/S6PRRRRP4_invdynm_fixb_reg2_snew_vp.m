% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6PRRRRP4
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d5,theta1]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 09:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6PRRRRP4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP4_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRP4_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRRP4_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRRP4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRRP4_invdynm_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 09:57:31
% EndTime: 2019-05-05 09:58:53
% DurationCPUTime: 89.05s
% Computational Cost: add. (293144->998), mult. (572542->1370), div. (0->0), fcn. (421971->12), ass. (0->682)
t1989 = sin(qJ(4));
t1993 = cos(qJ(4));
t1990 = sin(qJ(3));
t2153 = qJD(2) * t1990;
t1941 = -t1993 * qJD(3) + t1989 * t2153;
t1942 = qJD(3) * t1989 + t1993 * t2153;
t1988 = sin(qJ(5));
t1992 = cos(qJ(5));
t1895 = -t1941 * t1988 + t1942 * t1992;
t1892 = t1895 ^ 2;
t1994 = cos(qJ(3));
t2152 = qJD(2) * t1994;
t1969 = -qJD(4) + t2152;
t1961 = -qJD(5) + t1969;
t2163 = t1961 ^ 2;
t1810 = t2163 + t1892;
t1972 = qJD(3) * t2153;
t2107 = t1994 * qJDD(2);
t1945 = -t1972 + t2107;
t1938 = -qJDD(4) + t1945;
t1933 = -qJDD(5) + t1938;
t1893 = t1992 * t1941 + t1942 * t1988;
t2127 = t1895 * t1893;
t2180 = -t2127 + t1933;
t2136 = t2180 * t1988;
t1732 = -t1810 * t1992 + t2136;
t2135 = t2180 * t1992;
t1734 = t1810 * t1988 + t2135;
t1628 = t1732 * t1989 - t1734 * t1993;
t2101 = qJD(3) * t2152;
t2108 = t1990 * qJDD(2);
t2039 = t2101 + t2108;
t2002 = -t1989 * qJDD(3) - t1993 * t2039;
t1884 = -t1941 * qJD(4) - t2002;
t2001 = t1993 * qJDD(3) - t1989 * t2039;
t1999 = t1942 * qJD(4) - t2001;
t1761 = -t1893 * qJD(5) + t1992 * t1884 - t1988 * t1999;
t2128 = t1893 * t1961;
t2183 = t1761 + t2128;
t1568 = t1628 * t1990 + t1994 * t2183;
t1983 = sin(pkin(6));
t1985 = cos(pkin(6));
t1570 = t1628 * t1994 - t1990 * t2183;
t1651 = t1732 * t1993 + t1734 * t1989;
t1991 = sin(qJ(2));
t1995 = cos(qJ(2));
t2072 = t1570 * t1991 + t1651 * t1995;
t1471 = t1985 * t1568 + t1983 * t2072;
t1473 = -t1983 * t1568 + t1985 * t2072;
t2332 = pkin(7) * (t1471 * t1983 + t1473 * t1985);
t1516 = t1570 * t1995 - t1651 * t1991;
t1982 = sin(pkin(11));
t1984 = cos(pkin(11));
t2331 = qJ(1) * (t1473 * t1984 + t1516 * t1982);
t2330 = qJ(1) * (t1473 * t1982 - t1516 * t1984);
t2329 = pkin(1) * t1471;
t2328 = pkin(1) * t1473;
t2095 = -t1988 * t1884 - t1992 * t1999;
t1760 = qJD(5) * t1895 - t2095;
t1870 = t1895 * t1961;
t2184 = t1760 - t1870;
t1642 = -t2184 * t1988 + t1992 * t2183;
t2139 = t2183 * t1988;
t1646 = -t2184 * t1992 - t2139;
t1555 = -t1642 * t1989 + t1646 * t1993;
t2165 = t1893 ^ 2;
t2182 = t1892 - t2165;
t1533 = t1555 * t1990 - t1994 * t2182;
t1535 = t1555 * t1994 + t1990 * t2182;
t1551 = t1642 * t1993 + t1646 * t1989;
t2073 = t1535 * t1991 - t1551 * t1995;
t1452 = -t1983 * t1533 + t1985 * t2073;
t1470 = t1535 * t1995 + t1551 * t1991;
t2324 = t1452 * t1982 - t1470 * t1984;
t2323 = t1452 * t1984 + t1470 * t1982;
t1863 = t2165 - t2163;
t1741 = t1863 * t1988 - t2135;
t1745 = t1863 * t1992 + t2136;
t1665 = t1741 * t1989 - t1745 * t1993;
t1718 = t1760 + t1870;
t1585 = t1665 * t1990 - t1718 * t1994;
t1589 = t1665 * t1994 + t1718 * t1990;
t1662 = t1741 * t1993 + t1745 * t1989;
t2065 = t1589 * t1991 + t1662 * t1995;
t1499 = -t1983 * t1585 + t1985 * t2065;
t1539 = t1589 * t1995 - t1662 * t1991;
t2322 = t1499 * t1982 - t1539 * t1984;
t2321 = t1499 * t1984 + t1539 * t1982;
t2320 = pkin(7) * t1516;
t1495 = t1985 * t1585 + t1983 * t2065;
t1450 = t1985 * t1533 + t1983 * t2073;
t2313 = pkin(2) * t1568;
t2312 = pkin(8) * t1568;
t2309 = pkin(2) * t1651 + pkin(8) * t1570;
t2303 = pkin(3) * t1651;
t2302 = pkin(9) * t1651;
t2299 = pkin(3) * t2183 + pkin(9) * t1628;
t1864 = t1892 - t2163;
t2181 = -t2127 - t1933;
t2134 = t2181 * t1988;
t2220 = -t1992 * t1864 + t2134;
t1793 = t1992 * t2181;
t2221 = t1864 * t1988 + t1793;
t2238 = t1989 * t2221 + t1993 * t2220;
t2179 = -t2128 + t1761;
t2237 = -t1989 * t2220 + t1993 * t2221;
t2258 = t1990 * t2179 + t1994 * t2237;
t2272 = t1991 * t2238 + t1995 * t2258;
t2260 = t1990 * t2237 - t1994 * t2179;
t2273 = t1991 * t2258 - t1995 * t2238;
t2287 = -t1983 * t2260 + t1985 * t2273;
t2298 = -t1982 * t2287 + t1984 * t2272;
t2297 = t1982 * t2272 + t1984 * t2287;
t2178 = -t2163 - t2165;
t2193 = t1992 * t2178 - t2134;
t2196 = t1988 * t2178 + t1793;
t2214 = -t1989 * t2196 + t1993 * t2193;
t2240 = t1990 * t2214 - t1994 * t2184;
t2213 = t1989 * t2193 + t1993 * t2196;
t2239 = t1990 * t2184 + t1994 * t2214;
t2259 = t1991 * t2239 - t1995 * t2213;
t2274 = -t1983 * t2240 + t1985 * t2259;
t2296 = pkin(1) * t2274;
t2275 = t1983 * t2259 + t1985 * t2240;
t2295 = pkin(1) * t2275;
t2288 = t1983 * t2273 + t1985 * t2260;
t2257 = t1991 * t2213 + t1995 * t2239;
t2286 = qJ(1) * (-t1982 * t2274 + t1984 * t2257);
t2285 = qJ(1) * (t1982 * t2257 + t1984 * t2274);
t2284 = (-t1983 * t2275 - t1985 * t2274) * pkin(7);
t2283 = pkin(4) * t1732;
t2282 = pkin(7) * t2257;
t2281 = pkin(10) * t1732;
t2280 = pkin(10) * t1734;
t2271 = pkin(2) * t2240;
t2270 = pkin(8) * t2240;
t2265 = -pkin(2) * t2213 + pkin(8) * t2239;
t2034 = (t1893 * t1988 + t1895 * t1992) * t1961;
t2120 = t1961 * t1988;
t1859 = t1895 * t2120;
t2119 = t1961 * t1992;
t2104 = t1893 * t2119;
t2083 = -t1859 + t2104;
t2172 = t1989 * t2083 + t1993 * t2034;
t2171 = -t1989 * t2034 + t1993 * t2083;
t2191 = -t1933 * t1990 + t1994 * t2171;
t2216 = t1991 * t2172 + t1995 * t2191;
t2195 = t1994 * t1933 + t1990 * t2171;
t2218 = t1991 * t2191 - t1995 * t2172;
t2241 = -t1983 * t2195 + t1985 * t2218;
t2264 = -t1982 * t2241 + t1984 * t2216;
t2040 = t1760 * t1988 - t2104;
t2084 = -t1992 * t1760 - t1893 * t2120;
t2169 = t1989 * t2040 + t1993 * t2084;
t2106 = t1990 * t2127;
t2170 = -t1989 * t2084 + t1993 * t2040;
t2192 = t1994 * t2170 - t2106;
t2215 = t1991 * t2169 + t1995 * t2192;
t2105 = t1994 * t2127;
t2194 = t1990 * t2170 + t2105;
t2217 = t1991 * t2192 - t1995 * t2169;
t2242 = -t1983 * t2194 + t1985 * t2217;
t2263 = -t1982 * t2242 + t1984 * t2215;
t2262 = t1982 * t2216 + t1984 * t2241;
t2261 = t1982 * t2215 + t1984 * t2242;
t2255 = pkin(3) * t2213;
t2254 = pkin(9) * t2213;
t2245 = -pkin(3) * t2184 + pkin(9) * t2214;
t2244 = t1983 * t2217 + t1985 * t2194;
t2243 = t1983 * t2218 + t1985 * t2195;
t1767 = -t2165 - t1892;
t2236 = pkin(3) * t1767;
t2235 = pkin(4) * t1767;
t2234 = pkin(4) * t2196;
t2233 = pkin(10) * t2193;
t2232 = pkin(10) * t2196;
t2231 = qJ(6) * t2183;
t2230 = t1767 * t1990;
t2229 = t1767 * t1994;
t1955 = g(1) * t1984 + g(2) * t1982;
t2156 = g(3) - qJDD(1);
t2097 = t1983 * t2156;
t2098 = g(1) * t1982 - t1984 * g(2);
t2197 = t1985 * t2098 - t2097;
t1876 = -t1995 * t1955 + t1991 * t2197;
t1996 = qJD(2) ^ 2;
t1858 = -t1996 * pkin(2) + qJDD(2) * pkin(8) + t1876;
t1935 = t1983 * t2098;
t2080 = t1985 * t2156 + t1935;
t1914 = t1994 * t2080;
t2161 = pkin(3) * t1994;
t2088 = -pkin(9) * t1990 - t2161;
t1943 = t2088 * qJD(2);
t2166 = qJD(3) ^ 2;
t1772 = (qJD(2) * t1943 + t1858) * t1990 - qJDD(3) * pkin(3) - pkin(9) * t2166 + t1914;
t1915 = -pkin(4) * t1969 - pkin(10) * t1942;
t2164 = t1941 ^ 2;
t1695 = t1999 * pkin(4) - t2164 * pkin(10) + t1942 * t1915 + t1772;
t2222 = t1760 * pkin(5) + t1695 - t2231;
t1711 = t1761 * t1988 - t1895 * t2119;
t1712 = t1761 * t1992 + t1859;
t1634 = t1711 * t1993 + t1712 * t1989;
t1637 = -t1711 * t1989 + t1712 * t1993;
t2085 = t1994 * t1637 + t2106;
t2219 = -t1634 * t1995 + t1991 * t2085;
t2086 = t1990 * t1637 - t2105;
t2167 = -t1983 * t2086 + t1985 * t2219;
t2173 = t1634 * t1991 + t1995 * t2085;
t2190 = t1982 * t2173 + t1984 * t2167;
t2189 = -t1982 * t2167 + t1984 * t2173;
t1875 = -t1991 * t1955 - t1995 * t2197;
t1792 = t1875 * t1991 + t1876 * t1995;
t1778 = t1792 * t1983;
t2188 = t1982 * t2156;
t2187 = t1984 * t2156;
t2124 = t1942 * t1941;
t2014 = -t1938 - t2124;
t2186 = t1989 * t2014;
t2036 = t1991 * t2080;
t2185 = t1993 * t2014;
t2035 = t1995 * t2080;
t1922 = t1941 * t1969;
t1847 = -t1922 + t1884;
t2175 = -t1984 * t1955 - t1982 * t2098;
t2174 = -t1982 * t1955 + t1984 * t2098;
t2168 = t1983 * t2219 + t1985 * t2086;
t1937 = t1942 ^ 2;
t1967 = t1969 ^ 2;
t2162 = pkin(3) * t1990;
t1816 = t1994 * t1858 - t1990 * t2080;
t1773 = -pkin(3) * t2166 + qJDD(3) * pkin(9) + t1943 * t2152 + t1816;
t1857 = -qJDD(2) * pkin(2) - t1996 * pkin(8) + t1875;
t1944 = 0.2e1 * t2101 + t2108;
t2087 = -t1945 + t1972;
t1790 = pkin(3) * t2087 - pkin(9) * t1944 + t1857;
t1689 = t1989 * t1773 - t1993 * t1790;
t1650 = t2014 * pkin(4) - pkin(10) * t1847 - t1689;
t1690 = t1993 * t1773 + t1989 * t1790;
t1658 = -pkin(4) * t2164 - pkin(10) * t1999 + t1969 * t1915 + t1690;
t1563 = -t1992 * t1650 + t1658 * t1988;
t1564 = t1988 * t1650 + t1992 * t1658;
t1502 = -t1563 * t1992 + t1564 * t1988;
t2160 = pkin(4) * t1502;
t1713 = t1992 * t2179;
t1719 = (-qJD(5) - t1961) * t1895 + t2095;
t1640 = t1719 * t1988 - t1713;
t2159 = pkin(4) * t1640;
t2158 = pkin(5) * t1992;
t2157 = pkin(7) * t1985;
t2155 = qJ(6) * t1992;
t2154 = qJD(2) * qJD(3);
t2151 = qJD(6) * t1961;
t2150 = t1502 * t1989;
t2149 = t1502 * t1993;
t2146 = t1695 * t1988;
t2145 = t1695 * t1992;
t2140 = t2179 * t1988;
t2138 = t1772 * t1989;
t2137 = t1772 * t1993;
t2133 = t1857 * t1990;
t2132 = t1857 * t1994;
t1872 = t1938 - t2124;
t2130 = t1872 * t1989;
t2129 = t1872 * t1993;
t1904 = t1944 * t1990;
t1968 = t1990 * t1996 * t1994;
t1957 = -t1968 + qJDD(3);
t2123 = t1957 * t1990;
t2122 = t1957 * t1994;
t1958 = qJDD(3) + t1968;
t2121 = t1958 * t1990;
t2118 = t1969 * t1989;
t2117 = t1969 * t1993;
t1978 = t1990 ^ 2;
t2116 = t1978 * t1996;
t1947 = -0.2e1 * t2151;
t1825 = pkin(5) * t1893 - qJ(6) * t1895;
t2079 = -pkin(5) * t2163 - t1933 * qJ(6) - t1893 * t1825 + t1564;
t1541 = t1947 + t2079;
t1543 = t1933 * pkin(5) - qJ(6) * t2163 + t1825 * t1895 + qJDD(6) + t1563;
t2112 = -pkin(5) * t1543 + qJ(6) * t1541;
t2111 = -pkin(5) * t2179 - qJ(6) * t1718;
t1979 = t1994 ^ 2;
t2110 = t1978 + t1979;
t2109 = t1983 * qJDD(2);
t2103 = t1990 * t2124;
t2102 = t1994 * t2124;
t2099 = -qJ(6) * t1988 - pkin(4);
t1503 = t1563 * t1988 + t1992 * t1564;
t1610 = t1689 * t1989 + t1993 * t1690;
t1815 = t1990 * t1858 + t1914;
t1727 = t1815 * t1990 + t1994 * t1816;
t2094 = t1991 * t1968;
t2093 = t1995 * t1968;
t1462 = t1541 * t1988 - t1543 * t1992;
t2092 = pkin(4) * t1462 + t2112;
t1641 = -t1718 * t1988 - t1713;
t2091 = pkin(4) * t1641 + t2111;
t2090 = -t1564 + t2283;
t2089 = -pkin(3) * t1772 + pkin(9) * t1610;
t1726 = t1815 * t1994 - t1816 * t1990;
t1949 = t2110 * qJDD(2);
t1976 = t1979 * t1996;
t1952 = t1976 + t2116;
t1899 = t1949 * t1995 - t1952 * t1991;
t2081 = pkin(7) * t1899 + t1726 * t1991;
t1463 = t1541 * t1992 + t1543 * t1988;
t1430 = -t1462 * t1989 + t1463 * t1993;
t1565 = (-pkin(5) * t1961 - 0.2e1 * qJD(6)) * t1895 + t2222;
t1421 = t1430 * t1994 + t1565 * t1990;
t1429 = t1462 * t1993 + t1463 * t1989;
t2078 = t1421 * t1991 - t1429 * t1995;
t1442 = t1503 * t1993 - t2150;
t1436 = t1442 * t1994 + t1695 * t1990;
t1441 = t1503 * t1989 + t2149;
t2077 = t1436 * t1991 - t1441 * t1995;
t1644 = t1719 * t1992 + t2140;
t1553 = -t1640 * t1989 + t1644 * t1993;
t1523 = t1553 * t1994 + t2230;
t1549 = t1640 * t1993 + t1644 * t1989;
t2076 = t1523 * t1991 - t1549 * t1995;
t1645 = -t1718 * t1992 + t2140;
t1554 = -t1641 * t1989 + t1645 * t1993;
t1524 = t1554 * t1994 + t2230;
t1550 = t1641 * t1993 + t1645 * t1989;
t2075 = t1524 * t1991 - t1550 * t1995;
t1573 = t1610 * t1994 + t1772 * t1990;
t1609 = -t1689 * t1993 + t1690 * t1989;
t2070 = t1573 * t1991 - t1609 * t1995;
t1845 = (-qJD(4) - t1969) * t1942 + t2001;
t1754 = t1845 * t1993 + t1847 * t1989;
t1871 = t1937 + t2164;
t1700 = t1754 * t1994 - t1871 * t1990;
t1752 = t1845 * t1989 - t1847 * t1993;
t2059 = t1700 * t1991 - t1752 * t1995;
t2058 = t1727 * t1991 - t1857 * t1995;
t1921 = t1942 * t1969;
t1844 = t1921 - t1999;
t1846 = t1922 + t1884;
t1753 = t1844 * t1993 - t1846 * t1989;
t1902 = t1937 - t2164;
t1729 = t1753 * t1994 + t1902 * t1990;
t1751 = t1844 * t1989 + t1846 * t1993;
t2057 = t1729 * t1991 - t1751 * t1995;
t1887 = -t1967 - t2164;
t1802 = t1887 * t1993 - t2186;
t1731 = t1802 * t1994 - t1844 * t1990;
t1801 = t1887 * t1989 + t2185;
t2056 = t1731 * t1991 - t1801 * t1995;
t1898 = -t1937 - t1967;
t1814 = -t1898 * t1989 + t2129;
t1848 = (qJD(4) - t1969) * t1941 + t2002;
t1737 = t1814 * t1994 - t1848 * t1990;
t1813 = t1898 * t1993 + t2130;
t2055 = t1737 * t1991 - t1813 * t1995;
t1920 = -t1937 + t1967;
t1828 = -t1920 * t1989 + t2185;
t1748 = t1828 * t1994 + t1847 * t1990;
t1826 = t1920 * t1993 + t2186;
t2054 = t1748 * t1991 - t1826 * t1995;
t1919 = -t1967 + t2164;
t1829 = t1919 * t1993 + t2130;
t1843 = t1921 + t1999;
t1749 = t1829 * t1994 - t1843 * t1990;
t1827 = t1919 * t1989 - t2129;
t2053 = t1749 * t1991 - t1827 * t1995;
t1840 = -t1941 * t2117 + t1989 * t1999;
t1776 = t1840 * t1994 - t2103;
t1839 = t1941 * t2118 + t1993 * t1999;
t2052 = t1776 * t1991 + t1839 * t1995;
t1842 = t1884 * t1993 + t1942 * t2118;
t1777 = t1842 * t1994 + t2103;
t1841 = t1884 * t1989 - t1942 * t2117;
t2051 = t1777 * t1991 - t1841 * t1995;
t1855 = (t1941 * t1993 - t1942 * t1989) * t1969;
t1833 = t1855 * t1994 - t1938 * t1990;
t1854 = (t1941 * t1989 + t1942 * t1993) * t1969;
t2050 = t1833 * t1991 - t1854 * t1995;
t1791 = t1995 * t1875 - t1991 * t1876;
t1946 = -0.2e1 * t1972 + t2107;
t1897 = t1946 * t1994 - t1904;
t1953 = -t1976 + t2116;
t2049 = t1897 * t1991 - t1953 * t1995;
t1966 = -t1976 - t2166;
t1910 = t1966 * t1994 - t2121;
t2048 = t1910 * t1991 + t1946 * t1995;
t1964 = -t2116 - t2166;
t1912 = -t1964 * t1990 - t2122;
t2047 = t1912 * t1991 - t1944 * t1995;
t2043 = qJDD(2) * t1991 + t1995 * t1996;
t1929 = t2043 * t1985;
t1950 = qJDD(2) * t1995 - t1991 * t1996;
t2046 = t1929 * t1984 + t1950 * t1982;
t2045 = t1929 * t1982 - t1950 * t1984;
t2044 = t1949 * t1991 + t1952 * t1995;
t1939 = t2110 * t2154;
t2042 = -qJDD(3) * t1995 + t1939 * t1991;
t2041 = -t1563 + t2234;
t1965 = t1976 - t2166;
t1909 = t1965 * t1994 - t2123;
t2038 = t1909 * t1991 - t1995 * t2107;
t1940 = t1994 * t1958;
t1963 = -t2116 + t2166;
t1911 = -t1963 * t1990 + t1940;
t2037 = t1911 * t1991 - t1995 * t2108;
t2033 = pkin(3) * t1844 + pkin(9) * t1802 - t2137;
t2032 = pkin(3) * t1848 + pkin(9) * t1814 + t2138;
t2031 = pkin(5) * t1810 - qJ(6) * t2180 + t2079;
t1916 = -t1945 * t1990 - t1979 * t2154;
t2030 = t1916 * t1991 - t2093;
t1917 = -t1978 * t2154 + t1994 * t2039;
t2029 = t1917 * t1991 + t2093;
t1427 = pkin(10) * t1463 + (t2099 - t2158) * t1565;
t1434 = -pkin(10) * t1462 + (pkin(5) * t1988 - t2155) * t1565;
t1394 = -pkin(9) * t1429 - t1427 * t1989 + t1434 * t1993;
t1406 = -pkin(3) * t1429 - t2092;
t1420 = t1430 * t1990 - t1565 * t1994;
t1376 = -pkin(8) * t1420 + t1394 * t1994 - t1406 * t1990;
t2010 = -pkin(3) * t1565 + pkin(9) * t1430 + t1427 * t1993 + t1434 * t1989;
t1384 = -pkin(2) * t1420 - t2010;
t1402 = t1421 * t1995 + t1429 * t1991;
t2028 = pkin(7) * t1402 + t1376 * t1991 + t1384 * t1995;
t1475 = -pkin(4) * t1695 + pkin(10) * t1503;
t1411 = -pkin(9) * t1441 - pkin(10) * t2149 - t1475 * t1989;
t1419 = -pkin(3) * t1441 - t2160;
t1435 = t1442 * t1990 - t1695 * t1994;
t1385 = -pkin(8) * t1435 + t1411 * t1994 - t1419 * t1990;
t2003 = -pkin(3) * t1695 + pkin(9) * t1442 - pkin(10) * t2150 + t1475 * t1993;
t1395 = -pkin(2) * t1435 - t2003;
t1410 = t1436 * t1995 + t1441 * t1991;
t2027 = pkin(7) * t1410 + t1385 * t1991 + t1395 * t1995;
t1518 = -pkin(5) * t1767 + t1541;
t1519 = -qJ(6) * t1767 + t1543;
t1453 = pkin(10) * t1645 + t1518 * t1992 + t1519 * t1988 - t2235;
t1454 = -pkin(10) * t1641 - t1518 * t1988 + t1519 * t1992;
t1413 = -pkin(9) * t1550 - t1453 * t1989 + t1454 * t1993;
t1476 = -pkin(3) * t1550 - t2091;
t1522 = t1554 * t1990 - t2229;
t1401 = -pkin(8) * t1522 + t1413 * t1994 - t1476 * t1990;
t2009 = pkin(9) * t1554 + t1453 * t1993 + t1454 * t1989 - t2236;
t1407 = -pkin(2) * t1522 - t2009;
t1465 = t1524 * t1995 + t1550 * t1991;
t2026 = pkin(7) * t1465 + t1401 * t1991 + t1407 * t1995;
t1460 = pkin(10) * t1644 + t1503 - t2235;
t1461 = -pkin(10) * t1640 - t1502;
t1418 = -pkin(9) * t1549 - t1460 * t1989 + t1461 * t1993;
t1513 = -pkin(3) * t1549 - t2159;
t1521 = t1553 * t1990 - t2229;
t1408 = -pkin(8) * t1521 + t1418 * t1994 - t1513 * t1990;
t2008 = pkin(9) * t1553 + t1460 * t1993 + t1461 * t1989 - t2236;
t1414 = -pkin(2) * t1521 - t2008;
t1464 = t1523 * t1995 + t1549 * t1991;
t2025 = pkin(7) * t1464 + t1408 * t1991 + t1414 * t1995;
t1997 = 0.2e1 * qJD(6) * t1895 - t2222;
t1544 = pkin(5) * t1870 + t1997 + t2231;
t1484 = -t2280 + t1988 * t1544 + (pkin(4) + t2158) * t2183;
t1509 = -pkin(5) * t2139 + t1544 * t1992 + t2281;
t1433 = -t1484 * t1989 + t1509 * t1993 + t2302;
t2011 = t2031 - t2283;
t1468 = -t2011 + 0.2e1 * t2151 + t2303;
t1416 = t1433 * t1994 - t1468 * t1990 - t2312;
t2007 = t1484 * t1993 + t1509 * t1989 + t2299;
t1424 = -t2007 - t2313;
t2024 = t1416 * t1991 + t1424 * t1995 + t2320;
t1546 = (-t2184 + t1870) * pkin(5) + t1997;
t1501 = t1992 * t1546 + t2099 * t2184 + t2233;
t1511 = -t1546 * t1988 - t2155 * t2184 - t2232;
t1438 = -t1501 * t1989 + t1511 * t1993 - t2254;
t2000 = pkin(5) * t2181 + qJ(6) * t2178 - t1543;
t1998 = t2000 + t2234;
t1478 = -t1998 - t2255;
t1417 = t1438 * t1994 - t1478 * t1990 - t2270;
t2006 = t1501 * t1993 + t1511 * t1989 + t2245;
t1426 = -t2006 - t2271;
t2023 = t1417 * t1991 + t1426 * t1995 + t2282;
t1566 = -pkin(4) * t2184 - t2145 + t2233;
t1617 = t2146 - t2232;
t1479 = -t1566 * t1989 + t1617 * t1993 - t2254;
t1507 = -t2041 - t2255;
t1431 = t1479 * t1994 - t1507 * t1990 - t2270;
t2005 = t1566 * t1993 + t1617 * t1989 + t2245;
t1455 = -t2005 - t2271;
t2022 = t1431 * t1991 + t1455 * t1995 + t2282;
t1574 = -pkin(4) * t2183 + t2146 + t2280;
t1638 = t2145 - t2281;
t1506 = -t1574 * t1989 + t1638 * t1993 - t2302;
t1510 = -t2090 - t2303;
t1432 = t1506 * t1994 - t1510 * t1990 + t2312;
t2004 = t1574 * t1993 + t1638 * t1989 - t2299;
t1457 = -t2004 + t2313;
t2021 = t1432 * t1991 + t1457 * t1995 - t2320;
t1572 = t1610 * t1990 - t1772 * t1994;
t1477 = -pkin(8) * t1572 + (-pkin(9) * t1994 + t2162) * t1609;
t1512 = -pkin(2) * t1572 - t2089;
t1515 = t1573 * t1995 + t1609 * t1991;
t2020 = pkin(7) * t1515 + t1477 * t1991 + t1512 * t1995;
t1567 = -pkin(9) * t1752 - t1609;
t1699 = t1754 * t1990 + t1871 * t1994;
t1520 = -pkin(8) * t1699 + t1567 * t1994 + t1752 * t2162;
t2013 = pkin(3) * t1871 + pkin(9) * t1754 + t1610;
t1531 = -pkin(2) * t1699 - t2013;
t1649 = t1700 * t1995 + t1752 * t1991;
t2019 = pkin(7) * t1649 + t1520 * t1991 + t1531 * t1995;
t1657 = -pkin(3) * t1801 + t1689;
t1696 = -pkin(9) * t1801 + t2138;
t1730 = t1802 * t1990 + t1844 * t1994;
t1560 = -pkin(8) * t1730 - t1657 * t1990 + t1696 * t1994;
t1611 = -pkin(2) * t1730 - t2033;
t1674 = t1731 * t1995 + t1801 * t1991;
t2018 = pkin(7) * t1674 + t1560 * t1991 + t1611 * t1995;
t1671 = -pkin(3) * t1813 + t1690;
t1698 = -pkin(9) * t1813 + t2137;
t1736 = t1814 * t1990 + t1848 * t1994;
t1561 = -pkin(8) * t1736 - t1671 * t1990 + t1698 * t1994;
t1612 = -pkin(2) * t1736 - t2032;
t1675 = t1737 * t1995 + t1813 * t1991;
t2017 = pkin(7) * t1675 + t1561 * t1991 + t1612 * t1995;
t1906 = t1966 * t1990 + t1940;
t1769 = -pkin(2) * t1906 + t1815;
t1811 = -pkin(8) * t1906 + t2133;
t1860 = t1910 * t1995 - t1946 * t1991;
t2016 = pkin(7) * t1860 + t1769 * t1995 + t1811 * t1991;
t1908 = t1964 * t1994 - t2123;
t1770 = -pkin(2) * t1908 + t1816;
t1812 = -pkin(8) * t1908 + t2132;
t1861 = t1912 * t1995 + t1944 * t1991;
t2015 = pkin(7) * t1861 + t1770 * t1995 + t1812 * t1991;
t1682 = t1727 * t1995 + t1857 * t1991;
t2012 = pkin(7) * t1682 - (-pkin(2) * t1995 - pkin(8) * t1991) * t1726;
t1973 = t1985 * qJDD(2);
t1930 = t1950 * t1985;
t1928 = t1950 * t1983;
t1927 = t2043 * t1983;
t1918 = qJDD(3) * t1991 + t1939 * t1995;
t1907 = t1963 * t1994 + t2121;
t1905 = t1965 * t1990 + t2122;
t1903 = t2087 * t1994;
t1901 = t2042 * t1985;
t1900 = t2042 * t1983;
t1896 = t1944 * t1994 + t1946 * t1990;
t1889 = t2044 * t1985;
t1888 = t2044 * t1983;
t1886 = -t1930 * t1982 - t1984 * t2043;
t1885 = t1930 * t1984 - t1982 * t2043;
t1882 = t1917 * t1995 - t2094;
t1881 = t1916 * t1995 + t2094;
t1880 = t1911 * t1995 + t1991 * t2108;
t1879 = t1909 * t1995 + t1991 * t2107;
t1853 = t1897 * t1995 + t1953 * t1991;
t1835 = -t2035 + (t1927 * t1983 + t1929 * t1985) * pkin(7);
t1834 = -t2036 + (-t1928 * t1983 - t1930 * t1985) * pkin(7);
t1832 = t1855 * t1990 + t1938 * t1994;
t1824 = -t1983 * t1904 + t1985 * t2029;
t1823 = t1983 * t1903 + t1985 * t2030;
t1822 = t1985 * t1904 + t1983 * t2029;
t1821 = -t1985 * t1903 + t1983 * t2030;
t1820 = -t1983 * t1907 + t1985 * t2037;
t1819 = -t1983 * t1905 + t1985 * t2038;
t1818 = t1985 * t1907 + t1983 * t2037;
t1817 = t1985 * t1905 + t1983 * t2038;
t1806 = -t1983 * t1908 + t1985 * t2047;
t1805 = -t1983 * t1906 + t1985 * t2048;
t1804 = t1985 * t1908 + t1983 * t2047;
t1803 = t1985 * t1906 + t1983 * t2048;
t1789 = -t1983 * t1896 + t1985 * t2049;
t1788 = t1985 * t1896 + t1983 * t2049;
t1787 = pkin(2) * t1946 + pkin(8) * t1910 - t2132;
t1786 = -pkin(2) * t1944 + pkin(8) * t1912 + t2133;
t1779 = t1792 * t1985;
t1775 = t1842 * t1990 - t2102;
t1774 = t1840 * t1990 + t2102;
t1765 = -pkin(1) * t1928 + t1983 * t1875 + t1985 * t2035 - t2043 * t2157;
t1764 = pkin(1) * t1927 + t1983 * t1876 - t1950 * t2157 - t1985 * t2036;
t1763 = pkin(1) * t1930 - t1985 * t1875 + (-pkin(7) * t2043 + t2035) * t1983;
t1762 = -pkin(1) * t1929 - t1985 * t1876 + (-pkin(7) * t1950 - t2036) * t1983;
t1756 = t1983 * t1935 + (t2097 - t1791) * t1985;
t1755 = -t1791 * t1983 - t1985 * t2080;
t1750 = t1833 * t1995 + t1854 * t1991;
t1747 = t1829 * t1990 + t1843 * t1994;
t1746 = t1828 * t1990 - t1847 * t1994;
t1728 = t1753 * t1990 - t1902 * t1994;
t1702 = t1777 * t1995 + t1841 * t1991;
t1701 = t1776 * t1995 - t1839 * t1991;
t1697 = pkin(2) * t1952 + pkin(8) * t1949 + t1727;
t1687 = -t1983 * t1832 + t1985 * t2050;
t1686 = t1985 * t1832 + t1983 * t2050;
t1685 = -pkin(2) * t1857 + pkin(8) * t1727;
t1684 = t1749 * t1995 + t1827 * t1991;
t1683 = t1748 * t1995 + t1826 * t1991;
t1677 = pkin(1) * t1756 + pkin(7) * t1778;
t1676 = -pkin(1) * t1755 + t1792 * t2157;
t1673 = t1995 * t1726 + (-t1888 * t1983 - t1889 * t1985) * pkin(7);
t1672 = (-t1755 * t1983 - t1756 * t1985) * pkin(7);
t1670 = -t1983 * t1775 + t1985 * t2051;
t1669 = -t1983 * t1774 + t1985 * t2052;
t1668 = t1985 * t1775 + t1983 * t2051;
t1667 = t1985 * t1774 + t1983 * t2052;
t1655 = t1729 * t1995 + t1751 * t1991;
t1623 = -t1991 * t1770 + t1995 * t1812 + (-t1804 * t1983 - t1806 * t1985) * pkin(7);
t1622 = -t1991 * t1769 + t1995 * t1811 + (-t1803 * t1983 - t1805 * t1985) * pkin(7);
t1621 = -t1983 * t1747 + t1985 * t2053;
t1620 = -t1983 * t1746 + t1985 * t2054;
t1619 = t1985 * t1747 + t1983 * t2053;
t1618 = t1985 * t1746 + t1983 * t2054;
t1616 = -t1983 * t1736 + t1985 * t2055;
t1615 = t1985 * t1736 + t1983 * t2055;
t1614 = t1726 * t1983 + t1985 * t2058;
t1613 = -t1726 * t1985 + t1983 * t2058;
t1608 = -t1983 * t1730 + t1985 * t2056;
t1607 = t1985 * t1730 + t1983 * t2056;
t1596 = -pkin(1) * t1804 - t1983 * t1786 + t1985 * t2015;
t1595 = -pkin(1) * t1803 - t1983 * t1787 + t1985 * t2016;
t1594 = pkin(1) * t1806 + t1985 * t1786 + t1983 * t2015;
t1593 = pkin(1) * t1805 + t1985 * t1787 + t1983 * t2016;
t1592 = -pkin(1) * t1888 - t1983 * t1697 + t1985 * t2081;
t1591 = pkin(1) * t1889 + t1985 * t1697 + t1983 * t2081;
t1582 = -t1983 * t1728 + t1985 * t2057;
t1581 = t1985 * t1728 + t1983 * t2057;
t1576 = -t1983 * t1699 + t1985 * t2059;
t1575 = t1985 * t1699 + t1983 * t2059;
t1547 = -pkin(2) * t1813 + pkin(8) * t1737 + t1671 * t1994 + t1698 * t1990;
t1545 = -pkin(2) * t1801 + pkin(8) * t1731 + t1657 * t1994 + t1696 * t1990;
t1514 = pkin(8) * t1700 + t1990 * t1567 + (-pkin(2) - t2161) * t1752;
t1508 = -(pkin(2) * t1991 - pkin(8) * t1995) * t1726 + (-t1613 * t1983 - t1614 * t1985) * pkin(7);
t1505 = -pkin(1) * t1613 - t1983 * t1685 + t1985 * t2012;
t1504 = pkin(1) * t1614 + t1985 * t1685 + t1983 * t2012;
t1467 = -t1983 * t1572 + t1985 * t2070;
t1466 = t1985 * t1572 + t1983 * t2070;
t1459 = pkin(8) * t1573 + (-pkin(2) + t2088) * t1609;
t1458 = t1995 * t1561 - t1991 * t1612 + (-t1615 * t1983 - t1616 * t1985) * pkin(7);
t1456 = t1995 * t1560 - t1991 * t1611 + (-t1607 * t1983 - t1608 * t1985) * pkin(7);
t1448 = -t1983 * t1522 + t1985 * t2075;
t1447 = -t1983 * t1521 + t1985 * t2076;
t1446 = t1985 * t1522 + t1983 * t2075;
t1445 = t1985 * t1521 + t1983 * t2076;
t1444 = -pkin(1) * t1615 - t1983 * t1547 + t1985 * t2017;
t1443 = pkin(1) * t1616 + t1985 * t1547 + t1983 * t2017;
t1440 = -pkin(1) * t1607 - t1983 * t1545 + t1985 * t2018;
t1439 = pkin(1) * t1608 + t1985 * t1545 + t1983 * t2018;
t1437 = t1995 * t1520 - t1991 * t1531 + (-t1575 * t1983 - t1576 * t1985) * pkin(7);
t1428 = t1506 * t1990 + t1510 * t1994 - t2309;
t1425 = t1479 * t1990 + t1507 * t1994 + t2265;
t1423 = -pkin(1) * t1575 - t1983 * t1514 + t1985 * t2019;
t1422 = pkin(1) * t1576 + t1985 * t1514 + t1983 * t2019;
t1415 = t1438 * t1990 + t1478 * t1994 + t2265;
t1412 = t1433 * t1990 + t1468 * t1994 + t2309;
t1409 = t1995 * t1477 - t1991 * t1512 + (-t1466 * t1983 - t1467 * t1985) * pkin(7);
t1405 = -pkin(2) * t1549 + pkin(8) * t1523 + t1418 * t1990 + t1513 * t1994;
t1404 = -pkin(1) * t1466 - t1983 * t1459 + t1985 * t2020;
t1403 = pkin(1) * t1467 + t1985 * t1459 + t1983 * t2020;
t1400 = t1995 * t1432 - t1991 * t1457 + t2332;
t1399 = -t1983 * t1435 + t1985 * t2077;
t1398 = t1985 * t1435 + t1983 * t2077;
t1397 = -pkin(2) * t1550 + pkin(8) * t1524 + t1413 * t1990 + t1476 * t1994;
t1396 = t1995 * t1431 - t1991 * t1455 + t2284;
t1393 = -t1983 * t1428 + t1985 * t2021 + t2329;
t1392 = t1985 * t1428 + t1983 * t2021 - t2328;
t1391 = -t1983 * t1420 + t1985 * t2078;
t1390 = t1985 * t1420 + t1983 * t2078;
t1389 = t1995 * t1417 - t1991 * t1426 + t2284;
t1388 = -t1983 * t1425 + t1985 * t2022 - t2295;
t1387 = t1985 * t1425 + t1983 * t2022 + t2296;
t1386 = t1995 * t1416 - t1991 * t1424 - t2332;
t1383 = -pkin(2) * t1441 + pkin(8) * t1436 + t1411 * t1990 + t1419 * t1994;
t1382 = -t1983 * t1415 + t1985 * t2023 - t2295;
t1381 = t1985 * t1415 + t1983 * t2023 + t2296;
t1380 = t1995 * t1408 - t1991 * t1414 + (-t1445 * t1983 - t1447 * t1985) * pkin(7);
t1379 = -t1983 * t1412 + t1985 * t2024 - t2329;
t1378 = t1985 * t1412 + t1983 * t2024 + t2328;
t1377 = t1995 * t1401 - t1991 * t1407 + (-t1446 * t1983 - t1448 * t1985) * pkin(7);
t1375 = -pkin(1) * t1445 - t1983 * t1405 + t1985 * t2025;
t1374 = pkin(1) * t1447 + t1985 * t1405 + t1983 * t2025;
t1373 = -pkin(2) * t1429 + pkin(8) * t1421 + t1394 * t1990 + t1406 * t1994;
t1372 = -pkin(1) * t1446 - t1983 * t1397 + t1985 * t2026;
t1371 = pkin(1) * t1448 + t1985 * t1397 + t1983 * t2026;
t1370 = t1995 * t1385 - t1991 * t1395 + (-t1398 * t1983 - t1399 * t1985) * pkin(7);
t1369 = -pkin(1) * t1398 - t1983 * t1383 + t1985 * t2027;
t1368 = pkin(1) * t1399 + t1985 * t1383 + t1983 * t2027;
t1367 = t1995 * t1376 - t1991 * t1384 + (-t1390 * t1983 - t1391 * t1985) * pkin(7);
t1366 = -pkin(1) * t1390 - t1983 * t1373 + t1985 * t2028;
t1365 = pkin(1) * t1391 + t1985 * t1373 + t1983 * t2028;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t2188, -t2187, -t2174, -qJ(1) * t2174, 0, 0, -t2045, 0, t1886, t1982 * t2109, -qJ(1) * t1885 - t1765 * t1982 + t1834 * t1984, qJ(1) * t2046 - t1982 * t1764 + t1984 * t1835, -t1779 * t1982 + t1791 * t1984, t1984 * t1672 - t1982 * t1676 - qJ(1) * (t1756 * t1984 + t1792 * t1982), -t1824 * t1982 + t1882 * t1984, -t1789 * t1982 + t1853 * t1984, -t1820 * t1982 + t1880 * t1984, -t1823 * t1982 + t1881 * t1984, -t1819 * t1982 + t1879 * t1984, -t1901 * t1982 + t1918 * t1984, t1984 * t1622 - t1982 * t1595 - qJ(1) * (t1805 * t1984 + t1860 * t1982), t1984 * t1623 - t1982 * t1596 - qJ(1) * (t1806 * t1984 + t1861 * t1982), t1984 * t1673 - t1982 * t1592 - qJ(1) * (t1889 * t1984 + t1899 * t1982), t1984 * t1508 - t1982 * t1505 - qJ(1) * (t1614 * t1984 + t1682 * t1982), -t1670 * t1982 + t1702 * t1984, -t1582 * t1982 + t1655 * t1984, -t1620 * t1982 + t1683 * t1984, -t1669 * t1982 + t1701 * t1984, -t1621 * t1982 + t1684 * t1984, -t1687 * t1982 + t1750 * t1984, t1984 * t1456 - t1982 * t1440 - qJ(1) * (t1608 * t1984 + t1674 * t1982), t1984 * t1458 - t1982 * t1444 - qJ(1) * (t1616 * t1984 + t1675 * t1982), t1984 * t1437 - t1982 * t1423 - qJ(1) * (t1576 * t1984 + t1649 * t1982), t1984 * t1409 - t1982 * t1404 - qJ(1) * (t1467 * t1984 + t1515 * t1982), t2189, -t2324, t2298, t2263, t2322, t2264, -t1982 * t1388 + t1984 * t1396 - t2285, -t1982 * t1393 + t1984 * t1400 + t2331, t1984 * t1380 - t1982 * t1375 - qJ(1) * (t1447 * t1984 + t1464 * t1982), t1984 * t1370 - t1982 * t1369 - qJ(1) * (t1399 * t1984 + t1410 * t1982), t2189, t2298, t2324, t2264, -t2322, t2263, -t1982 * t1382 + t1984 * t1389 - t2285, t1984 * t1377 - t1982 * t1372 - qJ(1) * (t1448 * t1984 + t1465 * t1982), -t1982 * t1379 + t1984 * t1386 - t2331, t1984 * t1367 - t1982 * t1366 - qJ(1) * (t1391 * t1984 + t1402 * t1982); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t2187, -t2188, t2175, qJ(1) * t2175, 0, 0, t2046, 0, t1885, -t1984 * t2109, qJ(1) * t1886 + t1765 * t1984 + t1834 * t1982, qJ(1) * t2045 + t1984 * t1764 + t1982 * t1835, t1779 * t1984 + t1791 * t1982, t1982 * t1672 + t1984 * t1676 + qJ(1) * (-t1756 * t1982 + t1792 * t1984), t1824 * t1984 + t1882 * t1982, t1789 * t1984 + t1853 * t1982, t1820 * t1984 + t1880 * t1982, t1823 * t1984 + t1881 * t1982, t1819 * t1984 + t1879 * t1982, t1901 * t1984 + t1918 * t1982, t1982 * t1622 + t1984 * t1595 + qJ(1) * (-t1805 * t1982 + t1860 * t1984), t1982 * t1623 + t1984 * t1596 + qJ(1) * (-t1806 * t1982 + t1861 * t1984), t1982 * t1673 + t1984 * t1592 + qJ(1) * (-t1889 * t1982 + t1899 * t1984), t1982 * t1508 + t1984 * t1505 + qJ(1) * (-t1614 * t1982 + t1682 * t1984), t1670 * t1984 + t1702 * t1982, t1582 * t1984 + t1655 * t1982, t1620 * t1984 + t1683 * t1982, t1669 * t1984 + t1701 * t1982, t1621 * t1984 + t1684 * t1982, t1687 * t1984 + t1750 * t1982, t1982 * t1456 + t1984 * t1440 + qJ(1) * (-t1608 * t1982 + t1674 * t1984), t1982 * t1458 + t1984 * t1444 + qJ(1) * (-t1616 * t1982 + t1675 * t1984), t1982 * t1437 + t1984 * t1423 + qJ(1) * (-t1576 * t1982 + t1649 * t1984), t1982 * t1409 + t1984 * t1404 + qJ(1) * (-t1467 * t1982 + t1515 * t1984), t2190, t2323, t2297, t2261, -t2321, t2262, t1984 * t1388 + t1982 * t1396 + t2286, t1984 * t1393 + t1982 * t1400 + t2330, t1982 * t1380 + t1984 * t1375 + qJ(1) * (-t1447 * t1982 + t1464 * t1984), t1982 * t1370 + t1984 * t1369 + qJ(1) * (-t1399 * t1982 + t1410 * t1984), t2190, t2297, -t2323, t2262, t2321, t2261, t1984 * t1382 + t1982 * t1389 + t2286, t1982 * t1377 + t1984 * t1372 + qJ(1) * (-t1448 * t1982 + t1465 * t1984), t1984 * t1379 + t1982 * t1386 - t2330, t1982 * t1367 + t1984 * t1366 + qJ(1) * (-t1391 * t1982 + t1402 * t1984); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t2098, t1955, 0, 0, 0, 0, t1927, 0, t1928, t1973, t1763, t1762, t1778, t1677, t1822, t1788, t1818, t1821, t1817, t1900, t1593, t1594, t1591, t1504, t1668, t1581, t1618, t1667, t1619, t1686, t1439, t1443, t1422, t1403, t2168, t1450, t2288, t2244, -t1495, t2243, t1387, t1392, t1374, t1368, t2168, t2288, -t1450, t2243, t1495, t2244, t1381, t1371, t1378, t1365; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2156, -t2098, 0, 0, 0, t1950, 0, -t2043, 0, t1834, t1835, t1791, t1672, t1882, t1853, t1880, t1881, t1879, t1918, t1622, t1623, t1673, t1508, t1702, t1655, t1683, t1701, t1684, t1750, t1456, t1458, t1437, t1409, t2173, t1470, t2272, t2215, -t1539, t2216, t1396, t1400, t1380, t1370, t2173, t2272, -t1470, t2216, t1539, t2215, t1389, t1377, t1386, t1367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2156, 0, -t1955, 0, 0, 0, t1929, 0, t1930, -t2109, t1765, t1764, t1779, t1676, t1824, t1789, t1820, t1823, t1819, t1901, t1595, t1596, t1592, t1505, t1670, t1582, t1620, t1669, t1621, t1687, t1440, t1444, t1423, t1404, t2167, t1452, t2287, t2242, -t1499, t2241, t1388, t1393, t1375, t1369, t2167, t2287, -t1452, t2241, t1499, t2242, t1382, t1372, t1379, t1366; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2098, t1955, 0, 0, 0, 0, t1927, 0, t1928, t1973, t1763, t1762, t1778, t1677, t1822, t1788, t1818, t1821, t1817, t1900, t1593, t1594, t1591, t1504, t1668, t1581, t1618, t1667, t1619, t1686, t1439, t1443, t1422, t1403, t2168, t1450, t2288, t2244, -t1495, t2243, t1387, t1392, t1374, t1368, t2168, t2288, -t1450, t2243, t1495, t2244, t1381, t1371, t1378, t1365; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1996, 0, 0, -t2080, t1875, 0, t1917, t1897, t1911, t1916, t1909, t1939, t1811, t1812, t1726, pkin(8) * t1726, t1777, t1729, t1748, t1776, t1749, t1833, t1560, t1561, t1520, t1477, t2085, t1535, t2258, t2192, -t1589, t2191, t1431, t1432, t1408, t1385, t2085, t2258, -t1535, t2191, t1589, t2192, t1417, t1401, t1416, t1376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1996, 0, qJDD(2), 0, t2080, 0, t1876, 0, t1968, -t1953, -t2108, -t1968, -t2107, -qJDD(3), t1769, t1770, 0, pkin(2) * t1726, -t1841, -t1751, -t1826, t1839, -t1827, -t1854, t1611, t1612, t1531, t1512, -t1634, -t1551, -t2238, -t2169, -t1662, -t2172, t1455, t1457, t1414, t1395, -t1634, -t2238, t1551, -t2172, t1662, -t2169, t1426, t1407, t1424, t1384; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1875, -t1876, 0, 0, t1904, t1896, t1907, -t1903, t1905, 0, t1787, t1786, t1697, t1685, t1775, t1728, t1746, t1774, t1747, t1832, t1545, t1547, t1514, t1459, t2086, t1533, t2260, t2194, -t1585, t2195, t1425, t1428, t1405, t1383, t2086, t2260, -t1533, t2195, t1585, t2194, t1415, t1397, t1412, t1373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2039, t1946, t1958, -t2101, t1965, t2101, 0, t1857, t1815, 0, t1842, t1753, t1828, t1840, t1829, t1855, t1696, t1698, t1567, -pkin(9) * t1609, t1637, t1555, t2237, t2170, -t1665, t2171, t1479, t1506, t1418, t1411, t1637, t2237, -t1555, t2171, t1665, t2170, t1438, t1413, t1433, t1394; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1972, t1944, t1963, t1945, t1957, -t1972, -t1857, 0, t1816, 0, -t2124, -t1902, -t1847, t2124, t1843, t1938, t1657, t1671, -pkin(3) * t1752, -pkin(3) * t1609, -t2127, -t2182, -t2179, t2127, t1718, t1933, t1507, t1510, t1513, t1419, -t2127, -t2179, t2182, t1933, -t1718, t2127, t1478, t1476, t1468, t1406; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1968, t1953, t2108, t1968, t2107, qJDD(3), -t1815, -t1816, 0, 0, t1841, t1751, t1826, -t1839, t1827, t1854, t2033, t2032, t2013, t2089, t1634, t1551, t2238, t2169, t1662, t2172, t2005, t2004, t2008, t2003, t1634, t2238, -t1551, t2172, -t1662, t2169, t2006, t2009, t2007, t2010; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1884, t1844, t2014, -t1922, t1919, t1922, 0, t1772, t1689, 0, t1712, t1646, t2221, t2040, t1745, t2083, t1617, t1638, t1461, -pkin(10) * t1502, t1712, t2221, -t1646, t2083, -t1745, t2040, t1511, t1454, t1509, t1434; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1921, t1846, t1920, -t1999, -t1872, t1921, -t1772, 0, t1690, 0, t1711, t1642, t2220, t2084, t1741, t2034, t1566, t1574, t1460, t1475, t1711, t2220, -t1642, t2034, -t1741, t2084, t1501, t1453, t1484, t1427; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2124, t1902, t1847, -t2124, -t1843, -t1938, -t1689, -t1690, 0, 0, t2127, t2182, t2179, -t2127, -t1718, -t1933, t2041, t2090, t2159, t2160, t2127, t2179, -t2182, -t1933, t1718, -t2127, t1998, t2091, t1947 + t2011, t2092; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1761, -t2184, t2181, -t2128, t1863, t2128, 0, t1695, t1563, 0, t1761, t2181, t2184, t2128, -t1863, -t2128, -qJ(6) * t2184, t1519, t1544, -qJ(6) * t1565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1870, t2183, -t1864, -t1760, -t2180, t1870, -t1695, 0, t1564, 0, -t1870, -t1864, -t2183, t1870, t2180, -t1760, t1546, t1518, pkin(5) * t2183, -pkin(5) * t1565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2127, t2182, t2179, -t2127, -t1718, -t1933, -t1563, -t1564, 0, 0, t2127, t2179, -t2182, -t1933, t1718, -t2127, t2000, t2111, t1947 + t2031, t2112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1761, t2181, t2184, t2128, -t1863, -t2128, 0, t1543, -t1565, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2127, t2179, -t2182, -t1933, t1718, -t2127, -t1543, 0, t1541, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1870, t1864, t2183, -t1870, -t2180, t1760, t1565, -t1541, 0, 0;];
m_new_reg  = t1;

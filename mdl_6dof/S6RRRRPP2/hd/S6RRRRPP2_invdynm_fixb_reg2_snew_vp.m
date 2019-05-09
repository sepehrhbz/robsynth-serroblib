% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRRRPP2
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 18:06
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRRRPP2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP2_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP2_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP2_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP2_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 18:05:29
% EndTime: 2019-05-07 18:06:13
% DurationCPUTime: 48.24s
% Computational Cost: add. (140428->895), mult. (284068->1031), div. (0->0), fcn. (202693->8), ass. (0->600)
t1920 = sin(qJ(3));
t1921 = sin(qJ(2));
t1924 = cos(qJ(3));
t1925 = cos(qJ(2));
t1883 = (t1920 * t1925 + t1921 * t1924) * qJD(1);
t1919 = sin(qJ(4));
t1923 = cos(qJ(4));
t2020 = qJD(2) + qJD(3);
t1848 = t1923 * t1883 + t1919 * t2020;
t2067 = qJD(1) * t1925;
t2068 = qJD(1) * t1921;
t1881 = t1920 * t2068 - t1924 * t2067;
t1912 = qJD(2) * t2067;
t2009 = t1921 * qJDD(1);
t1891 = t1912 + t2009;
t2000 = qJD(2) * t2068;
t2008 = t1925 * qJDD(1);
t1965 = t2000 - t2008;
t1808 = -t1881 * qJD(3) + t1924 * t1891 - t1920 * t1965;
t2007 = qJDD(2) + qJDD(3);
t1995 = t1919 * t1808 - t1923 * t2007;
t1876 = qJD(4) + t1881;
t2019 = qJD(4) - t1876;
t1713 = t1848 * t2019 + t1995;
t2086 = t1876 ^ 2;
t1846 = t1919 * t1883 - t1923 * t2020;
t2087 = t1846 ^ 2;
t2103 = t2087 - t2086;
t1800 = t1848 * t1846;
t1994 = t1920 * t1891 + t1924 * t1965;
t1807 = -t1883 * qJD(3) - t1994;
t1804 = qJDD(4) - t1807;
t2114 = t1800 + t1804;
t2133 = t2114 * t1919;
t1673 = -t1923 * t2103 + t2133;
t2190 = t1673 * t1920;
t1586 = t1713 * t1924 - t2190;
t2187 = t1673 * t1924;
t1590 = t1713 * t1920 + t2187;
t1510 = t1586 * t1921 + t1590 * t1925;
t1922 = sin(qJ(1));
t1926 = cos(qJ(1));
t2132 = t2114 * t1923;
t2162 = t1919 * t2103 + t2132;
t2186 = t1926 * t2162;
t2247 = t1510 * t1922 + t2186;
t2189 = t1922 * t2162;
t2246 = t1510 * t1926 - t2189;
t2018 = qJD(4) + t1876;
t1712 = t1848 * t2018 + t1995;
t1954 = t1923 * t1808 + t1919 * t2007;
t1947 = -t1846 * qJD(4) + t1954;
t2031 = t1846 * t1876;
t2106 = -t2031 + t1947;
t2054 = t2106 * t1919;
t1610 = -t1712 * t1923 - t2054;
t1844 = t1848 ^ 2;
t2108 = t1844 - t2087;
t1787 = t1924 * t2108;
t1558 = t1610 * t1920 - t1787;
t2039 = t2108 * t1920;
t1561 = t1610 * t1924 + t2039;
t1476 = t1558 * t1921 - t1561 * t1925;
t2052 = t2106 * t1923;
t1604 = -t1712 * t1919 + t2052;
t2245 = t1476 * t1922 + t1604 * t1926;
t2244 = t1476 * t1926 - t1604 * t1922;
t1506 = t1586 * t1925 - t1590 * t1921;
t1748 = qJD(4) * t1848 + t1995;
t1826 = t1876 * t1848;
t1714 = t1748 + t1826;
t2104 = -t2086 - t2087;
t2115 = -t1800 + t1804;
t2131 = t2115 * t1919;
t2163 = t1923 * t2104 - t2131;
t2168 = t1924 * t2163;
t2207 = t1714 * t1920 + t2168;
t2170 = t1920 * t2163;
t2208 = -t1924 * t1714 + t2170;
t2220 = t1921 * t2207 + t1925 * t2208;
t2243 = pkin(1) * t2220;
t2109 = t1844 + t2086;
t1656 = t2109 * t1919 - t2132;
t2213 = t1656 * t1924;
t2202 = -t2106 * t1920 - t2213;
t2214 = t1656 * t1920;
t2203 = t1924 * t2106 - t2214;
t2222 = t1921 * t2202 + t1925 * t2203;
t2242 = pkin(1) * t2222;
t2241 = pkin(7) * t2220;
t2240 = pkin(7) * t2222;
t2130 = t2115 * t1923;
t2164 = t1919 * t2104 + t2130;
t2182 = pkin(1) * t2164;
t2221 = -t1921 * t2208 + t1925 * t2207;
t2239 = pkin(7) * t2221 - t2182;
t2166 = t2109 * t1923 + t2133;
t2197 = pkin(1) * t2166;
t2223 = -t1921 * t2203 + t1925 * t2202;
t2238 = pkin(7) * t2223 - t2197;
t2110 = t1844 - t2086;
t1666 = t2110 * t1923 - t2131;
t2211 = t1666 * t1926;
t2105 = t2031 + t1947;
t1672 = -t2110 * t1919 - t2130;
t2209 = t1672 * t1924;
t2200 = t1920 * t2105 - t2209;
t2210 = t1672 * t1920;
t2201 = -t1924 * t2105 - t2210;
t2225 = -t1921 * t2201 + t1925 * t2200;
t2237 = t1922 * t2225 + t2211;
t2212 = t1666 * t1922;
t2236 = t1926 * t2225 - t2212;
t2167 = t1926 * t2164;
t2235 = pkin(6) * (t1922 * t2221 - t2167);
t2185 = t1926 * t2166;
t2234 = pkin(6) * (t1922 * t2223 - t2185);
t2169 = t1922 * t2164;
t2233 = pkin(6) * (t1926 * t2221 + t2169);
t2188 = t1922 * t2166;
t2232 = pkin(6) * (t1926 * t2223 + t2188);
t1475 = t1558 * t1925 + t1561 * t1921;
t2231 = pkin(2) * t2203;
t2230 = pkin(2) * t2208;
t2229 = pkin(8) * t2203;
t2228 = pkin(8) * t2208;
t2181 = pkin(2) * t2164;
t2227 = pkin(8) * t2207 - t2181;
t2195 = pkin(2) * t2166;
t2226 = pkin(8) * t2202 - t2195;
t2224 = t1921 * t2200 + t1925 * t2201;
t2173 = t1713 * t1923;
t2092 = t1919 * t2105 - t2173;
t1753 = -t2087 - t1844;
t2171 = t1753 * t1924;
t2158 = t1920 * t2092 - t2171;
t2172 = t1753 * t1920;
t2159 = t1924 * t2092 + t2172;
t2184 = t1921 * t2159 + t1925 * t2158;
t2219 = pkin(1) * t2184;
t2194 = pkin(3) * t2166;
t2218 = pkin(7) * t2184;
t2217 = pkin(9) * t1656;
t2191 = pkin(9) * t2166;
t2178 = pkin(9) * t2163;
t2206 = -pkin(3) * t1714 + t2178;
t2174 = t1713 * t1919;
t2093 = -t1923 * t2105 - t2174;
t2183 = -t1921 * t2158 + t1925 * t2159;
t2205 = -pkin(1) * t2093 + pkin(7) * t2183;
t2204 = pkin(3) * t2106 - t2217;
t2199 = pkin(6) * (t1922 * t2183 - t1926 * t2093);
t2198 = pkin(6) * (t1922 * t2093 + t1926 * t2183);
t2196 = pkin(2) * t2158;
t2179 = pkin(3) * t2164;
t2193 = pkin(8) * t2158;
t2192 = pkin(8) * t2159;
t2177 = pkin(9) * t2164;
t2180 = pkin(3) * t1753;
t2176 = qJ(5) * t1713;
t2175 = qJ(5) * t1753;
t2074 = qJ(5) * t2104;
t2165 = pkin(4) * t2115 + t2074;
t2160 = pkin(9) * t2092 - t2180;
t2028 = t1876 * t1923;
t1935 = t1848 * t2028 + t1919 * t1947;
t1791 = t1924 * t1800;
t2029 = t1876 * t1919;
t1812 = t1848 * t2029;
t2012 = t1923 * t1947 - t1812;
t2095 = t1920 * t2012 - t1791;
t1790 = t1920 * t1800;
t2097 = t1924 * t2012 + t1790;
t2121 = -t1921 * t2095 + t1925 * t2097;
t2128 = t1922 * t2121 - t1926 * t1935;
t2116 = (t1846 * t1919 + t1848 * t1923) * t1876;
t2117 = t1926 * t2116;
t2003 = t1846 * t2028;
t1974 = t1812 - t2003;
t2038 = t1804 * t1920;
t2091 = t1924 * t1974 + t2038;
t1798 = t1924 * t1804;
t2094 = t1920 * t1974 - t1798;
t2124 = -t1921 * t2094 + t1925 * t2091;
t2157 = t1922 * t2124 + t2117;
t1693 = -t1923 * t1748 + t1846 * t2029;
t1966 = t1748 * t1919 + t2003;
t2096 = t1920 * t1966 + t1791;
t2098 = t1924 * t1966 - t1790;
t2119 = -t1921 * t2096 + t1925 * t2098;
t2156 = -t1693 * t1926 + t1922 * t2119;
t2125 = t1935 * t1922 + t1926 * t2121;
t2118 = t1922 * t2116;
t2155 = t1926 * t2124 - t2118;
t2154 = t1693 * t1922 + t1926 * t2119;
t2152 = pkin(3) * t2093;
t2149 = pkin(9) * t2093;
t2075 = qJ(5) * t2106;
t2148 = qJ(5) * t2114;
t1834 = t1883 * t1881;
t2113 = -t1834 + t2007;
t2141 = t1920 * t2113;
t2135 = t1924 * t2113;
t1869 = t2020 * t1881;
t2129 = -t1869 + t1808;
t2123 = t1921 * t2091 + t1925 * t2094;
t2122 = t1921 * t2097 + t1925 * t2095;
t2120 = t1921 * t2098 + t1925 * t2096;
t2006 = t2020 ^ 2;
t1918 = t1925 ^ 2;
t1928 = qJD(1) ^ 2;
t1900 = t1922 * g(1) - t1926 * g(2);
t1968 = qJDD(1) * pkin(1) + t1900;
t1810 = (pkin(8) * t1918 + pkin(7)) * t1928 - pkin(2) * t1965 - (qJD(2) * pkin(2) - pkin(8) * t2068) * t2068 + t1968;
t1996 = t2020 * t1883;
t1633 = -t2129 * pkin(9) + (-t1807 + t1996) * pkin(3) - t1810;
t1901 = g(1) * t1926 + g(2) * t1922;
t1948 = -pkin(1) * t1928 + qJDD(1) * pkin(7) - t1901;
t1861 = -t1921 * g(3) + t1925 * t1948;
t1915 = t1918 * t1928;
t1927 = qJD(2) ^ 2;
t1905 = -t1915 - t1927;
t1797 = pkin(2) * t1905 + pkin(8) * t2008 + t1861;
t1943 = t1921 * t1948;
t2021 = t1921 * t1928;
t2069 = qJD(1) * qJD(2);
t1929 = -t1943 - t1891 * pkin(8) + qJDD(2) * pkin(2) + (pkin(2) * t2021 + pkin(8) * t2069 - g(3)) * t1925;
t1728 = t1924 * t1797 + t1920 * t1929;
t1831 = pkin(3) * t1881 - pkin(9) * t1883;
t1648 = -pkin(3) * t2006 + pkin(9) * t2007 - t1881 * t1831 + t1728;
t1544 = -t1923 * t1633 + t1919 * t1648;
t1545 = t1919 * t1633 + t1923 * t1648;
t1464 = t1919 * t1544 + t1923 * t1545;
t2066 = qJD(5) * t1876;
t1866 = 0.2e1 * t2066;
t2065 = qJD(6) * t1846;
t2112 = 0.2e1 * t2065 + t1866;
t1867 = -0.2e1 * t2066;
t2111 = -0.2e1 * t2065 + t1867;
t1789 = pkin(4) * t1846 - qJ(5) * t1848;
t1973 = pkin(4) * t2086 - t1804 * qJ(5) + t1846 * t1789 - t1545;
t1516 = t1866 - t1973;
t1955 = -t1804 * pkin(4) - qJ(5) * t2086 + qJDD(5) + t1544;
t2030 = t1848 * t1789;
t1519 = t1955 + t2030;
t1442 = t1516 * t1923 + t1519 * t1919;
t1727 = t1920 * t1797 - t1924 * t1929;
t1647 = -t2007 * pkin(3) - t2006 * pkin(9) + t1883 * t1831 + t1727;
t1939 = t1748 * pkin(4) + t1647 - t2075;
t1524 = (pkin(4) * t1876 - 0.2e1 * qJD(5)) * t1848 + t1939;
t1420 = t1442 * t1920 - t1524 * t1924;
t1950 = pkin(9) * t1442 + (-pkin(4) * t1923 - qJ(5) * t1919 - pkin(3)) * t1524;
t2107 = pkin(2) * t1420 + t1950;
t1811 = -pkin(5) * t1876 - qJ(6) * t1848;
t2102 = t1848 * t1811 + qJDD(6);
t1944 = -t1804 * pkin(5) - qJ(6) * t2105 + t1955;
t1997 = -pkin(5) * t1846 - t1789;
t1460 = (-0.2e1 * qJD(6) - t1997) * t1848 + t1944;
t1952 = pkin(5) * t2087 - t1748 * qJ(6) - t1876 * t1811 + t1973;
t1461 = -t1952 + t2112;
t2084 = pkin(4) + pkin(5);
t2101 = qJ(5) * t1461 - t1460 * t2084;
t1722 = t1846 * t2019 - t1954;
t2100 = -t1722 * t2084 + t2176;
t2099 = t2084 * t2109 - t1952 + t2148;
t1723 = t1846 * t2018 - t1954;
t2090 = (t1714 + t1748) * pkin(5) + qJ(6) * (t2104 + t2087);
t1879 = t1881 ^ 2;
t1880 = t1883 ^ 2;
t2085 = 0.2e1 * t1848;
t1614 = -t1727 * t1924 + t1728 * t1920;
t2082 = pkin(2) * t1614;
t1770 = qJD(2) * t1883 - t1994;
t1772 = t1869 + t1808;
t1683 = t1770 * t1920 - t1772 * t1924;
t2081 = pkin(2) * t1683;
t2080 = pkin(3) * t1920;
t2079 = t1748 * pkin(5);
t2076 = qJ(5) * t1714;
t2073 = qJ(6) * t1460;
t2072 = qJ(6) * t1461;
t2071 = qJ(6) * t2115;
t2070 = qJ(6) * t2114;
t2064 = t1614 * t1921;
t2063 = t1614 * t1925;
t2059 = t1714 * t1919;
t2057 = t1714 * t1923;
t2037 = t1810 * t1920;
t2036 = t1810 * t1924;
t1828 = t1834 + t2007;
t2033 = t1828 * t1920;
t2032 = t1828 * t1924;
t1884 = t1928 * pkin(7) + t1968;
t2027 = t1884 * t1921;
t2026 = t1884 * t1925;
t1892 = -0.2e1 * t2000 + t2008;
t1849 = t1892 * t1925;
t1907 = t1925 * t2021;
t1898 = qJDD(2) + t1907;
t2025 = t1898 * t1921;
t1899 = qJDD(2) - t1907;
t2024 = t1899 * t1921;
t2023 = t1899 * t1925;
t1917 = t1921 ^ 2;
t2022 = t1917 * t1928;
t1643 = t1919 * t1647;
t1644 = t1923 * t1647;
t2016 = -pkin(3) * t1647 + pkin(9) * t1464;
t2010 = t1917 + t1918;
t2005 = -pkin(3) * t1924 - pkin(2);
t2002 = t1922 * t1834;
t2001 = t1926 * t1834;
t1999 = pkin(3) * t1723 + t1643 + t2217;
t1998 = -pkin(3) * t1712 - t1644 + t2178;
t1615 = t1727 * t1920 + t1924 * t1728;
t1860 = t1925 * g(3) + t1943;
t1796 = t1860 * t1921 + t1925 * t1861;
t1993 = -t1900 * t1922 - t1926 * t1901;
t1992 = t1922 * t1907;
t1991 = t1926 * t1907;
t1932 = t1524 - t2102;
t1480 = qJ(6) * t2087 + t1932 + t2079;
t1412 = -t1480 * t2084 - t2072;
t1424 = t1460 * t1919 + t1461 * t1923;
t1428 = -qJ(5) * t1480 - t2073;
t1990 = -pkin(3) * t1480 + pkin(9) * t1424 + t1923 * t1412 + t1919 * t1428;
t1941 = -qJ(6) * t1713 + t1952;
t1445 = t1753 * t2084 + t1941 + t2111;
t1940 = qJD(6) * t2085 - t1944;
t1933 = -qJ(6) * t1722 + t1848 * t1997 + t1940;
t1449 = t1933 + t2175;
t1608 = t1722 * t1919 + t2173;
t1989 = pkin(9) * t1608 + t1923 * t1445 + t1919 * t1449 + t2180;
t1938 = qJD(5) * t2085 - t1939;
t1934 = -pkin(4) * t1826 + t1938;
t1930 = (t2109 - t2087) * qJ(6) - t2079 + t1934 + t2102;
t1459 = t1930 + t2075;
t1546 = t2084 * t2106 - t2070;
t1988 = t1919 * t1459 + t1923 * t1546 + t2204;
t1494 = -pkin(4) * t1753 + t1516;
t1496 = t1519 - t2175;
t1987 = t1923 * t1494 + t1919 * t1496 + t2160;
t1986 = t1464 + t2160;
t1500 = (-t1714 - t1826) * pkin(4) + t1938;
t1451 = t1500 - t2090 + t2102;
t1616 = t2071 - t2076;
t1985 = t1923 * t1451 + t1919 * t1616 + t2206;
t1452 = t1464 * t1920 - t1647 * t1924;
t1984 = pkin(2) * t1452 + t2016;
t1859 = -t1880 - t2006;
t1774 = t1859 * t1924 - t2033;
t1983 = pkin(2) * t1774 - t1728;
t1895 = qJDD(1) * t1926 - t1922 * t1928;
t1982 = -pkin(6) * t1895 - g(3) * t1922;
t1981 = t1920 * t1869;
t1980 = t1920 * t1996;
t1979 = t1924 * t1869;
t1978 = t1924 * t1996;
t1977 = -pkin(4) * t1519 + qJ(5) * t1516;
t1976 = -pkin(4) * t2105 - t2176;
t1463 = -t1544 * t1923 + t1545 * t1919;
t1795 = t1860 * t1925 - t1861 * t1921;
t1971 = t1900 * t1926 - t1901 * t1922;
t1564 = -t1712 * t1924 + t2170;
t1970 = pkin(2) * t1564 + t1998;
t1570 = t1723 * t1924 + t2214;
t1969 = pkin(2) * t1570 + t1999;
t1827 = -t2006 - t1879;
t1756 = t1827 * t1920 + t2135;
t1967 = pkin(2) * t1756 - t1727;
t1499 = t1934 + t2075;
t1964 = pkin(4) * t2052 + t1919 * t1499 + t2204;
t1405 = t1424 * t1920 - t1480 * t1924;
t1963 = pkin(2) * t1405 + t1990;
t1549 = t1608 * t1920 + t2171;
t1962 = pkin(2) * t1549 + t1989;
t1961 = t1985 + t2230;
t1960 = t1988 + t2231;
t1959 = t1987 + t2196;
t1958 = t1986 + t2196;
t1957 = -qJ(5) * t2059 + t1923 * t1500 + t2206;
t1951 = t1964 + t2231;
t1949 = t1957 + t2230;
t1946 = pkin(4) * t2109 - t1973 + t2148;
t1937 = -t1519 + t2165;
t1931 = -t2030 + (t2115 - t1800) * pkin(5) + t1940;
t1904 = t1915 - t1927;
t1903 = -t1927 - t2022;
t1902 = t1927 - t2022;
t1897 = -t1915 + t2022;
t1896 = t1915 + t2022;
t1894 = qJDD(1) * t1922 + t1926 * t1928;
t1893 = t2010 * qJDD(1);
t1890 = 0.2e1 * t1912 + t2009;
t1888 = t1925 * t1898;
t1887 = t2010 * t2069;
t1878 = -pkin(6) * t1894 + g(3) * t1926;
t1865 = t2006 - t1880;
t1864 = t1879 - t2006;
t1863 = t1891 * t1925 - t1917 * t2069;
t1862 = -t1918 * t2069 + t1921 * t1965;
t1858 = -t1903 * t1921 - t2023;
t1857 = -t1902 * t1921 + t1888;
t1856 = t1905 * t1925 - t2025;
t1855 = t1904 * t1925 - t2024;
t1854 = t1903 * t1925 - t2024;
t1853 = t1902 * t1925 + t2025;
t1852 = t1905 * t1921 + t1888;
t1851 = t1904 * t1921 + t2023;
t1850 = (t1891 + t1912) * t1921;
t1836 = -t1890 * t1921 + t1849;
t1835 = t1890 * t1925 + t1892 * t1921;
t1833 = t1880 - t1879;
t1816 = -t1979 + t1980;
t1815 = -t1981 - t1978;
t1814 = -pkin(7) * t1854 - t2026;
t1813 = -pkin(7) * t1852 - t2027;
t1809 = -t1879 - t1880;
t1806 = -pkin(1) * t1854 + t1861;
t1805 = -pkin(1) * t1852 + t1860;
t1784 = pkin(1) * t1892 + pkin(7) * t1856 + t2026;
t1783 = -pkin(1) * t1890 + pkin(7) * t1858 - t2027;
t1780 = t1864 * t1924 - t2033;
t1779 = -t1865 * t1920 + t2135;
t1778 = t1864 * t1920 + t2032;
t1777 = t1865 * t1924 + t2141;
t1775 = -t1859 * t1920 - t2032;
t1768 = (0.2e1 * qJD(3) + qJD(2)) * t1883 + t1994;
t1764 = pkin(1) * t1884 + pkin(7) * t1796;
t1762 = t1924 * t1808 - t1980;
t1761 = t1920 * t1808 + t1978;
t1760 = -t1920 * t1807 + t1979;
t1759 = t1924 * t1807 + t1981;
t1758 = pkin(1) * t1896 + pkin(7) * t1893 + t1796;
t1757 = t1827 * t1924 - t2141;
t1740 = (-t1846 * t1923 + t1848 * t1919) * t1876;
t1735 = -t1815 * t1921 + t1816 * t1925;
t1734 = t1815 * t1925 + t1816 * t1921;
t1725 = -pkin(8) * t1774 - t2036;
t1716 = -t1748 + t1826;
t1711 = -pkin(8) * t1756 - t2037;
t1706 = -t1778 * t1921 + t1780 * t1925;
t1705 = -t1777 * t1921 + t1779 * t1925;
t1704 = t1778 * t1925 + t1780 * t1921;
t1703 = t1777 * t1925 + t1779 * t1921;
t1687 = -t1774 * t1921 + t1775 * t1925;
t1686 = t1774 * t1925 + t1775 * t1921;
t1685 = t1770 * t1924 + t1772 * t1920;
t1684 = -t1768 * t1924 - t1920 * t2129;
t1682 = -t1768 * t1920 + t1924 * t2129;
t1680 = t1740 * t1924 + t2038;
t1677 = t1740 * t1920 - t1798;
t1663 = -t1761 * t1921 + t1762 * t1925;
t1662 = -t1759 * t1921 + t1760 * t1925;
t1661 = t1761 * t1925 + t1762 * t1921;
t1660 = t1759 * t1925 + t1760 * t1921;
t1659 = -t1756 * t1921 + t1757 * t1925;
t1658 = t1756 * t1925 + t1757 * t1921;
t1632 = -pkin(2) * t2129 + pkin(8) * t1775 - t2037;
t1617 = -pkin(2) * t1768 + pkin(8) * t1757 + t2036;
t1609 = -t1723 * t1919 + t2057;
t1603 = t1723 * t1923 + t2059;
t1602 = -t1722 * t1923 + t2174;
t1597 = pkin(2) * t1810 + pkin(8) * t1615;
t1596 = -t1683 * t1921 + t1685 * t1925;
t1595 = -t1682 * t1921 + t1684 * t1925;
t1594 = t1683 * t1925 + t1685 * t1921;
t1593 = t1682 * t1925 + t1684 * t1921;
t1591 = t1716 * t1920 - t2187;
t1589 = t1722 * t1920 + t2209;
t1585 = -t1716 * t1924 - t2190;
t1583 = -t1722 * t1924 + t2210;
t1579 = -t1677 * t1921 + t1680 * t1925;
t1576 = t1677 * t1925 + t1680 * t1921;
t1573 = -t1723 * t1920 + t2213;
t1567 = t1712 * t1920 + t2168;
t1562 = -pkin(1) * t1686 - t1983;
t1560 = t1609 * t1924 - t2039;
t1557 = t1609 * t1920 + t1787;
t1555 = t1644 + t2191;
t1552 = t1608 * t1924 - t2172;
t1548 = -pkin(1) * t1658 - t1967;
t1547 = t1643 - t2177;
t1540 = -pkin(8) * t1683 - t1614;
t1527 = -pkin(2) * t1809 + pkin(8) * t1685 + t1615;
t1526 = -pkin(1) * t1594 - t2081;
t1525 = -pkin(7) * t1686 - t1632 * t1921 + t1725 * t1925;
t1522 = t1615 * t1925 - t2064;
t1521 = t1615 * t1921 + t2063;
t1520 = -pkin(7) * t1658 - t1617 * t1921 + t1711 * t1925;
t1518 = -pkin(1) * t2129 + pkin(7) * t1687 + t1632 * t1925 + t1725 * t1921;
t1517 = -t1976 - t2152;
t1515 = t1545 + t2194;
t1514 = t1544 - t2179;
t1513 = -pkin(1) * t1768 + pkin(7) * t1659 + t1617 * t1925 + t1711 * t1921;
t1511 = -t1585 * t1921 + t1591 * t1925;
t1509 = -t1583 * t1921 + t1589 * t1925;
t1505 = t1585 * t1925 + t1591 * t1921;
t1503 = t1583 * t1925 + t1589 * t1921;
t1492 = -t1570 * t1921 + t1573 * t1925;
t1489 = t1570 * t1925 + t1573 * t1921;
t1485 = -t1564 * t1921 + t1567 * t1925;
t1482 = t1564 * t1925 + t1567 * t1921;
t1477 = -t1557 * t1921 + t1560 * t1925;
t1474 = t1557 * t1925 + t1560 * t1921;
t1472 = -pkin(3) * t1602 - t2100;
t1469 = -t1549 * t1921 + t1552 * t1925;
t1466 = t1549 * t1925 + t1552 * t1921;
t1465 = -pkin(1) * t1521 - t2082;
t1457 = -t1937 - t2179;
t1456 = t1867 - t1946 - t2194;
t1455 = -qJ(5) * t2057 - t1500 * t1919 - t2177;
t1454 = -pkin(4) * t2054 + t1499 * t1923 - t2191;
t1453 = t1464 * t1924 + t1647 * t1920;
t1447 = -t1463 - t2149;
t1446 = -pkin(7) * t1521 - pkin(8) * t2063 - t1597 * t1921;
t1443 = pkin(1) * t1810 + pkin(7) * t1522 - pkin(8) * t2064 + t1597 * t1925;
t1441 = t1516 * t1919 - t1519 * t1923;
t1439 = -pkin(7) * t1594 - t1527 * t1921 + t1540 * t1925;
t1438 = -t2099 + t2111 - t2194;
t1437 = -pkin(1) * t1809 + pkin(7) * t1596 + t1527 * t1925 + t1540 * t1921;
t1436 = -pkin(8) * t1570 - t1515 * t1920 + t1555 * t1924;
t1435 = -pkin(8) * t1564 - t1514 * t1920 + t1547 * t1924;
t1434 = -t2084 * t2115 + t1460 - t2074 - t2179;
t1433 = pkin(8) * t1573 + t1515 * t1924 + t1555 * t1920 + t2195;
t1432 = t1459 * t1923 - t1546 * t1919 - t2191;
t1431 = -pkin(1) * t1489 - t1969;
t1430 = pkin(8) * t1567 + t1514 * t1924 + t1547 * t1920 - t2181;
t1429 = -t1451 * t1919 + t1616 * t1923 - t2177;
t1427 = -pkin(1) * t1482 - t1970;
t1425 = -t1494 * t1919 + t1496 * t1923 - t2149;
t1423 = -t1460 * t1923 + t1461 * t1919;
t1421 = t1442 * t1924 + t1524 * t1920;
t1419 = t1447 * t1924 + t2080 * t2093 - t2193;
t1418 = -t1452 * t1921 + t1453 * t1925;
t1417 = t1452 * t1925 + t1453 * t1921;
t1416 = t1920 * t1447 + t2005 * t2093 + t2192;
t1415 = -t1949 - t2243;
t1414 = -t1951 - t2242;
t1413 = -pkin(9) * t1441 + (pkin(4) * t1919 - qJ(5) * t1923) * t1524;
t1410 = t1455 * t1924 - t1457 * t1920 - t2228;
t1409 = -pkin(3) * t1441 - t1977;
t1408 = t1454 * t1924 - t1456 * t1920 - t2229;
t1407 = -t1958 - t2219;
t1406 = t1424 * t1924 + t1480 * t1920;
t1404 = t1455 * t1920 + t1457 * t1924 + t2227;
t1403 = -pkin(9) * t1602 - t1445 * t1919 + t1449 * t1923;
t1402 = t1454 * t1920 + t1456 * t1924 + t2226;
t1401 = t1425 * t1924 - t1517 * t1920 - t2193;
t1400 = -pkin(8) * t1452 + (-pkin(9) * t1924 + t2080) * t1463;
t1399 = -t1960 - t2242;
t1398 = -t1961 - t2243;
t1397 = -t1959 - t2219;
t1396 = -pkin(2) * t2093 + t1425 * t1920 + t1517 * t1924 + t2192;
t1395 = t1432 * t1924 - t1438 * t1920 - t2229;
t1394 = t1429 * t1924 - t1434 * t1920 - t2228;
t1393 = t1432 * t1920 + t1438 * t1924 + t2226;
t1392 = -t1420 * t1921 + t1421 * t1925;
t1391 = t1420 * t1925 + t1421 * t1921;
t1390 = t1429 * t1920 + t1434 * t1924 + t2227;
t1389 = pkin(8) * t1453 + (-pkin(9) * t1920 + t2005) * t1463;
t1388 = -pkin(7) * t1489 - t1433 * t1921 + t1436 * t1925;
t1387 = -pkin(7) * t1482 - t1430 * t1921 + t1435 * t1925;
t1386 = -pkin(8) * t1549 + t1403 * t1924 - t1472 * t1920;
t1385 = pkin(7) * t1492 + t1433 * t1925 + t1436 * t1921 + t2197;
t1384 = -pkin(1) * t1466 - t1962;
t1383 = pkin(7) * t1485 + t1430 * t1925 + t1435 * t1921 - t2182;
t1382 = -pkin(2) * t1602 + pkin(8) * t1552 + t1403 * t1920 + t1472 * t1924;
t1381 = -pkin(1) * t1417 - t1984;
t1380 = -pkin(3) * t1423 - t2101;
t1379 = -t1416 * t1921 + t1419 * t1925 - t2218;
t1378 = -t1405 * t1921 + t1406 * t1925;
t1377 = t1405 * t1925 + t1406 * t1921;
t1376 = t1416 * t1925 + t1419 * t1921 + t2205;
t1375 = -t1404 * t1921 + t1410 * t1925 - t2241;
t1374 = -pkin(9) * t1423 - t1412 * t1919 + t1428 * t1923;
t1373 = -t1402 * t1921 + t1408 * t1925 - t2240;
t1372 = t1404 * t1925 + t1410 * t1921 + t2239;
t1371 = t1402 * t1925 + t1408 * t1921 + t2238;
t1370 = -pkin(8) * t1420 - t1409 * t1920 + t1413 * t1924;
t1369 = -t1396 * t1921 + t1401 * t1925 - t2218;
t1368 = t1396 * t1925 + t1401 * t1921 + t2205;
t1367 = -t1393 * t1921 + t1395 * t1925 - t2240;
t1366 = t1393 * t1925 + t1395 * t1921 + t2238;
t1365 = -pkin(2) * t1441 + pkin(8) * t1421 + t1409 * t1924 + t1413 * t1920;
t1364 = -t1390 * t1921 + t1394 * t1925 - t2241;
t1363 = t1390 * t1925 + t1394 * t1921 + t2239;
t1362 = -pkin(1) * t1391 - t2107;
t1361 = -pkin(7) * t1417 - t1389 * t1921 + t1400 * t1925;
t1360 = -pkin(7) * t1466 - t1382 * t1921 + t1386 * t1925;
t1359 = -pkin(1) * t1602 + pkin(7) * t1469 + t1382 * t1925 + t1386 * t1921;
t1358 = -pkin(1) * t1463 + pkin(7) * t1418 + t1389 * t1925 + t1400 * t1921;
t1357 = -pkin(8) * t1405 + t1374 * t1924 - t1380 * t1920;
t1356 = -pkin(1) * t1377 - t1963;
t1355 = -pkin(2) * t1423 + pkin(8) * t1406 + t1374 * t1920 + t1380 * t1924;
t1354 = -pkin(7) * t1391 - t1365 * t1921 + t1370 * t1925;
t1353 = -pkin(1) * t1441 + pkin(7) * t1392 + t1365 * t1925 + t1370 * t1921;
t1352 = -pkin(7) * t1377 - t1355 * t1921 + t1357 * t1925;
t1351 = -pkin(1) * t1423 + pkin(7) * t1378 + t1355 * t1925 + t1357 * t1921;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1895, 0, -t1894, 0, t1982, -t1878, -t1971, -pkin(6) * t1971, t1863 * t1926 - t1992, t1836 * t1926 + t1897 * t1922, t1857 * t1926 + t1922 * t2009, t1862 * t1926 + t1992, t1855 * t1926 + t1922 * t2008, qJDD(2) * t1922 + t1887 * t1926, t1926 * t1813 - t1922 * t1805 - pkin(6) * (t1856 * t1922 + t1892 * t1926), t1926 * t1814 - t1922 * t1806 - pkin(6) * (t1858 * t1922 - t1890 * t1926), t1926 * t1795 - pkin(6) * (t1893 * t1922 + t1896 * t1926), -pkin(6) * (t1796 * t1922 + t1884 * t1926) - (pkin(1) * t1922 - pkin(7) * t1926) * t1795, t1663 * t1926 + t2002, t1595 * t1926 + t1833 * t1922, t1705 * t1926 + t1772 * t1922, t1662 * t1926 - t2002, t1706 * t1926 + t1770 * t1922, t1926 * t1735 + t1922 * t2007, t1926 * t1520 - t1922 * t1548 - pkin(6) * (t1659 * t1922 - t1768 * t1926), t1926 * t1525 - t1922 * t1562 - pkin(6) * (t1687 * t1922 - t1926 * t2129), t1926 * t1439 - t1922 * t1526 - pkin(6) * (t1596 * t1922 - t1809 * t1926), t1926 * t1446 - t1922 * t1465 - pkin(6) * (t1522 * t1922 + t1810 * t1926), t2125, -t2244, t2236, t2154, -t2246, t2155, t1926 * t1387 - t1922 * t1427 - pkin(6) * (t1485 * t1922 - t2167), t1926 * t1388 - t1922 * t1431 - pkin(6) * (t1492 * t1922 + t2185), t1926 * t1379 - t1922 * t1407 - t2199, t1926 * t1361 - t1922 * t1381 - pkin(6) * (t1418 * t1922 - t1463 * t1926), t2125, t2236, t2244, t2155, t2246, t2154, t1926 * t1375 - t1922 * t1415 - t2235, t1926 * t1369 - t1922 * t1397 - t2199, t1926 * t1373 - t1922 * t1414 - t2234, t1926 * t1354 - t1922 * t1362 - pkin(6) * (t1392 * t1922 - t1441 * t1926), t2125, t1477 * t1926 + t1603 * t1922, t1509 * t1926 + t2212, t2154, t1511 * t1926 + t2189, t1579 * t1926 - t2118, t1926 * t1364 - t1922 * t1398 - t2235, t1926 * t1367 - t1922 * t1399 - t2234, t1926 * t1360 - t1922 * t1384 - pkin(6) * (t1469 * t1922 - t1602 * t1926), t1926 * t1352 - t1922 * t1356 - pkin(6) * (t1378 * t1922 - t1423 * t1926); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1894, 0, t1895, 0, t1878, t1982, t1993, pkin(6) * t1993, t1863 * t1922 + t1991, t1836 * t1922 - t1897 * t1926, t1857 * t1922 - t1926 * t2009, t1862 * t1922 - t1991, t1855 * t1922 - t1926 * t2008, -qJDD(2) * t1926 + t1887 * t1922, t1922 * t1813 + t1926 * t1805 + pkin(6) * (t1856 * t1926 - t1892 * t1922), t1922 * t1814 + t1926 * t1806 + pkin(6) * (t1858 * t1926 + t1890 * t1922), t1922 * t1795 + pkin(6) * (t1893 * t1926 - t1896 * t1922), pkin(6) * (t1796 * t1926 - t1884 * t1922) - (-pkin(1) * t1926 - pkin(7) * t1922) * t1795, t1663 * t1922 - t2001, t1595 * t1922 - t1833 * t1926, t1705 * t1922 - t1772 * t1926, t1662 * t1922 + t2001, t1706 * t1922 - t1770 * t1926, t1922 * t1735 - t1926 * t2007, t1922 * t1520 + t1926 * t1548 + pkin(6) * (t1659 * t1926 + t1768 * t1922), t1922 * t1525 + t1926 * t1562 + pkin(6) * (t1687 * t1926 + t1922 * t2129), t1922 * t1439 + t1926 * t1526 + pkin(6) * (t1596 * t1926 + t1809 * t1922), t1922 * t1446 + t1926 * t1465 + pkin(6) * (t1522 * t1926 - t1810 * t1922), t2128, -t2245, t2237, t2156, -t2247, t2157, t1922 * t1387 + t1926 * t1427 + pkin(6) * (t1485 * t1926 + t2169), t1922 * t1388 + t1926 * t1431 + pkin(6) * (t1492 * t1926 - t2188), t1922 * t1379 + t1926 * t1407 + t2198, t1922 * t1361 + t1926 * t1381 + pkin(6) * (t1418 * t1926 + t1463 * t1922), t2128, t2237, t2245, t2157, t2247, t2156, t1922 * t1375 + t1926 * t1415 + t2233, t1922 * t1369 + t1926 * t1397 + t2198, t1922 * t1373 + t1926 * t1414 + t2232, t1922 * t1354 + t1926 * t1362 + pkin(6) * (t1392 * t1926 + t1441 * t1922), t2128, t1477 * t1922 - t1603 * t1926, t1509 * t1922 - t2211, t2156, t1511 * t1922 - t2186, t1579 * t1922 + t2117, t1922 * t1364 + t1926 * t1398 + t2233, t1922 * t1367 + t1926 * t1399 + t2232, t1922 * t1360 + t1926 * t1384 + pkin(6) * (t1469 * t1926 + t1602 * t1922), t1922 * t1352 + t1926 * t1356 + pkin(6) * (t1378 * t1926 + t1423 * t1922); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1900, t1901, 0, 0, t1850, t1835, t1853, t1849, t1851, 0, t1784, t1783, t1758, t1764, t1661, t1593, t1703, t1660, t1704, t1734, t1513, t1518, t1437, t1443, t2122, t1475, t2224, t2120, t1506, t2123, t1383, t1385, t1376, t1358, t2122, t2224, -t1475, t2123, -t1506, t2120, t1372, t1368, t1371, t1353, t2122, t1474, t1503, t2120, t1505, t1576, t1363, t1366, t1359, t1351; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1928, 0, 0, -g(3), -t1900, 0, t1863, t1836, t1857, t1862, t1855, t1887, t1813, t1814, t1795, pkin(7) * t1795, t1663, t1595, t1705, t1662, t1706, t1735, t1520, t1525, t1439, t1446, t2121, -t1476, t2225, t2119, -t1510, t2124, t1387, t1388, t1379, t1361, t2121, t2225, t1476, t2124, t1510, t2119, t1375, t1369, t1373, t1354, t2121, t1477, t1509, t2119, t1511, t1579, t1364, t1367, t1360, t1352; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1928, 0, qJDD(1), 0, g(3), 0, -t1901, 0, t1907, -t1897, -t2009, -t1907, -t2008, -qJDD(2), t1805, t1806, 0, pkin(1) * t1795, -t1834, -t1833, -t1772, t1834, -t1770, -t2007, t1548, t1562, t1526, t1465, -t1935, -t1604, t1666, -t1693, -t2162, t2116, t1427, t1431, t1407, t1381, -t1935, t1666, t1604, t2116, t2162, -t1693, t1415, t1397, t1414, t1362, -t1935, -t1603, -t1666, -t1693, -t2162, t2116, t1398, t1399, t1384, t1356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1900, t1901, 0, 0, t1850, t1835, t1853, t1849, t1851, 0, t1784, t1783, t1758, t1764, t1661, t1593, t1703, t1660, t1704, t1734, t1513, t1518, t1437, t1443, t2122, t1475, t2224, t2120, t1506, t2123, t1383, t1385, t1376, t1358, t2122, t2224, -t1475, t2123, -t1506, t2120, t1372, t1368, t1371, t1353, t2122, t1474, t1503, t2120, t1505, t1576, t1363, t1366, t1359, t1351; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1891, t1892, t1898, -t1912, t1904, t1912, 0, -t1884, t1860, 0, t1762, t1684, t1779, t1760, t1780, t1816, t1711, t1725, t1540, -pkin(8) * t1614, t2097, t1561, t2200, t2098, -t1590, t2091, t1435, t1436, t1419, t1400, t2097, t2200, -t1561, t2091, t1590, t2098, t1410, t1401, t1408, t1370, t2097, t1560, t1589, t2098, t1591, t1680, t1394, t1395, t1386, t1357; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2000, t1890, t1902, -t1965, t1899, -t2000, t1884, 0, t1861, 0, t1761, t1682, t1777, t1759, t1778, t1815, t1617, t1632, t1527, t1597, t2095, t1558, t2201, t2096, t1586, t2094, t1430, t1433, t1416, t1389, t2095, t2201, -t1558, t2094, -t1586, t2096, t1404, t1396, t1402, t1365, t2095, t1557, t1583, t2096, t1585, t1677, t1390, t1393, t1382, t1355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1907, t1897, t2009, t1907, t2008, qJDD(2), -t1860, -t1861, 0, 0, t1834, t1833, t1772, -t1834, t1770, t2007, t1967, t1983, t2081, t2082, t1935, t1604, -t1666, t1693, t2162, -t2116, t1970, t1969, t1958, t1984, t1935, -t1666, -t1604, -t2116, -t2162, t1693, t1949, t1959, t1951, t2107, t1935, t1603, t1666, t1693, t2162, -t2116, t1961, t1960, t1962, t1963; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1808, -t1768, t2113, t1869, t1864, -t1869, 0, -t1810, t1727, 0, t2012, t1610, -t1672, t1966, -t1673, t1974, t1547, t1555, t1447, -pkin(9) * t1463, t2012, -t1672, -t1610, t1974, t1673, t1966, t1455, t1425, t1454, t1413, t2012, t1609, t1672, t1966, -t1673, t1740, t1429, t1432, t1403, t1374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1996, t2129, t1865, t1807, t1828, -t1996, t1810, 0, t1728, 0, -t1800, -t2108, -t2105, t1800, t1713, -t1804, t1514, t1515, -t2152, -pkin(3) * t1463, -t1800, -t2105, t2108, -t1804, -t1713, t1800, t1457, t1517, t1456, t1409, -t1800, t2108, -t1722, t1800, -t1716, -t1804, t1434, t1438, t1472, t1380; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1834, t1833, t1772, -t1834, t1770, t2007, -t1727, -t1728, 0, 0, t1935, t1604, -t1666, t1693, t2162, -t2116, t1998, t1999, t1986, t2016, t1935, -t1666, -t1604, -t2116, -t2162, t1693, t1957, t1987, t1964, t1950, t1935, t1603, t1666, t1693, t2162, -t2116, t1985, t1988, t1989, t1990; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1947, -t1712, t2115, t2031, t2103, -t2031, 0, t1647, t1544, 0, t1947, t2115, t1712, -t2031, -t2103, t2031, -t2076, t1496, t1499, -qJ(5) * t1524, t1947, t1714, -t2115, t2031, t2103, -t2031, t1616, t1459, t1449, t1428; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1826, t2106, -t2110, -t1748, t2114, -t1826, -t1647, 0, t1545, 0, t1826, -t2110, -t2106, -t1826, -t2114, -t1748, t1500, t1494, pkin(4) * t2106, -pkin(4) * t1524, t1826, t1723, t2110, -t1748, t2114, -t1826, t1451, t1546, t1445, t1412; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1800, t2108, t2105, -t1800, -t1713, t1804, -t1544, -t1545, 0, 0, t1800, t2105, -t2108, t1804, t1713, -t1800, t1937, t1976, t1866 + t1946, t1977, t1800, -t2108, t1722, -t1800, t1716, t1804, t1931 + t2165, t2099 + t2112, t2100, t2101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1947, t2115, t1712, -t2031, -t2103, t2031, 0, t1519, -t1524, 0, t1947, t1714, -t2115, t2031, t2103, -t2031, t2071, t1930, t1933, -t2073; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1800, t2105, -t2108, t1804, t1713, -t1800, -t1519, 0, t1516, 0, t1800, -t2108, t1722, -t1800, t1716, t1804, t1931, pkin(5) * t2109 + t1461, -pkin(5) * t1722, -pkin(5) * t1460; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1826, t2110, t2106, t1826, t2114, t1748, t1524, -t1516, 0, 0, -t1826, -t1723, -t2110, t1748, -t2114, t1826, t1932 + t2090, -pkin(5) * t2106 + t2070, -pkin(5) * t1753 - t1941 + t2112, pkin(5) * t1480 + t2072; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1947, t1714, -t2115, t2031, t2103, -t2031, 0, -t1480, -t1460, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1826, -t1723, -t2110, t1748, -t2114, t1826, t1480, 0, t1461, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1800, t2108, -t1722, t1800, -t1716, -t1804, t1460, -t1461, 0, 0;];
m_new_reg  = t1;

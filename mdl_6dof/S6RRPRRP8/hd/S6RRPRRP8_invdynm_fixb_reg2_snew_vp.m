% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRPRRP8
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 18:25
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRPRRP8_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP8_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP8_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP8_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP8_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP8_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 18:24:38
% EndTime: 2019-05-06 18:25:42
% DurationCPUTime: 68.95s
% Computational Cost: add. (391106->969), mult. (856394->1225), div. (0->0), fcn. (633438->10), ass. (0->654)
t1982 = cos(qJ(2));
t2108 = qJD(1) * t1982;
t1962 = -qJD(4) + t2108;
t1954 = -qJD(5) + t1962;
t2118 = t1954 ^ 2;
t1974 = sin(pkin(10));
t1975 = cos(pkin(10));
t1978 = sin(qJ(2));
t2109 = qJD(1) * t1978;
t1930 = -t1975 * qJD(2) + t1974 * t2109;
t1931 = qJD(2) * t1974 + t1975 * t2109;
t1977 = sin(qJ(4));
t1981 = cos(qJ(4));
t1886 = t1930 * t1981 + t1931 * t1977;
t1887 = -t1930 * t1977 + t1931 * t1981;
t1976 = sin(qJ(5));
t1980 = cos(qJ(5));
t1833 = t1980 * t1886 + t1887 * t1976;
t2121 = t1833 ^ 2;
t1812 = t2121 - t2118;
t1965 = qJD(2) * t2109;
t2056 = t1982 * qJDD(1);
t1938 = -t1965 + t2056;
t1932 = -qJDD(4) + t1938;
t1928 = -qJDD(5) + t1932;
t1835 = -t1886 * t1976 + t1887 * t1980;
t2085 = t1835 * t1833;
t2135 = -t2085 + t1928;
t2092 = t2135 * t1980;
t1716 = t1812 * t1976 - t2092;
t2093 = t2135 * t1976;
t1720 = t1812 * t1980 + t2093;
t1627 = t1716 * t1981 + t1720 * t1977;
t1630 = t1716 * t1977 - t1720 * t1981;
t1560 = t1627 * t1974 + t1630 * t1975;
t1966 = qJD(2) * t2108;
t2057 = t1978 * qJDD(1);
t2037 = t1966 + t2057;
t1909 = t1974 * qJDD(2) + t1975 * t2037;
t2003 = -t1975 * qJDD(2) + t1974 * t2037;
t1810 = -t1886 * qJD(4) + t1981 * t1909 - t1977 * t2003;
t2039 = t1977 * t1909 + t1981 * t2003;
t2015 = qJD(4) * t1887 + t2039;
t2040 = t1976 * t1810 + t1980 * t2015;
t2062 = -qJD(5) - t1954;
t2007 = t1835 * t2062 - t2040;
t1528 = t1560 * t1982 - t2007 * t1978;
t1557 = t1627 * t1975 - t1630 * t1974;
t1979 = sin(qJ(1));
t1983 = cos(qJ(1));
t2238 = t1528 * t1979 + t1557 * t1983;
t2237 = t1528 * t1983 - t1557 * t1979;
t1832 = t1835 ^ 2;
t1755 = t2118 + t1832;
t1701 = -t1755 * t1980 + t2093;
t1703 = t1755 * t1976 + t2092;
t1598 = t1701 * t1977 - t1703 * t1981;
t1615 = t1701 * t1981 + t1703 * t1977;
t1538 = t1598 * t1974 - t1615 * t1975;
t2236 = pkin(1) * t1538;
t2235 = pkin(2) * t1538;
t2234 = qJ(3) * t1538;
t1540 = t1598 * t1975 + t1615 * t1974;
t2233 = qJ(3) * t1540;
t2232 = t1538 * t1979;
t2231 = t1538 * t1983;
t2230 = t1540 * t1978;
t2229 = t1540 * t1982;
t1524 = t1560 * t1978 + t2007 * t1982;
t2226 = pkin(3) * t1615;
t2225 = pkin(8) * t1598;
t2224 = pkin(8) * t1615;
t1677 = pkin(4) * t1701;
t2223 = pkin(9) * t1701;
t2222 = pkin(9) * t1703;
t1813 = t1832 - t2118;
t2136 = -t2085 - t1928;
t2091 = t2136 * t1976;
t2167 = -t1980 * t1813 + t2091;
t1743 = t1980 * t2136;
t2168 = t1813 * t1976 + t1743;
t2184 = -t1977 * t2167 + t1981 * t2168;
t2185 = t1977 * t2168 + t1981 * t2167;
t2204 = -t1974 * t2185 + t1975 * t2184;
t2221 = t1978 * t2204;
t2203 = t1974 * t2184 + t1975 * t2185;
t2220 = t1979 * t2203;
t2219 = t1982 * t2204;
t2218 = t1983 * t2203;
t2134 = -t2118 - t2121;
t2149 = t1980 * t2134 - t2091;
t2150 = t1976 * t2134 + t1743;
t2157 = t1977 * t2149 + t1981 * t2150;
t2158 = -t1977 * t2150 + t1981 * t2149;
t2187 = t1974 * t2158 + t1975 * t2157;
t2217 = pkin(1) * t2187;
t1726 = -t2121 - t1832;
t1989 = t1980 * t1810 - t1976 * t2015;
t1724 = -t1833 * qJD(5) + t1989;
t1815 = t1833 * t1954;
t1670 = -t1815 + t1724;
t2128 = t1670 * t1976 + t1980 * t2007;
t2129 = -t1980 * t1670 + t1976 * t2007;
t2143 = t1977 * t2128 + t1981 * t2129;
t2144 = -t1977 * t2129 + t1981 * t2128;
t2159 = -t1974 * t2143 + t1975 * t2144;
t2193 = -t1726 * t1982 + t1978 * t2159;
t2216 = pkin(1) * t2193;
t2215 = pkin(2) * t2187;
t2214 = pkin(7) * t2193;
t2186 = -t1974 * t2157 + t1975 * t2158;
t2213 = qJ(3) * t2186;
t2212 = qJ(3) * t2187;
t2211 = t1978 * t2186;
t2210 = t1979 * t2187;
t2209 = t1982 * t2186;
t2208 = t1983 * t2187;
t2160 = t1974 * t2144 + t1975 * t2143;
t2190 = t1726 * t1978 + t1982 * t2159;
t2207 = -pkin(1) * t2160 + pkin(7) * t2190;
t2206 = pkin(6) * (t1979 * t2190 - t1983 * t2160);
t2205 = pkin(6) * (t1979 * t2160 + t1983 * t2190);
t2201 = pkin(2) * t2160;
t2200 = pkin(3) * t2157;
t2199 = pkin(8) * t2157;
t2198 = pkin(8) * t2158;
t2197 = qJ(3) * t2160;
t2194 = -pkin(2) * t1726 + qJ(3) * t2159;
t2013 = (t1833 * t1976 + t1835 * t1980) * t1954;
t2068 = t1954 * t1976;
t1805 = t1835 * t2068;
t2067 = t1954 * t1980;
t2053 = t1833 * t2067;
t2025 = -t1805 + t2053;
t2125 = -t1977 * t2013 + t1981 * t2025;
t2126 = t1977 * t2025 + t1981 * t2013;
t2145 = t1974 * t2125 + t1975 * t2126;
t2146 = -t1974 * t2126 + t1975 * t2125;
t2162 = -t1928 * t1978 + t1982 * t2146;
t2192 = t1979 * t2162 - t1983 * t2145;
t1723 = qJD(5) * t1835 + t2040;
t2016 = t1723 * t1976 - t2053;
t2026 = -t1980 * t1723 - t1833 * t2068;
t2123 = t1977 * t2016 + t1981 * t2026;
t2124 = -t1977 * t2026 + t1981 * t2016;
t2148 = t1974 * t2124 + t1975 * t2123;
t2055 = t1978 * t2085;
t2147 = -t1974 * t2123 + t1975 * t2124;
t2163 = t1982 * t2147 - t2055;
t2191 = t1979 * t2163 - t1983 * t2148;
t2189 = t1979 * t2145 + t1983 * t2162;
t2188 = t1979 * t2148 + t1983 * t2163;
t2182 = pkin(3) * t2143;
t2181 = pkin(4) * t2150;
t2180 = pkin(8) * t2143;
t2179 = pkin(9) * t2149;
t2178 = pkin(9) * t2150;
t1952 = g(1) * t1983 + g(2) * t1979;
t1984 = qJD(1) ^ 2;
t1925 = -pkin(1) * t1984 + qJDD(1) * pkin(7) - t1952;
t2116 = pkin(2) * t1982;
t2030 = -qJ(3) * t1978 - t2116;
t1936 = t2030 * qJD(1);
t2112 = t1982 * g(3);
t2122 = qJD(2) ^ 2;
t1859 = -qJDD(2) * pkin(2) - qJ(3) * t2122 + (qJD(1) * t1936 + t1925) * t1978 + qJDD(3) + t2112;
t1910 = -pkin(3) * t2108 - pkin(8) * t1931;
t2119 = t1930 ^ 2;
t1788 = t2003 * pkin(3) - t2119 * pkin(8) + t1931 * t1910 + t1859;
t1867 = -pkin(4) * t1962 - pkin(9) * t1887;
t2120 = t1886 ^ 2;
t1683 = t2015 * pkin(4) - t2120 * pkin(9) + t1887 * t1867 + t1788;
t2140 = t1815 + t1724;
t2169 = t1723 * pkin(5) - qJ(6) * t2140 + t1683;
t2166 = -pkin(4) * t1726 + pkin(9) * t2128;
t2165 = t1982 * t1928 + t1978 * t2146;
t2054 = t1982 * t2085;
t2164 = t1978 * t2147 + t2054;
t2161 = -pkin(3) * t1726 + pkin(8) * t2144;
t1586 = pkin(4) * t2129;
t2155 = pkin(9) * t2129;
t1838 = t1887 * t1886;
t2138 = -t1838 - t1932;
t2154 = t1977 * t2138;
t2139 = t1832 - t2121;
t2153 = t1978 * t2139;
t2152 = t1981 * t2138;
t2151 = t1982 * t2139;
t2074 = t1931 * t1930;
t2014 = -t1938 - t2074;
t2142 = t1974 * t2014;
t2141 = t1975 * t2014;
t1874 = t1886 * t1962;
t1781 = -t1874 + t1810;
t2137 = t1874 + t1810;
t2073 = t1931 * t1982;
t1916 = qJD(1) * t2073;
t1879 = -t2003 - t1916;
t1661 = t1724 * t1976 - t1835 * t2067;
t1662 = t1724 * t1980 + t1805;
t1582 = t1661 * t1981 + t1662 * t1977;
t1585 = -t1661 * t1977 + t1662 * t1981;
t1518 = t1582 * t1975 + t1585 * t1974;
t1521 = -t1582 * t1974 + t1585 * t1975;
t2027 = t1982 * t1521 + t2055;
t2130 = -t1983 * t1518 + t1979 * t2027;
t2127 = t1518 * t1979 + t1983 * t2027;
t1885 = t1887 ^ 2;
t1929 = t1931 ^ 2;
t1960 = t1962 ^ 2;
t2117 = pkin(2) * t1978;
t1951 = t1979 * g(1) - t1983 * g(2);
t1924 = qJDD(1) * pkin(1) + t1984 * pkin(7) + t1951;
t2008 = t2037 + t1966;
t1851 = -t2008 * qJ(3) + (-t1938 + t1965) * pkin(2) - t1924;
t1905 = -g(3) * t1978 + t1982 * t1925;
t1860 = -pkin(2) * t2122 + qJDD(2) * qJ(3) + t1936 * t2108 + t1905;
t1784 = 0.2e1 * qJD(3) * t1931 - t1975 * t1851 + t1974 * t1860;
t2048 = t1930 * t2108;
t2029 = -t1909 + t2048;
t1730 = pkin(3) * t2014 + pkin(8) * t2029 - t1784;
t1785 = -0.2e1 * qJD(3) * t1930 + t1974 * t1851 + t1975 * t1860;
t1736 = -pkin(3) * t2119 - pkin(8) * t2003 + t1910 * t2108 + t1785;
t1645 = -t1981 * t1730 + t1977 * t1736;
t1646 = t1977 * t1730 + t1981 * t1736;
t1569 = -t1645 * t1981 + t1646 * t1977;
t2115 = pkin(3) * t1569;
t2006 = (-qJD(4) - t1962) * t1887 - t2039;
t1707 = -t1781 * t1981 + t1977 * t2006;
t2114 = pkin(3) * t1707;
t2113 = pkin(5) * t1980;
t2111 = qJ(6) * t1980;
t2110 = qJD(1) * qJD(2);
t2107 = qJD(6) * t1954;
t1607 = pkin(4) * t2138 - pkin(9) * t1781 - t1645;
t1612 = -pkin(4) * t2120 - pkin(9) * t2015 + t1962 * t1867 + t1646;
t1543 = -t1980 * t1607 + t1612 * t1976;
t1544 = t1976 * t1607 + t1980 * t1612;
t1475 = -t1543 * t1980 + t1544 * t1976;
t2106 = t1475 * t1977;
t2105 = t1475 * t1981;
t2103 = t1569 * t1974;
t2102 = t1569 * t1975;
t2061 = qJD(5) - t1954;
t1666 = t1835 * t2061 + t2040;
t2101 = t1666 * t1976;
t2100 = t1666 * t1980;
t1673 = t1833 * t2061 - t1989;
t2098 = t1673 * t1976;
t2095 = t1683 * t1976;
t2094 = t1683 * t1980;
t2090 = t1788 * t1977;
t2089 = t1788 * t1981;
t1818 = -t1838 + t1932;
t2087 = t1818 * t1977;
t2086 = t1818 * t1981;
t2084 = t1835 * t1954;
t2083 = t1859 * t1974;
t2082 = t1859 * t1975;
t1880 = t1938 - t2074;
t2081 = t1880 * t1974;
t2080 = t1880 * t1975;
t2078 = t1924 * t1978;
t2077 = t1924 * t1982;
t2072 = t1938 * t1978;
t1961 = t1982 * t1984 * t1978;
t1949 = -t1961 + qJDD(2);
t2071 = t1949 * t1978;
t2070 = t1949 * t1982;
t1950 = qJDD(2) + t1961;
t2069 = t1950 * t1978;
t2066 = t1962 * t1887;
t2065 = t1962 * t1977;
t2064 = t1962 * t1981;
t1971 = t1978 ^ 2;
t2063 = t1971 * t1984;
t1940 = -0.2e1 * t2107;
t1756 = pkin(5) * t1833 - qJ(6) * t1835;
t2023 = -pkin(5) * t2118 - t1928 * qJ(6) - t1833 * t1756 + t1544;
t1504 = t1940 + t2023;
t1506 = t1928 * pkin(5) - qJ(6) * t2118 + t1756 * t1835 + qJDD(6) + t1543;
t2060 = -pkin(5) * t1506 + qJ(6) * t1504;
t2059 = -pkin(5) * t1670 + qJ(6) * t2007;
t1972 = t1982 ^ 2;
t2058 = t1971 + t1972;
t2052 = t1978 * t1838;
t2051 = t1982 * t1838;
t2050 = t1978 * t2074;
t2049 = t1930 * t2073;
t1451 = t1504 * t1976 - t1506 * t1980;
t2047 = pkin(4) * t1451 + t2060;
t2046 = -t1544 + t1677;
t2045 = t2059 + t1586;
t2044 = -qJ(6) * t1976 - pkin(4);
t1476 = t1543 * t1976 + t1980 * t1544;
t1431 = t1476 * t1977 + t2105;
t1474 = pkin(4) * t1475;
t2043 = pkin(3) * t1431 + t1474;
t2042 = t1586 + t2182;
t1570 = t1645 * t1977 + t1981 * t1646;
t1711 = t1784 * t1974 + t1975 * t1785;
t1904 = t1978 * t1925 + t2112;
t1854 = t1904 * t1978 + t1982 * t1905;
t2038 = -t1951 * t1979 - t1983 * t1952;
t2036 = t1974 * t2048;
t2035 = t1979 * t1961;
t2034 = t1983 * t1961;
t1856 = -t1885 - t1960;
t1762 = t1856 * t1981 + t2087;
t2033 = pkin(3) * t1762 - t1646;
t1944 = qJDD(1) * t1983 - t1979 * t1984;
t2032 = -pkin(6) * t1944 - g(3) * t1979;
t2031 = -pkin(2) * t1859 + qJ(3) * t1711;
t2028 = t1978 * t1521 - t2054;
t2024 = -t1543 + t2181;
t1710 = -t1784 * t1975 + t1785 * t1974;
t1853 = t1904 * t1982 - t1905 * t1978;
t2022 = t1951 * t1983 - t1952 * t1979;
t1452 = t1504 * t1980 + t1506 * t1976;
t1421 = t1451 * t1981 + t1452 * t1977;
t2021 = pkin(3) * t1421 + t2047;
t2020 = t2045 + t2182;
t2019 = t2046 + t2226;
t1829 = -t1960 - t2120;
t1751 = t1829 * t1977 + t2152;
t2017 = pkin(3) * t1751 - t1645;
t2012 = t2024 + t2200;
t2011 = pkin(5) * t1755 - qJ(6) * t2135 + t2023;
t1968 = t1972 * t1984;
t1888 = -t1968 - t2119;
t1826 = t1888 * t1975 - t2142;
t1878 = t1916 - t2003;
t2010 = pkin(2) * t1878 + qJ(3) * t1826 - t2082;
t1914 = -t1929 - t1968;
t1842 = -t1914 * t1974 + t2080;
t1876 = -t1909 - t2048;
t2009 = pkin(2) * t1876 + qJ(3) * t1842 + t2083;
t2005 = t1940 + t2011;
t1809 = t1879 * t1975 - t1974 * t2029;
t1872 = t1929 + t2119;
t2004 = pkin(2) * t1872 + qJ(3) * t1809 + t1711;
t1551 = (-pkin(5) * t1954 - 0.2e1 * qJD(6)) * t1835 + t2169;
t1420 = pkin(9) * t1452 + (t2044 - t2113) * t1551;
t1422 = -t1451 * t1977 + t1452 * t1981;
t1429 = -pkin(9) * t1451 + (pkin(5) * t1976 - t2111) * t1551;
t1387 = -pkin(3) * t1551 + pkin(8) * t1422 + t1420 * t1981 + t1429 * t1977;
t1390 = -pkin(8) * t1421 - t1420 * t1977 + t1429 * t1981;
t1400 = -t1421 * t1974 + t1422 * t1975;
t2002 = -pkin(2) * t1551 + qJ(3) * t1400 + t1387 * t1975 + t1390 * t1974;
t1432 = t1476 * t1981 - t2106;
t1467 = -pkin(4) * t1683 + pkin(9) * t1476;
t1404 = -pkin(3) * t1683 + pkin(8) * t1432 - pkin(9) * t2106 + t1467 * t1981;
t1409 = -pkin(8) * t1431 - pkin(9) * t2105 - t1467 * t1977;
t1412 = -t1431 * t1974 + t1432 * t1975;
t2001 = -pkin(2) * t1683 + qJ(3) * t1412 + t1404 * t1975 + t1409 * t1974;
t1489 = -pkin(5) * t1726 + t1504;
t1490 = -qJ(6) * t1726 + t1506;
t1435 = t1489 * t1980 + t1490 * t1976 + t2166;
t1438 = -t1489 * t1976 + t1490 * t1980 - t2155;
t1406 = t1435 * t1981 + t1438 * t1977 + t2161;
t1410 = -t1435 * t1977 + t1438 * t1981 - t2180;
t2000 = t1406 * t1975 + t1410 * t1974 + t2194;
t1443 = t1476 + t2166;
t1444 = -t1475 - t2155;
t1415 = t1443 * t1981 + t1444 * t1977 + t2161;
t1416 = -t1443 * t1977 + t1444 * t1981 - t2180;
t1999 = t1415 * t1975 + t1416 * t1974 + t2194;
t1985 = 0.2e1 * qJD(6) * t1835 - t2169;
t1511 = pkin(5) * t2084 - qJ(6) * t1673 + t1985;
t1472 = -t2222 + t1976 * t1511 + (-pkin(4) - t2113) * t1673;
t1480 = pkin(5) * t2098 + t1511 * t1980 + t2223;
t1424 = -pkin(3) * t1673 + t1472 * t1981 + t1480 * t1977 + t2225;
t1428 = -t1472 * t1977 + t1480 * t1981 + t2224;
t1998 = -pkin(2) * t1673 + t1424 * t1975 + t1428 * t1974 + t2233;
t1667 = t1723 - t2084;
t1512 = (-t1667 + t2084) * pkin(5) + t1985;
t1477 = t1980 * t1512 + t1667 * t2044 + t2179;
t1482 = -t1512 * t1976 - t1667 * t2111 - t2178;
t1426 = -pkin(3) * t1667 + t1477 * t1981 + t1482 * t1977 + t2198;
t1430 = -t1477 * t1977 + t1482 * t1981 - t2199;
t1997 = -pkin(2) * t1667 + t1426 * t1975 + t1430 * t1974 + t2213;
t1562 = -pkin(4) * t1666 - t2094 + t2179;
t1601 = t2095 - t2178;
t1468 = -pkin(3) * t1666 + t1562 * t1981 + t1601 * t1977 + t2198;
t1478 = -t1562 * t1977 + t1601 * t1981 - t2199;
t1996 = -pkin(2) * t1666 + t1468 * t1975 + t1478 * t1974 + t2213;
t1565 = -pkin(4) * t2140 + t2095 + t2222;
t1610 = t2094 - t2223;
t1473 = -pkin(3) * t2140 + t1565 * t1981 + t1610 * t1977 - t2225;
t1481 = -t1565 * t1977 + t1610 * t1981 - t2224;
t1995 = -pkin(2) * t2140 + t1473 * t1975 + t1481 * t1974 - t2233;
t1709 = t1781 * t1977 + t1981 * t2006;
t1796 = -t1885 - t2120;
t1545 = -pkin(3) * t1796 + pkin(8) * t1709 + t1570;
t1552 = -pkin(8) * t1707 - t1569;
t1622 = -t1707 * t1974 + t1709 * t1975;
t1994 = -pkin(2) * t1796 + qJ(3) * t1622 + t1545 * t1975 + t1552 * t1974;
t1752 = t1829 * t1981 - t2154;
t1776 = (qJD(4) - t1962) * t1887 + t2039;
t1637 = -pkin(3) * t1776 + pkin(8) * t1752 - t2089;
t1676 = -t1751 * t1974 + t1752 * t1975;
t1687 = -pkin(8) * t1751 + t2090;
t1993 = -pkin(2) * t1776 + qJ(3) * t1676 + t1637 * t1975 + t1687 * t1974;
t1763 = -t1856 * t1977 + t2086;
t1647 = -pkin(3) * t2137 + pkin(8) * t1763 + t2090;
t1689 = -t1762 * t1974 + t1763 * t1975;
t1705 = -pkin(8) * t1762 + t2089;
t1992 = -pkin(2) * t2137 + qJ(3) * t1689 + t1647 * t1975 + t1705 * t1974;
t1493 = t1570 * t1975 - t2103;
t1564 = -pkin(3) * t1788 + pkin(8) * t1570;
t1991 = -pkin(2) * t1788 - pkin(8) * t2103 + qJ(3) * t1493 + t1564 * t1975;
t1990 = -t1677 + t2011 - t2226;
t1988 = pkin(5) * t2136 + qJ(6) * t2134 - t1506;
t1987 = t1988 + t2181;
t1986 = t1987 + t2200;
t1959 = -t1968 - t2122;
t1958 = t1968 - t2122;
t1957 = -t2063 - t2122;
t1956 = -t2063 + t2122;
t1946 = -t1968 + t2063;
t1945 = t1968 + t2063;
t1943 = qJDD(1) * t1979 + t1983 * t1984;
t1942 = t2058 * qJDD(1);
t1939 = -0.2e1 * t1965 + t2056;
t1937 = 0.2e1 * t1966 + t2057;
t1934 = t1982 * t1950;
t1933 = t2058 * t2110;
t1926 = t1982 * t1938;
t1919 = -pkin(6) * t1943 + g(3) * t1983;
t1913 = -t1929 + t1968;
t1912 = -t1968 + t2119;
t1911 = t1975 * t1916;
t1908 = -t1971 * t2110 + t1982 * t2037;
t1907 = -t1972 * t2110 - t2072;
t1903 = -t1957 * t1978 - t2070;
t1902 = -t1956 * t1978 + t1934;
t1901 = t1959 * t1982 - t2069;
t1900 = t1958 * t1982 - t2071;
t1899 = t1957 * t1982 - t2071;
t1898 = t1956 * t1982 + t2069;
t1897 = t1959 * t1978 + t1934;
t1896 = t1958 * t1978 + t2070;
t1895 = t2008 * t1978;
t1894 = -t1966 * t1978 + t1926;
t1891 = t1929 - t2119;
t1890 = -t1937 * t1978 + t1939 * t1982;
t1889 = t1937 * t1982 + t1939 * t1978;
t1871 = (t1930 * t1975 - t1931 * t1974) * t2108;
t1870 = -t1911 - t2036;
t1869 = -t1885 + t1960;
t1868 = -t1960 + t2120;
t1866 = -pkin(7) * t1899 - t2077;
t1865 = -pkin(7) * t1897 - t2078;
t1864 = t1909 * t1975 + t1916 * t1974;
t1863 = t1909 * t1974 - t1911;
t1862 = t1974 * t2003 - t1975 * t2048;
t1861 = -t1975 * t2003 - t2036;
t1858 = -pkin(1) * t1899 + t1905;
t1857 = -pkin(1) * t1897 + t1904;
t1850 = pkin(1) * t1939 + pkin(7) * t1901 + t2077;
t1849 = -pkin(1) * t1937 + pkin(7) * t1903 - t2078;
t1846 = t1871 * t1982 - t2072;
t1845 = t1871 * t1978 + t1926;
t1844 = t1912 * t1975 + t2081;
t1843 = -t1913 * t1974 + t2141;
t1841 = t1912 * t1974 - t2080;
t1840 = t1913 * t1975 + t2142;
t1839 = t1914 * t1975 + t2081;
t1837 = t1885 - t2120;
t1836 = pkin(1) * t1924 + pkin(7) * t1854;
t1828 = pkin(1) * t1945 + pkin(7) * t1942 + t1854;
t1825 = t1888 * t1974 + t2141;
t1824 = t1864 * t1982 + t2050;
t1823 = t1862 * t1982 - t2050;
t1822 = t1864 * t1978 - t2049;
t1821 = t1862 * t1978 + t2049;
t1808 = t1876 * t1974 + t1878 * t1975;
t1807 = t1879 * t1974 + t1975 * t2029;
t1806 = -t1876 * t1975 + t1878 * t1974;
t1802 = (t1886 * t1981 - t1887 * t1977) * t1962;
t1801 = (t1886 * t1977 + t1887 * t1981) * t1962;
t1795 = t1844 * t1982 + t1879 * t1978;
t1794 = t1843 * t1982 - t1978 * t2029;
t1793 = t1842 * t1982 - t1876 * t1978;
t1792 = t1844 * t1978 - t1879 * t1982;
t1791 = t1843 * t1978 + t1982 * t2029;
t1790 = t1842 * t1978 + t1876 * t1982;
t1789 = -qJ(3) * t1839 + t2082;
t1787 = t1808 * t1982 + t1891 * t1978;
t1786 = t1808 * t1978 - t1891 * t1982;
t1783 = t1826 * t1982 - t1878 * t1978;
t1782 = t1826 * t1978 + t1878 * t1982;
t1774 = t1868 * t1981 + t2087;
t1773 = -t1869 * t1977 + t2152;
t1772 = t1868 * t1977 - t2086;
t1771 = t1869 * t1981 + t2154;
t1770 = t1810 * t1981 + t1887 * t2065;
t1769 = t1810 * t1977 - t1887 * t2064;
t1768 = -t1886 * t2064 + t1977 * t2015;
t1767 = -t1886 * t2065 - t1981 * t2015;
t1766 = -qJ(3) * t1825 + t2083;
t1765 = t1809 * t1982 - t1872 * t1978;
t1764 = t1809 * t1978 + t1872 * t1982;
t1738 = -t1801 * t1974 + t1802 * t1975;
t1737 = t1801 * t1975 + t1802 * t1974;
t1734 = -pkin(2) * t1839 + t1785;
t1733 = t1738 * t1982 - t1932 * t1978;
t1732 = t1738 * t1978 + t1932 * t1982;
t1731 = -pkin(2) * t1825 + t1784;
t1708 = -t1776 * t1981 - t1977 * t2137;
t1706 = -t1776 * t1977 + t1981 * t2137;
t1698 = -t1772 * t1974 + t1774 * t1975;
t1697 = -t1771 * t1974 + t1773 * t1975;
t1696 = t1772 * t1975 + t1774 * t1974;
t1695 = t1771 * t1975 + t1773 * t1974;
t1694 = -t1769 * t1974 + t1770 * t1975;
t1693 = -t1767 * t1974 + t1768 * t1975;
t1692 = t1769 * t1975 + t1770 * t1974;
t1691 = t1767 * t1975 + t1768 * t1974;
t1690 = -pkin(1) * t1790 - t2009;
t1688 = t1762 * t1975 + t1763 * t1974;
t1686 = -pkin(1) * t1782 - t2010;
t1685 = t1711 * t1982 + t1859 * t1978;
t1684 = t1711 * t1978 - t1859 * t1982;
t1675 = t1751 * t1975 + t1752 * t1974;
t1671 = t1833 * t2062 + t1989;
t1656 = -qJ(3) * t1807 - t1710;
t1655 = t1694 * t1982 + t2052;
t1654 = t1693 * t1982 - t2052;
t1653 = t1694 * t1978 - t2051;
t1652 = t1693 * t1978 + t2051;
t1644 = t1698 * t1982 + t1978 * t2006;
t1643 = t1697 * t1982 + t1781 * t1978;
t1642 = t1698 * t1978 - t1982 * t2006;
t1641 = t1697 * t1978 - t1781 * t1982;
t1639 = t1689 * t1982 + t1978 * t2137;
t1638 = t1689 * t1978 - t1982 * t2137;
t1636 = -pkin(7) * t1790 - t1734 * t1978 + t1789 * t1982;
t1635 = t1676 * t1982 + t1776 * t1978;
t1634 = t1676 * t1978 - t1776 * t1982;
t1633 = -pkin(7) * t1782 - t1731 * t1978 + t1766 * t1982;
t1632 = -pkin(1) * t1839 + pkin(7) * t1793 + t1734 * t1982 + t1789 * t1978;
t1623 = -pkin(1) * t1764 - t2004;
t1621 = -t1706 * t1974 + t1708 * t1975;
t1620 = t1707 * t1975 + t1709 * t1974;
t1619 = t1706 * t1975 + t1708 * t1974;
t1614 = -pkin(1) * t1825 + pkin(7) * t1783 + t1731 * t1982 + t1766 * t1978;
t1613 = -pkin(7) * t1764 + t1656 * t1982 + t1807 * t2117;
t1609 = t1621 * t1982 + t1837 * t1978;
t1608 = t1621 * t1978 - t1837 * t1982;
t1604 = -pkin(1) * t1684 - t2031;
t1603 = t1622 * t1982 + t1796 * t1978;
t1602 = t1622 * t1978 - t1796 * t1982;
t1600 = pkin(7) * t1765 + t1978 * t1656 + (-pkin(1) - t2116) * t1807;
t1593 = -t1976 * t2140 - t2100;
t1592 = -t2098 + t2100;
t1589 = t1980 * t2140 - t2101;
t1588 = t1673 * t1980 + t2101;
t1571 = -pkin(2) * t1620 - t2114;
t1568 = -pkin(2) * t1688 - t2033;
t1567 = -pkin(7) * t1684 + (-qJ(3) * t1982 + t2117) * t1710;
t1566 = -pkin(2) * t1675 - t2017;
t1563 = -qJ(3) * t1688 - t1647 * t1974 + t1705 * t1975;
t1553 = -qJ(3) * t1675 - t1637 * t1974 + t1687 * t1975;
t1546 = pkin(7) * t1685 + (-pkin(1) + t2030) * t1710;
t1535 = -t1589 * t1977 + t1593 * t1981;
t1534 = -t1588 * t1977 + t1592 * t1981;
t1531 = t1589 * t1981 + t1593 * t1977;
t1530 = t1588 * t1981 + t1592 * t1977;
t1527 = t1671 * t1978 + t2219;
t1526 = t1670 * t1978 + t2219;
t1523 = -t1671 * t1982 + t2221;
t1522 = -t1670 * t1982 + t2221;
t1510 = t1667 * t1978 + t2209;
t1509 = t1978 * t2140 - t2229;
t1508 = -t1667 * t1982 + t2211;
t1507 = -t1982 * t2140 - t2230;
t1502 = -pkin(1) * t1638 - t1992;
t1492 = t1570 * t1974 + t2102;
t1491 = -pkin(1) * t1634 - t1993;
t1488 = t1666 * t1978 + t2209;
t1487 = t1673 * t1978 + t2229;
t1486 = -t1666 * t1982 + t2211;
t1485 = -t1673 * t1982 + t2230;
t1484 = t1493 * t1982 + t1788 * t1978;
t1483 = t1493 * t1978 - t1788 * t1982;
t1479 = -pkin(7) * t1638 + t1563 * t1982 - t1568 * t1978;
t1471 = -pkin(7) * t1634 + t1553 * t1982 - t1566 * t1978;
t1470 = -pkin(2) * t1492 - t2115;
t1469 = -pkin(1) * t1688 + pkin(7) * t1639 + t1563 * t1978 + t1568 * t1982;
t1464 = -t1531 * t1974 + t1535 * t1975;
t1463 = -t1530 * t1974 + t1534 * t1975;
t1460 = t1531 * t1975 + t1535 * t1974;
t1459 = t1530 * t1975 + t1534 * t1974;
t1458 = -pkin(1) * t1675 + pkin(7) * t1635 + t1553 * t1978 + t1566 * t1982;
t1457 = -qJ(3) * t1620 - t1545 * t1974 + t1552 * t1975;
t1456 = t1464 * t1982 + t2153;
t1455 = t1463 * t1982 - t2153;
t1454 = t1464 * t1978 - t2151;
t1453 = t1463 * t1978 + t2151;
t1445 = -t2019 + t2235;
t1442 = -pkin(8) * t2102 - qJ(3) * t1492 - t1564 * t1974;
t1441 = -pkin(1) * t1602 - t1994;
t1440 = -t2012 - t2215;
t1439 = -t1986 - t2215;
t1437 = -t1990 + 0.2e1 * t2107 - t2235;
t1436 = -pkin(7) * t1602 + t1457 * t1982 - t1571 * t1978;
t1434 = -pkin(1) * t1620 + pkin(7) * t1603 + t1457 * t1978 + t1571 * t1982;
t1433 = -t2042 - t2201;
t1427 = -pkin(1) * t1483 - t1991;
t1425 = -t2020 - t2201;
t1423 = -t1473 * t1974 + t1481 * t1975 + t2234;
t1419 = -t1468 * t1974 + t1478 * t1975 - t2212;
t1418 = -pkin(1) * t1507 - t1995;
t1417 = -pkin(7) * t1483 + t1442 * t1982 - t1470 * t1978;
t1414 = -pkin(1) * t1486 - t1996;
t1413 = -pkin(1) * t1492 + pkin(7) * t1484 + t1442 * t1978 + t1470 * t1982;
t1411 = t1431 * t1975 + t1432 * t1974;
t1408 = t1412 * t1982 + t1683 * t1978;
t1407 = t1412 * t1978 - t1683 * t1982;
t1405 = -pkin(7) * t1507 + t1423 * t1982 - t1445 * t1978;
t1403 = pkin(7) * t1509 + t1423 * t1978 + t1445 * t1982 + t2236;
t1402 = -t1426 * t1974 + t1430 * t1975 - t2212;
t1401 = -pkin(7) * t1486 + t1419 * t1982 - t1440 * t1978;
t1399 = t1421 * t1975 + t1422 * t1974;
t1398 = -t1424 * t1974 + t1428 * t1975 - t2234;
t1397 = t1400 * t1982 + t1551 * t1978;
t1396 = t1400 * t1978 - t1551 * t1982;
t1395 = pkin(7) * t1488 + t1419 * t1978 + t1440 * t1982 - t2217;
t1394 = -pkin(1) * t1508 - t1997;
t1393 = -pkin(1) * t1485 - t1998;
t1392 = -pkin(7) * t1508 + t1402 * t1982 - t1439 * t1978;
t1391 = -pkin(2) * t1411 - t2043;
t1389 = pkin(7) * t1510 + t1402 * t1978 + t1439 * t1982 - t2217;
t1388 = -pkin(7) * t1485 + t1398 * t1982 - t1437 * t1978;
t1386 = -t1415 * t1974 + t1416 * t1975 - t2197;
t1385 = pkin(7) * t1487 + t1398 * t1978 + t1437 * t1982 - t2236;
t1384 = -t1999 - t2216;
t1383 = -t1406 * t1974 + t1410 * t1975 - t2197;
t1382 = -pkin(2) * t1399 - t2021;
t1381 = -t2000 - t2216;
t1380 = t1386 * t1982 - t1433 * t1978 - t2214;
t1379 = t1386 * t1978 + t1433 * t1982 + t2207;
t1378 = -qJ(3) * t1411 - t1404 * t1974 + t1409 * t1975;
t1377 = t1383 * t1982 - t1425 * t1978 - t2214;
t1376 = t1383 * t1978 + t1425 * t1982 + t2207;
t1375 = -pkin(1) * t1407 - t2001;
t1374 = -qJ(3) * t1399 - t1387 * t1974 + t1390 * t1975;
t1373 = -pkin(7) * t1407 + t1378 * t1982 - t1391 * t1978;
t1372 = -pkin(1) * t1396 - t2002;
t1371 = -pkin(1) * t1411 + pkin(7) * t1408 + t1378 * t1978 + t1391 * t1982;
t1370 = -pkin(7) * t1396 + t1374 * t1982 - t1382 * t1978;
t1369 = -pkin(1) * t1399 + pkin(7) * t1397 + t1374 * t1978 + t1382 * t1982;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1944, 0, -t1943, 0, t2032, -t1919, -t2022, -pkin(6) * t2022, t1908 * t1983 - t2035, t1890 * t1983 + t1946 * t1979, t1902 * t1983 + t1979 * t2057, t1907 * t1983 + t2035, t1900 * t1983 + t1979 * t2056, qJDD(2) * t1979 + t1933 * t1983, t1983 * t1865 - t1979 * t1857 - pkin(6) * (t1901 * t1979 + t1939 * t1983), t1983 * t1866 - t1979 * t1858 - pkin(6) * (t1903 * t1979 - t1937 * t1983), t1983 * t1853 - pkin(6) * (t1942 * t1979 + t1945 * t1983), -pkin(6) * (t1854 * t1979 + t1924 * t1983) - (pkin(1) * t1979 - pkin(7) * t1983) * t1853, t1824 * t1983 + t1863 * t1979, t1787 * t1983 + t1806 * t1979, t1794 * t1983 + t1840 * t1979, t1823 * t1983 + t1861 * t1979, t1795 * t1983 + t1841 * t1979, t1846 * t1983 - t1870 * t1979, t1983 * t1633 - t1979 * t1686 - pkin(6) * (t1783 * t1979 - t1825 * t1983), t1983 * t1636 - t1979 * t1690 - pkin(6) * (t1793 * t1979 - t1839 * t1983), t1983 * t1613 - t1979 * t1623 - pkin(6) * (t1765 * t1979 - t1807 * t1983), t1983 * t1567 - t1979 * t1604 - pkin(6) * (t1685 * t1979 - t1710 * t1983), t1655 * t1983 + t1692 * t1979, t1609 * t1983 + t1619 * t1979, t1643 * t1983 + t1695 * t1979, t1654 * t1983 + t1691 * t1979, t1644 * t1983 + t1696 * t1979, t1733 * t1983 + t1737 * t1979, t1983 * t1471 - t1979 * t1491 - pkin(6) * (t1635 * t1979 - t1675 * t1983), t1983 * t1479 - t1979 * t1502 - pkin(6) * (t1639 * t1979 - t1688 * t1983), t1983 * t1436 - t1979 * t1441 - pkin(6) * (t1603 * t1979 - t1620 * t1983), t1983 * t1417 - t1979 * t1427 - pkin(6) * (t1484 * t1979 - t1492 * t1983), t2127, t1456 * t1983 + t1460 * t1979, t1526 * t1983 + t2220, t2188, -t2237, t2189, t1983 * t1401 - t1979 * t1414 - pkin(6) * (t1488 * t1979 - t2208), t1983 * t1405 - t1979 * t1418 - pkin(6) * (t1509 * t1979 + t2231), t1983 * t1380 - t1979 * t1384 - t2206, t1983 * t1373 - t1979 * t1375 - pkin(6) * (t1408 * t1979 - t1411 * t1983), t2127, t1527 * t1983 + t2220, t1455 * t1983 + t1459 * t1979, t2189, t2237, t2188, t1983 * t1392 - t1979 * t1394 - pkin(6) * (t1510 * t1979 - t2208), t1983 * t1377 - t1979 * t1381 - t2206, t1983 * t1388 - t1979 * t1393 - pkin(6) * (t1487 * t1979 - t2231), t1983 * t1370 - t1979 * t1372 - pkin(6) * (t1397 * t1979 - t1399 * t1983); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1943, 0, t1944, 0, t1919, t2032, t2038, pkin(6) * t2038, t1908 * t1979 + t2034, t1890 * t1979 - t1946 * t1983, t1902 * t1979 - t1983 * t2057, t1907 * t1979 - t2034, t1900 * t1979 - t1983 * t2056, -qJDD(2) * t1983 + t1933 * t1979, t1979 * t1865 + t1983 * t1857 + pkin(6) * (t1901 * t1983 - t1939 * t1979), t1979 * t1866 + t1983 * t1858 + pkin(6) * (t1903 * t1983 + t1937 * t1979), t1979 * t1853 + pkin(6) * (t1942 * t1983 - t1945 * t1979), pkin(6) * (t1854 * t1983 - t1924 * t1979) - (-pkin(1) * t1983 - pkin(7) * t1979) * t1853, t1824 * t1979 - t1863 * t1983, t1787 * t1979 - t1806 * t1983, t1794 * t1979 - t1840 * t1983, t1823 * t1979 - t1861 * t1983, t1795 * t1979 - t1841 * t1983, t1846 * t1979 + t1870 * t1983, t1979 * t1633 + t1983 * t1686 + pkin(6) * (t1783 * t1983 + t1825 * t1979), t1979 * t1636 + t1983 * t1690 + pkin(6) * (t1793 * t1983 + t1839 * t1979), t1979 * t1613 + t1983 * t1623 + pkin(6) * (t1765 * t1983 + t1807 * t1979), t1979 * t1567 + t1983 * t1604 + pkin(6) * (t1685 * t1983 + t1710 * t1979), t1655 * t1979 - t1692 * t1983, t1609 * t1979 - t1619 * t1983, t1643 * t1979 - t1695 * t1983, t1654 * t1979 - t1691 * t1983, t1644 * t1979 - t1696 * t1983, t1733 * t1979 - t1737 * t1983, t1979 * t1471 + t1983 * t1491 + pkin(6) * (t1635 * t1983 + t1675 * t1979), t1979 * t1479 + t1983 * t1502 + pkin(6) * (t1639 * t1983 + t1688 * t1979), t1979 * t1436 + t1983 * t1441 + pkin(6) * (t1603 * t1983 + t1620 * t1979), t1979 * t1417 + t1983 * t1427 + pkin(6) * (t1484 * t1983 + t1492 * t1979), t2130, t1456 * t1979 - t1460 * t1983, t1526 * t1979 - t2218, t2191, -t2238, t2192, t1979 * t1401 + t1983 * t1414 + pkin(6) * (t1488 * t1983 + t2210), t1979 * t1405 + t1983 * t1418 + pkin(6) * (t1509 * t1983 - t2232), t1979 * t1380 + t1983 * t1384 + t2205, t1979 * t1373 + t1983 * t1375 + pkin(6) * (t1408 * t1983 + t1411 * t1979), t2130, t1527 * t1979 - t2218, t1455 * t1979 - t1459 * t1983, t2192, t2238, t2191, t1979 * t1392 + t1983 * t1394 + pkin(6) * (t1510 * t1983 + t2210), t1979 * t1377 + t1983 * t1381 + t2205, t1979 * t1388 + t1983 * t1393 + pkin(6) * (t1487 * t1983 + t2232), t1979 * t1370 + t1983 * t1372 + pkin(6) * (t1397 * t1983 + t1399 * t1979); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1951, t1952, 0, 0, t1895, t1889, t1898, t1894, t1896, 0, t1850, t1849, t1828, t1836, t1822, t1786, t1791, t1821, t1792, t1845, t1614, t1632, t1600, t1546, t1653, t1608, t1641, t1652, t1642, t1732, t1458, t1469, t1434, t1413, t2028, t1454, t1522, t2164, -t1524, t2165, t1395, t1403, t1379, t1371, t2028, t1523, t1453, t2165, t1524, t2164, t1389, t1376, t1385, t1369; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1984, 0, 0, -g(3), -t1951, 0, t1908, t1890, t1902, t1907, t1900, t1933, t1865, t1866, t1853, pkin(7) * t1853, t1824, t1787, t1794, t1823, t1795, t1846, t1633, t1636, t1613, t1567, t1655, t1609, t1643, t1654, t1644, t1733, t1471, t1479, t1436, t1417, t2027, t1456, t1526, t2163, -t1528, t2162, t1401, t1405, t1380, t1373, t2027, t1527, t1455, t2162, t1528, t2163, t1392, t1377, t1388, t1370; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1984, 0, qJDD(1), 0, g(3), 0, -t1952, 0, t1961, -t1946, -t2057, -t1961, -t2056, -qJDD(2), t1857, t1858, 0, pkin(1) * t1853, -t1863, -t1806, -t1840, -t1861, -t1841, t1870, t1686, t1690, t1623, t1604, -t1692, -t1619, -t1695, -t1691, -t1696, -t1737, t1491, t1502, t1441, t1427, -t1518, -t1460, -t2203, -t2148, -t1557, -t2145, t1414, t1418, t1384, t1375, -t1518, -t2203, -t1459, -t2145, t1557, -t2148, t1394, t1381, t1393, t1372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1951, t1952, 0, 0, t1895, t1889, t1898, t1894, t1896, 0, t1850, t1849, t1828, t1836, t1822, t1786, t1791, t1821, t1792, t1845, t1614, t1632, t1600, t1546, t1653, t1608, t1641, t1652, t1642, t1732, t1458, t1469, t1434, t1413, t2028, t1454, t1522, t2164, -t1524, t2165, t1395, t1403, t1379, t1371, t2028, t1523, t1453, t2165, t1524, t2164, t1389, t1376, t1385, t1369; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2037, t1939, t1950, -t1966, t1958, t1966, 0, -t1924, t1904, 0, t1864, t1808, t1843, t1862, t1844, t1871, t1766, t1789, t1656, -qJ(3) * t1710, t1694, t1621, t1697, t1693, t1698, t1738, t1553, t1563, t1457, t1442, t1521, t1464, t2204, t2147, -t1560, t2146, t1419, t1423, t1386, t1378, t1521, t2204, t1463, t2146, t1560, t2147, t1402, t1383, t1398, t1374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1965, t1937, t1956, t1938, t1949, -t1965, t1924, 0, t1905, 0, -t2074, -t1891, t2029, t2074, -t1879, t1938, t1731, t1734, -pkin(2) * t1807, -pkin(2) * t1710, -t1838, -t1837, -t1781, t1838, -t2006, t1932, t1566, t1568, t1571, t1470, -t2085, -t2139, -t1670, t2085, -t2007, t1928, t1440, t1445, t1433, t1391, -t2085, -t1671, t2139, t1928, t2007, t2085, t1439, t1425, t1437, t1382; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1961, t1946, t2057, t1961, t2056, qJDD(2), -t1904, -t1905, 0, 0, t1863, t1806, t1840, t1861, t1841, -t1870, t2010, t2009, t2004, t2031, t1692, t1619, t1695, t1691, t1696, t1737, t1993, t1992, t1994, t1991, t1518, t1460, t2203, t2148, t1557, t2145, t1996, t1995, t1999, t2001, t1518, t2203, t1459, t2145, -t1557, t2148, t1997, t2000, t1998, t2002; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1909, t1878, t2014, -t2048, t1912, t2048, 0, t1859, t1784, 0, t1770, t1708, t1773, t1768, t1774, t1802, t1687, t1705, t1552, -pkin(8) * t1569, t1585, t1535, t2184, t2124, -t1630, t2125, t1478, t1481, t1416, t1409, t1585, t2184, t1534, t2125, t1630, t2124, t1430, t1410, t1428, t1390; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1916, -t1876, t1913, -t2003, -t1880, t1916, -t1859, 0, t1785, 0, t1769, t1706, t1771, t1767, t1772, t1801, t1637, t1647, t1545, t1564, t1582, t1531, t2185, t2123, t1627, t2126, t1468, t1473, t1415, t1404, t1582, t2185, t1530, t2126, -t1627, t2123, t1426, t1406, t1424, t1387; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2074, t1891, -t2029, -t2074, t1879, -t1938, -t1784, -t1785, 0, 0, t1838, t1837, t1781, -t1838, t2006, -t1932, t2017, t2033, t2114, t2115, t2085, t2139, t1670, -t2085, t2007, -t1928, t2012, t2019, t2042, t2043, t2085, t1671, -t2139, -t1928, -t2007, -t2085, t1986, t2020, t1940 + t1990, t2021; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1810, -t1776, t2138, -t1874, t1868, t1874, 0, t1788, t1645, 0, t1662, t1593, t2168, t2016, t1720, t2025, t1601, t1610, t1444, -pkin(9) * t1475, t1662, t2168, t1592, t2025, -t1720, t2016, t1482, t1438, t1480, t1429; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2066, t2137, t1869, -t2015, -t1818, t2066, -t1788, 0, t1646, 0, t1661, t1589, t2167, t2026, t1716, t2013, t1562, t1565, t1443, t1467, t1661, t2167, t1588, t2013, -t1716, t2026, t1477, t1435, t1472, t1420; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1838, t1837, t1781, -t1838, t2006, -t1932, -t1645, -t1646, 0, 0, t2085, t2139, t1670, -t2085, t2007, -t1928, t2024, t2046, t1586, t1474, t2085, t1671, -t2139, -t1928, -t2007, -t2085, t1987, t2045, -t1677 + t2005, t2047; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1724, -t1666, t2136, -t1815, t1812, t1815, 0, t1683, t1543, 0, t1724, t2136, t1666, t1815, -t1812, -t1815, -qJ(6) * t1667, t1490, t1511, -qJ(6) * t1551; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2084, t2140, -t1813, -t1723, -t2135, t2084, -t1683, 0, t1544, 0, -t2084, -t1813, t1673, t2084, t2135, -t1723, t1512, t1489, -pkin(5) * t1673, -pkin(5) * t1551; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2085, t2139, t1670, -t2085, t2007, -t1928, -t1543, -t1544, 0, 0, t2085, t1671, -t2139, -t1928, -t2007, -t2085, t1988, t2059, t2005, t2060; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1724, t2136, t1666, t1815, -t1812, -t1815, 0, t1506, -t1551, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2085, t1671, -t2139, -t1928, -t2007, -t2085, -t1506, 0, t1504, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2084, t1813, -t1673, -t2084, -t2135, t1723, t1551, -t1504, 0, 0;];
m_new_reg  = t1;

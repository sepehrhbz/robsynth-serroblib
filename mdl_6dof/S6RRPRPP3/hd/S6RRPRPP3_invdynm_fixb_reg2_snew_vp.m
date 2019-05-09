% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRPRPP3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,theta3]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 12:34
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRPRPP3_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP3_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPP3_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPP3_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPP3_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRPP3_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 12:33:19
% EndTime: 2019-05-06 12:34:02
% DurationCPUTime: 47.14s
% Computational Cost: add. (127672->880), mult. (277795->945), div. (0->0), fcn. (196044->8), ass. (0->547)
t1880 = sin(qJ(2));
t1877 = sin(pkin(9));
t1878 = cos(pkin(9));
t2017 = qJD(1) * t1880;
t1837 = qJD(2) * t1877 + t1878 * t2017;
t1879 = sin(qJ(4));
t1882 = cos(qJ(4));
t1860 = t1877 * t2017;
t1955 = qJD(2) * t1878 - t1860;
t1791 = t1837 * t1879 - t1882 * t1955;
t1883 = cos(qJ(2));
t2016 = qJD(1) * t1883;
t1960 = qJD(2) * t2016;
t1965 = t1880 * qJDD(1);
t1925 = t1960 + t1965;
t1967 = t1877 * qJDD(2);
t1816 = t1878 * t1925 + t1967;
t1966 = t1878 * qJDD(2);
t1901 = -t1877 * t1925 + t1966;
t1893 = t1882 * t1816 + t1879 * t1901;
t1691 = -t1791 * qJD(4) + t1893;
t1867 = -qJD(4) + t2016;
t1985 = t1791 * t1867;
t2064 = t1691 + t1985;
t1865 = t1867 ^ 2;
t1793 = t1882 * t1837 + t1879 * t1955;
t2041 = t1793 ^ 2;
t1745 = -t2041 - t1865;
t1722 = t1793 * t1791;
t1870 = qJD(2) * t2017;
t1964 = t1883 * qJDD(1);
t1844 = -t1870 + t1964;
t1838 = -qJDD(4) + t1844;
t2063 = -t1722 + t1838;
t2083 = t2063 * t1879;
t1608 = t1745 * t1882 + t2083;
t2082 = t2063 * t1882;
t2109 = t1745 * t1879 - t2082;
t2145 = t1608 * t1877 + t1878 * t2109;
t2175 = t1883 * t2145;
t1490 = t1880 * t2064 - t2175;
t1884 = cos(qJ(1));
t1881 = sin(qJ(1));
t2144 = -t1608 * t1878 + t1877 * t2109;
t2177 = t1881 * t2144;
t2224 = pkin(6) * (t1490 * t1884 - t2177);
t2174 = t1884 * t2144;
t2223 = pkin(6) * (t1490 * t1881 + t2174);
t2178 = t1880 * t2145;
t1479 = t1883 * t2064 + t2178;
t2222 = pkin(1) * t1479;
t2221 = pkin(7) * t1479;
t2186 = pkin(1) * t2144;
t2220 = -pkin(7) * t1490 - t2186;
t1917 = t1838 + t1722;
t1694 = t1882 * t1917;
t2042 = t1791 ^ 2;
t2060 = -t1865 - t2042;
t1604 = -t2060 * t1879 + t1694;
t1993 = t1917 * t1879;
t2112 = t2060 * t1882 + t1993;
t1526 = t1604 * t1878 - t1877 * t2112;
t1690 = qJD(4) * t1793 + t1816 * t1879 - t1882 * t1901;
t1984 = t1793 * t1867;
t2066 = t1690 - t1984;
t2146 = t1604 * t1877 + t1878 * t2112;
t2166 = t1880 * t2066 + t1883 * t2146;
t2202 = pkin(6) * (t1526 * t1881 - t1884 * t2166);
t2203 = pkin(6) * (t1526 * t1884 + t1881 * t2166);
t2058 = -t2041 + t1865;
t1625 = -t1882 * t2058 + t1993;
t1631 = t2058 * t1879 + t1694;
t1555 = t1625 * t1878 + t1631 * t1877;
t2059 = -t1985 + t1691;
t2162 = t1625 * t1877 - t1631 * t1878;
t2190 = t2059 * t1880 + t1883 * t2162;
t2211 = t1555 * t1884 + t1881 * t2190;
t2217 = t1555 * t1881 - t1884 * t2190;
t2081 = t2066 * t1882;
t1574 = t2064 * t1879 + t2081;
t2111 = -t2066 * t1879 + t2064 * t1882;
t1470 = t1574 * t1878 + t1877 * t2111;
t1718 = t2042 - t2041;
t1453 = t1470 * t1883 + t1718 * t1880;
t2148 = -t1574 * t1877 + t1878 * t2111;
t2216 = t1453 * t1881 + t1884 * t2148;
t2215 = t1453 * t1884 - t1881 * t2148;
t2181 = qJ(3) * t2145;
t2214 = pkin(2) * t2064 + t2181;
t2204 = pkin(1) * t1526 + pkin(7) * t2166;
t1761 = t2042 - t1865;
t1628 = t1761 * t1879 - t2082;
t1634 = t1761 * t1882 + t2083;
t1558 = t1628 * t1878 + t1634 * t1877;
t2065 = t1690 + t1984;
t2106 = t1628 * t1877 - t1634 * t1878;
t2123 = t2065 * t1880 + t1883 * t2106;
t2142 = t1558 * t1884 + t1881 * t2123;
t2140 = -t1558 * t1881 + t1884 * t2123;
t2168 = t1880 * t2146 - t1883 * t2066;
t2201 = pkin(1) * t2168;
t2209 = pkin(2) * t2144;
t2199 = pkin(7) * t2168;
t2182 = qJ(3) * t2144;
t1450 = t1470 * t1880 - t1718 * t1883;
t2185 = pkin(2) * t1526;
t2183 = qJ(3) * t1526;
t2192 = t1880 * t2162 - t2059 * t1883;
t2124 = t1880 * t2106 - t2065 * t1883;
t2057 = -t2042 - t2041;
t2113 = t2059 * t1879 - t1882 * t2065;
t2114 = -t1879 * t2065 - t1882 * t2059;
t2122 = -t1877 * t2114 + t1878 * t2113;
t2143 = t1880 * t2122 - t1883 * t2057;
t2187 = pkin(1) * t2143;
t2184 = pkin(7) * t2143;
t2137 = pkin(8) * t2109;
t2172 = -pkin(3) * t2064 - t2137;
t2014 = qJD(5) * t1867;
t1854 = 0.2e1 * t2014;
t2171 = t1854 - t2209;
t2121 = t1877 * t2113 + t1878 * t2114;
t2141 = t1880 * t2057 + t1883 * t2122;
t2170 = -pkin(1) * t2121 + pkin(7) * t2141;
t2169 = -pkin(2) * t2066 + qJ(3) * t2146;
t2164 = pkin(6) * (t1881 * t2141 - t1884 * t2121);
t2163 = pkin(6) * (t1881 * t2121 + t1884 * t2141);
t2160 = pkin(2) * t2121;
t2159 = pkin(3) * t1604;
t2158 = pkin(3) * t1608;
t2138 = pkin(8) * t1604;
t2157 = pkin(8) * t1608;
t2156 = qJ(3) * t2121;
t2149 = -pkin(2) * t2057 + qJ(3) * t2122;
t2034 = pkin(3) * t2114;
t2136 = pkin(8) * t2112;
t2135 = pkin(8) * t2114;
t2126 = -pkin(3) * t2066 + t2136;
t2125 = -pkin(3) * t2057 + pkin(8) * t2113;
t2120 = pkin(4) * (t2066 - t1984);
t2119 = qJ(5) * t2064;
t1934 = t1955 * t1837;
t2078 = -t1844 + t1934;
t2116 = t1877 * t2078;
t2115 = t1878 * t2078;
t1857 = g(1) * t1884 + g(2) * t1881;
t1885 = qJD(1) ^ 2;
t1830 = -pkin(1) * t1885 + qJDD(1) * pkin(7) - t1857;
t2036 = pkin(2) * t1883;
t1942 = -qJ(3) * t1880 - t2036;
t1842 = t1942 * qJD(1);
t2023 = g(3) * t1883;
t2043 = qJD(2) ^ 2;
t1748 = -qJDD(2) * pkin(2) - qJ(3) * t2043 + (qJD(1) * t1842 + t1830) * t1880 + qJDD(3) + t2023;
t1817 = -pkin(3) * t2016 - pkin(8) * t1837;
t1952 = t1955 ^ 2;
t1661 = -t1901 * pkin(3) - t1952 * pkin(8) + t1817 * t1837 + t1748;
t1891 = t1690 * pkin(4) + t1661 - t2119;
t1889 = 0.2e1 * qJD(5) * t1793 - t1891;
t2110 = -pkin(4) * t1745 - qJ(5) * t2063;
t1975 = t1867 * t1879;
t1760 = t1793 * t1975;
t1974 = t1867 * t1882;
t1961 = t1791 * t1974;
t1935 = -t1760 + t1961;
t1924 = (t1791 * t1879 + t1793 * t1882) * t1867;
t2067 = t1878 * t1924;
t2049 = t1877 * t1935 + t2067;
t1980 = t1838 * t1880;
t2068 = t1877 * t1924;
t2048 = t1878 * t1935 - t2068;
t2070 = t1883 * t2048 - t1980;
t2108 = t1881 * t2070 - t1884 * t2049;
t1926 = t1690 * t1879 - t1961;
t1936 = -t1882 * t1690 - t1791 * t1975;
t2046 = t1877 * t1926 + t1878 * t1936;
t1963 = t1880 * t1722;
t2047 = -t1877 * t1936 + t1878 * t1926;
t2071 = t1883 * t2047 - t1963;
t2053 = t1881 * t2071 - t1884 * t2046;
t1937 = t1879 * t1691 - t1793 * t1974;
t1969 = t1882 * t1691 + t1760;
t2045 = t1877 * t1969 + t1878 * t1937;
t2044 = -t1877 * t1937 + t1878 * t1969;
t2072 = t1883 * t2044 + t1963;
t2052 = t1881 * t2072 - t1884 * t2045;
t2107 = t1881 * t2049 + t1884 * t2070;
t2050 = t1881 * t2046 + t1884 * t2071;
t2051 = t1881 * t2045 + t1884 * t2072;
t2104 = -2 * qJD(6);
t2097 = qJ(5) * t2057;
t2096 = qJ(5) * t2066;
t2019 = qJ(6) * t1917;
t1856 = t1881 * g(1) - t1884 * g(2);
t1829 = qJDD(1) * pkin(1) + t1885 * pkin(7) + t1856;
t1843 = 0.2e1 * t1960 + t1965;
t1735 = (-t1844 + t1870) * pkin(2) - t1843 * qJ(3) - t1829;
t1812 = -g(3) * t1880 + t1883 * t1830;
t1749 = -pkin(2) * t2043 + qJDD(2) * qJ(3) + t1842 * t2016 + t1812;
t2040 = 2 * qJD(3);
t1657 = -t1878 * t1735 + t1877 * t1749 + t1837 * t2040;
t1928 = t1955 * t2016;
t1585 = (-t1816 - t1928) * pkin(8) + t2078 * pkin(3) - t1657;
t1658 = t1877 * t1735 + t1878 * t1749 + t1955 * t2040;
t1595 = -pkin(3) * t1952 + pkin(8) * t1901 + t1817 * t2016 + t1658;
t1507 = -t1882 * t1585 + t1595 * t1879;
t1717 = pkin(4) * t1791 - qJ(5) * t1793;
t1463 = t1838 * pkin(4) - t1865 * qJ(5) + t1717 * t1793 + qJDD(5) + t1507;
t1897 = t1691 * pkin(5) + t1463 + t2019;
t1896 = t1867 * t2104 - t1897;
t2077 = t1896 + pkin(5) * (-t2059 + t1985);
t1971 = -pkin(4) * t2059 - qJ(5) * t2065;
t2062 = -pkin(4) * t1917 + qJ(5) * t2060;
t1826 = t1883 * t1838;
t2075 = t1880 * t2048 + t1826;
t1962 = t1883 * t1722;
t2074 = t1880 * t2044 - t1962;
t2073 = t1880 * t2047 + t1962;
t2061 = t2042 * pkin(5) + t1791 * t2104;
t1823 = t1837 * t2016;
t1777 = t1901 - t1823;
t2054 = -(t2066 + t1690) * qJ(6) + pkin(5) * t2060;
t1836 = t1837 ^ 2;
t2039 = -0.2e1 * qJD(5);
t2038 = pkin(4) + qJ(6);
t2037 = pkin(2) * t1880;
t1508 = t1879 * t1585 + t1882 * t1595;
t1432 = -t1507 * t1882 + t1508 * t1879;
t2035 = pkin(3) * t1432;
t2032 = pkin(4) * t1867;
t2031 = pkin(4) * t1879;
t2030 = pkin(4) * t1882;
t1436 = (-pkin(5) * t1791 + (2 * qJD(6))) * t1867 + t1897;
t2029 = pkin(5) * t1436;
t1855 = -0.2e1 * t2014;
t1759 = pkin(5) * t1793 + qJ(6) * t1867;
t1933 = t1865 * pkin(4) + t1838 * qJ(5) + t1791 * t1717 - t1508;
t1915 = t1690 * pkin(5) + qJ(6) * t2042 + t1867 * t1759 - qJDD(6) + t1933;
t1438 = t1855 - t1915;
t2028 = pkin(5) * t1438;
t2027 = pkin(5) * t2063;
t2026 = pkin(5) * t1917;
t2025 = pkin(5) * t1745;
t2022 = qJ(6) * t1436;
t2021 = qJ(6) * t2059;
t2020 = qJ(6) * t1690;
t2018 = qJD(1) * qJD(2);
t2011 = t1432 * t1877;
t2010 = t1432 * t1878;
t1997 = t1661 * t1879;
t1996 = t1661 * t1882;
t1990 = t1748 * t1877;
t1989 = t1748 * t1878;
t1780 = t1844 + t1934;
t1987 = t1780 * t1877;
t1986 = t1780 * t1878;
t1982 = t1829 * t1880;
t1981 = t1829 * t1883;
t1802 = t1843 * t1880;
t1979 = t1844 * t1880;
t1866 = t1883 * t1885 * t1880;
t1851 = -t1866 + qJDD(2);
t1978 = t1851 * t1880;
t1977 = t1851 * t1883;
t1852 = qJDD(2) + t1866;
t1976 = t1852 * t1880;
t1874 = t1880 ^ 2;
t1973 = t1874 * t1885;
t1461 = t1855 - t1933;
t1972 = -pkin(4) * t1463 + qJ(5) * t1461;
t1875 = t1883 ^ 2;
t1968 = t1874 + t1875;
t1959 = t1860 * t2016;
t1958 = qJ(5) * t1879 + pkin(3);
t1957 = t1759 + t2032;
t1433 = t1507 * t1879 + t1882 * t1508;
t1581 = t1657 * t1877 + t1878 * t1658;
t1811 = t1830 * t1880 + t2023;
t1738 = t1811 * t1880 + t1883 * t1812;
t1953 = -t1856 * t1881 - t1884 * t1857;
t1951 = t1881 * t1866;
t1950 = t1884 * t1866;
t1414 = t1461 * t1879 - t1463 * t1882;
t1949 = pkin(3) * t1414 + t1972;
t1948 = t1971 + t2034;
t1947 = -t1508 + t2158;
t1848 = qJDD(1) * t1884 - t1881 * t1885;
t1946 = -pkin(6) * t1848 - g(3) * t1881;
t1945 = -pkin(4) * t1436 + qJ(5) * t1438 - t2022;
t1944 = t1971 - t2021;
t1943 = -pkin(2) * t1748 + qJ(3) * t1581;
t1580 = -t1657 * t1878 + t1658 * t1877;
t1737 = t1811 * t1883 - t1812 * t1880;
t1932 = t1856 * t1884 - t1857 * t1881;
t1930 = -t1507 - t2159;
t1929 = t1880 * t1934;
t1927 = t1883 * t1934;
t1401 = -t1436 * t1882 + t1438 * t1879;
t1923 = pkin(3) * t1401 + t1945;
t1922 = t1944 + t2034;
t1921 = -t1933 + t2110;
t1871 = t1875 * t1885;
t1795 = -t1871 - t1952;
t1710 = t1795 * t1878 - t2116;
t1776 = t1823 + t1901;
t1920 = pkin(2) * t1776 + qJ(3) * t1710 - t1989;
t1821 = -t1836 - t1871;
t1726 = -t1821 * t1877 + t1986;
t1779 = t1878 * t1965 + t1959 + t1967;
t1919 = -pkin(2) * t1779 + qJ(3) * t1726 + t1990;
t1778 = t1843 * t1878 - t1959 + t1967;
t1689 = t1777 * t1878 + t1778 * t1877;
t1768 = t1952 + t1836;
t1916 = pkin(2) * t1768 + qJ(3) * t1689 + t1581;
t1914 = t1921 - t2158;
t1886 = t1891 + (t2039 - t1957) * t1793 - t2061;
t1440 = t1886 + t2020;
t1390 = -t1440 * t2038 + t2028;
t1402 = t1436 * t1879 + t1438 * t1882;
t1405 = -qJ(5) * t1440 + t2029;
t1345 = -pkin(3) * t1440 + pkin(8) * t1402 + t1390 * t1882 + t1405 * t1879;
t1352 = -pkin(8) * t1401 - t1390 * t1879 + t1405 * t1882;
t1372 = -t1401 * t1877 + t1402 * t1878;
t1913 = -pkin(2) * t1440 + qJ(3) * t1372 + t1345 * t1878 + t1352 * t1877;
t1899 = -pkin(5) * t2065 - t1915;
t1418 = -t2038 * t2057 + t1855 + t1899;
t1420 = -t2077 - t2097;
t1382 = t1418 * t1882 + t1420 * t1879 + t2125;
t1384 = -t1418 * t1879 + t1420 * t1882 - t2135;
t1912 = t1382 * t1878 + t1384 * t1877 + t2149;
t1415 = t1461 * t1882 + t1463 * t1879;
t1493 = (t2039 - t2032) * t1793 + t1891;
t1383 = pkin(8) * t1415 + (-t1958 - t2030) * t1493;
t1387 = -t1414 * t1877 + t1415 * t1878;
t1391 = -pkin(8) * t1414 + (-qJ(5) * t1882 + t2031) * t1493;
t1911 = -pkin(2) * t1493 + qJ(3) * t1387 + t1383 * t1878 + t1391 * t1877;
t1441 = -pkin(4) * t2057 + t1461;
t1442 = t1463 - t2097;
t1394 = t1441 * t1882 + t1442 * t1879 + t2125;
t1398 = -t1441 * t1879 + t1442 * t1882 - t2135;
t1910 = t1394 * t1878 + t1398 * t1877 + t2149;
t1887 = t1889 + t2061;
t1427 = t1793 * t1957 + t1887 - t2020 + t2025 + t2119;
t1523 = t2038 * t2064 - t2027;
t1399 = t1427 * t1879 + t1523 * t1882 - t2172;
t1407 = t1427 * t1882 - t1523 * t1879 + t2157;
t1909 = t1399 * t1878 + t1407 * t1877 + t2214;
t1422 = t1759 * t1793 + t1887 + t2054 - t2120;
t1582 = t2026 - t2096;
t1404 = t1422 * t1882 + t1582 * t1879 + t2126;
t1408 = -t1422 * t1879 + t1582 * t1882 + t2138;
t1908 = t1404 * t1878 + t1408 * t1877 + t2169;
t1410 = t1433 + t2125;
t1416 = -t1432 - t2135;
t1907 = t1410 * t1878 + t1416 * t1877 + t2149;
t1460 = -t1889 + t2120;
t1421 = t1460 * t1882 + t1958 * t2066 - t2136;
t1428 = qJ(5) * t2081 - t1460 * t1879 - t2138;
t1906 = t1421 * t1878 + t1428 * t1877 - t2169;
t1649 = (-qJD(4) + t1867) * t1791 + t1893;
t1459 = pkin(4) * t1984 + qJ(5) * t1649 + t1889;
t1424 = t2137 + t1459 * t1879 + (pkin(3) + t2030) * t1649;
t1431 = t1459 * t1882 - t1649 * t2031 + t2157;
t1905 = pkin(2) * t1649 + t1424 * t1878 + t1431 * t1877 + t2181;
t1486 = -t1996 + t2126;
t1533 = t1997 + t2138;
t1904 = t1486 * t1878 + t1533 * t1877 + t2169;
t1509 = t1997 + t2172;
t1567 = t1996 - t2157;
t1903 = t1509 * t1878 + t1567 * t1877 - t2214;
t1397 = t1433 * t1878 - t2011;
t1425 = -pkin(3) * t1661 + pkin(8) * t1433;
t1902 = -pkin(2) * t1661 - pkin(8) * t2011 + qJ(3) * t1397 + t1425 * t1878;
t1900 = t1463 - t2062;
t1898 = -qJ(6) * t1745 - t1915;
t1895 = t1900 + t2159;
t1894 = t1898 + t2110;
t1892 = t1894 - t2158;
t1890 = pkin(5) * t1985 + t1896 - t2019;
t1888 = t1890 + t2062;
t1864 = -t1871 - t2043;
t1863 = t1871 - t2043;
t1862 = -t1973 - t2043;
t1861 = -t1973 + t2043;
t1850 = -t1871 + t1973;
t1849 = t1871 + t1973;
t1847 = qJDD(1) * t1881 + t1884 * t1885;
t1846 = t1968 * qJDD(1);
t1845 = -0.2e1 * t1870 + t1964;
t1840 = t1883 * t1852;
t1839 = t1968 * t2018;
t1833 = t1883 * t1844;
t1824 = -pkin(6) * t1847 + g(3) * t1884;
t1820 = -t1836 + t1871;
t1819 = t1952 - t1871;
t1818 = t1878 * t1823;
t1815 = -t1874 * t2018 + t1883 * t1925;
t1814 = -t1875 * t2018 - t1979;
t1810 = -t1862 * t1880 - t1977;
t1809 = -t1861 * t1880 + t1840;
t1808 = t1864 * t1883 - t1976;
t1807 = t1863 * t1883 - t1978;
t1806 = t1862 * t1883 - t1978;
t1805 = t1861 * t1883 + t1976;
t1804 = t1864 * t1880 + t1840;
t1803 = t1863 * t1880 + t1977;
t1801 = -t1880 * t1960 + t1833;
t1798 = t1836 - t1952;
t1797 = t1845 * t1883 - t1802;
t1796 = t1843 * t1883 + t1845 * t1880;
t1766 = (-t1877 * t1837 - t1878 * t1955) * t2016;
t1765 = t1877 * t1928 - t1818;
t1758 = -pkin(7) * t1806 - t1981;
t1757 = -pkin(7) * t1804 - t1982;
t1753 = t1816 * t1878 + t1823 * t1877;
t1752 = t1816 * t1877 - t1818;
t1751 = -t1877 * t1901 + t1878 * t1928;
t1750 = -t1877 * t1959 + t1878 * (-t1877 * t1965 + t1966);
t1747 = -pkin(1) * t1806 + t1812;
t1746 = -pkin(1) * t1804 + t1811;
t1734 = pkin(1) * t1845 + pkin(7) * t1808 + t1981;
t1733 = -pkin(1) * t1843 + pkin(7) * t1810 - t1982;
t1730 = t1766 * t1883 - t1979;
t1729 = t1766 * t1880 + t1833;
t1728 = t1819 * t1878 + t1987;
t1727 = -t1820 * t1877 + t2115;
t1725 = t1819 * t1877 - t1986;
t1724 = t1820 * t1878 + t2116;
t1723 = t1821 * t1878 + t1987;
t1716 = pkin(1) * t1829 + pkin(7) * t1738;
t1713 = pkin(1) * t1849 + pkin(7) * t1846 + t1738;
t1709 = t1795 * t1877 + t2115;
t1708 = t1883 * t1753 - t1929;
t1707 = t1883 * t1751 + t1929;
t1706 = t1880 * t1753 + t1927;
t1705 = t1880 * t1751 - t1927;
t1688 = t1776 * t1878 - t1779 * t1877;
t1687 = t1777 * t1877 - t1778 * t1878;
t1686 = t1776 * t1877 + t1779 * t1878;
t1680 = (t1791 * t1882 - t1793 * t1879) * t1867;
t1668 = t1728 * t1883 + t1777 * t1880;
t1667 = t1727 * t1883 + t1778 * t1880;
t1666 = t1726 * t1883 + t1779 * t1880;
t1665 = t1728 * t1880 - t1777 * t1883;
t1664 = t1727 * t1880 - t1778 * t1883;
t1663 = t1726 * t1880 - t1779 * t1883;
t1662 = -qJ(3) * t1723 + t1989;
t1660 = t1688 * t1883 + t1798 * t1880;
t1659 = t1688 * t1880 - t1798 * t1883;
t1656 = t1710 * t1883 - t1776 * t1880;
t1655 = t1710 * t1880 + t1776 * t1883;
t1616 = -qJ(3) * t1709 + t1990;
t1615 = t1689 * t1883 - t1768 * t1880;
t1614 = t1689 * t1880 + t1768 * t1883;
t1600 = t1680 * t1878 - t2068;
t1597 = t1680 * t1877 + t2067;
t1593 = -pkin(2) * t1723 + t1658;
t1591 = t1600 * t1883 - t1980;
t1588 = t1600 * t1880 + t1826;
t1586 = -pkin(2) * t1709 + t1657;
t1546 = -pkin(1) * t1663 - t1919;
t1532 = -pkin(1) * t1655 - t1920;
t1531 = t1581 * t1883 + t1748 * t1880;
t1530 = t1581 * t1880 - t1748 * t1883;
t1522 = -qJ(3) * t1687 - t1580;
t1491 = -t1649 * t1880 + t2175;
t1488 = t1649 * t1883 + t2178;
t1485 = -pkin(7) * t1663 - t1593 * t1880 + t1662 * t1883;
t1478 = -pkin(7) * t1655 - t1586 * t1880 + t1616 * t1883;
t1477 = -pkin(1) * t1723 + pkin(7) * t1666 + t1593 * t1883 + t1662 * t1880;
t1476 = -pkin(1) * t1614 - t1916;
t1457 = -pkin(1) * t1709 + pkin(7) * t1656 + t1586 * t1883 + t1616 * t1880;
t1456 = -pkin(7) * t1614 + t1522 * t1883 + t1687 * t2037;
t1449 = -pkin(1) * t1530 - t1943;
t1439 = pkin(7) * t1615 + t1522 * t1880 + (-pkin(1) - t2036) * t1687;
t1434 = -t2034 - t2160;
t1430 = -t1947 + t2209;
t1429 = -pkin(7) * t1530 + (-qJ(3) * t1883 + t2037) * t1580;
t1426 = -t1930 + t2185;
t1423 = -t1509 * t1877 + t1567 * t1878 + t2182;
t1419 = -t1948 - t2160;
t1417 = -t1486 * t1877 + t1533 * t1878 + t2183;
t1413 = pkin(7) * t1531 + (-pkin(1) + t1942) * t1580;
t1412 = -t1914 + t2171;
t1411 = -t1922 - t2160;
t1409 = -t1895 - t2185;
t1406 = t1436 + t2019 - t2062 + t2159 + t2185;
t1403 = -t1892 + t2171;
t1400 = -t1903 + t2222;
t1396 = t1433 * t1877 + t2010;
t1395 = -t1904 - t2201;
t1393 = t1397 * t1883 + t1661 * t1880;
t1392 = t1397 * t1880 - t1661 * t1883;
t1389 = -t1424 * t1877 + t1431 * t1878 - t2182;
t1388 = -t1421 * t1877 + t1428 * t1878 - t2183;
t1386 = t1414 * t1878 + t1415 * t1877;
t1385 = t1423 * t1883 - t1430 * t1880 + t2221;
t1381 = t1417 * t1883 - t1426 * t1880 - t2199;
t1380 = -pkin(2) * t1396 - t2035;
t1379 = t1423 * t1880 + t1430 * t1883 - t2220;
t1378 = t1387 * t1883 + t1493 * t1880;
t1377 = t1387 * t1880 - t1493 * t1883;
t1376 = -pkin(1) * t1488 - t1905;
t1375 = -t1906 + t2201;
t1374 = t1417 * t1880 + t1426 * t1883 + t2204;
t1373 = -t1410 * t1877 + t1416 * t1878 - t2156;
t1371 = t1401 * t1878 + t1402 * t1877;
t1370 = -t1404 * t1877 + t1408 * t1878 + t2183;
t1369 = -t1399 * t1877 + t1407 * t1878 - t2182;
t1368 = -pkin(8) * t2010 - qJ(3) * t1396 - t1425 * t1877;
t1367 = -t1907 - t2187;
t1366 = -pkin(7) * t1488 + t1389 * t1883 - t1412 * t1880;
t1365 = -t1908 - t2201;
t1364 = t1372 * t1883 + t1440 * t1880;
t1363 = t1372 * t1880 - t1440 * t1883;
t1362 = -t1394 * t1877 + t1398 * t1878 - t2156;
t1361 = -t1909 - t2222;
t1360 = t1388 * t1883 - t1409 * t1880 + t2199;
t1359 = pkin(7) * t1491 + t1389 * t1880 + t1412 * t1883 - t2186;
t1358 = t1388 * t1880 + t1409 * t1883 - t2204;
t1357 = t1373 * t1883 - t1434 * t1880 - t2184;
t1356 = -pkin(2) * t1386 - t1949;
t1355 = -t1910 - t2187;
t1354 = t1373 * t1880 + t1434 * t1883 + t2170;
t1353 = t1370 * t1883 - t1406 * t1880 - t2199;
t1351 = t1369 * t1883 - t1403 * t1880 - t2221;
t1350 = t1370 * t1880 + t1406 * t1883 + t2204;
t1349 = -t1382 * t1877 + t1384 * t1878 - t2156;
t1348 = -pkin(1) * t1392 - t1902;
t1347 = t1362 * t1883 - t1419 * t1880 - t2184;
t1346 = t1369 * t1880 + t1403 * t1883 + t2220;
t1344 = t1362 * t1880 + t1419 * t1883 + t2170;
t1343 = -t1912 - t2187;
t1342 = -qJ(3) * t1386 - t1383 * t1877 + t1391 * t1878;
t1341 = -pkin(2) * t1371 - t1923;
t1340 = t1349 * t1883 - t1411 * t1880 - t2184;
t1339 = -pkin(7) * t1392 + t1368 * t1883 - t1380 * t1880;
t1338 = t1349 * t1880 + t1411 * t1883 + t2170;
t1337 = -pkin(1) * t1396 + pkin(7) * t1393 + t1368 * t1880 + t1380 * t1883;
t1336 = -pkin(1) * t1377 - t1911;
t1335 = -pkin(7) * t1377 + t1342 * t1883 - t1356 * t1880;
t1334 = -qJ(3) * t1371 - t1345 * t1877 + t1352 * t1878;
t1333 = -pkin(1) * t1386 + pkin(7) * t1378 + t1342 * t1880 + t1356 * t1883;
t1332 = -pkin(1) * t1363 - t1913;
t1331 = -pkin(7) * t1363 + t1334 * t1883 - t1341 * t1880;
t1330 = -pkin(1) * t1371 + pkin(7) * t1364 + t1334 * t1880 + t1341 * t1883;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1848, 0, -t1847, 0, t1946, -t1824, -t1932, -pkin(6) * t1932, t1815 * t1884 - t1951, t1797 * t1884 + t1850 * t1881, t1809 * t1884 + t1881 * t1965, t1814 * t1884 + t1951, t1807 * t1884 + t1881 * t1964, qJDD(2) * t1881 + t1839 * t1884, t1884 * t1757 - t1881 * t1746 - pkin(6) * (t1808 * t1881 + t1845 * t1884), t1884 * t1758 - t1881 * t1747 - pkin(6) * (t1810 * t1881 - t1843 * t1884), t1884 * t1737 - pkin(6) * (t1846 * t1881 + t1849 * t1884), -pkin(6) * (t1738 * t1881 + t1829 * t1884) - (pkin(1) * t1881 - pkin(7) * t1884) * t1737, t1708 * t1884 + t1752 * t1881, t1660 * t1884 + t1686 * t1881, t1667 * t1884 + t1724 * t1881, t1707 * t1884 + t1750 * t1881, t1668 * t1884 + t1725 * t1881, t1730 * t1884 - t1765 * t1881, t1884 * t1478 - t1881 * t1532 - pkin(6) * (t1656 * t1881 - t1709 * t1884), t1884 * t1485 - t1881 * t1546 - pkin(6) * (t1666 * t1881 - t1723 * t1884), t1884 * t1456 - t1881 * t1476 - pkin(6) * (t1615 * t1881 - t1687 * t1884), t1884 * t1429 - t1881 * t1449 - pkin(6) * (t1531 * t1881 - t1580 * t1884), t2051, -t2215, -t2217, t2050, -t2140, t2107, t1884 * t1381 - t1881 * t1395 - t2203, t1884 * t1385 - t1881 * t1400 - t2223, t1884 * t1357 - t1881 * t1367 - t2164, t1884 * t1339 - t1881 * t1348 - pkin(6) * (t1393 * t1881 - t1396 * t1884), t1591 * t1884 + t1597 * t1881, t2217, t2140, t2051, -t2215, t2050, t1884 * t1347 - t1881 * t1355 - t2164, t1884 * t1360 - t1881 * t1375 + t2203, t1884 * t1366 - t1881 * t1376 - pkin(6) * (t1491 * t1881 - t2174), t1884 * t1335 - t1881 * t1336 - pkin(6) * (t1378 * t1881 - t1386 * t1884), t2107, t2140, -t2217, t2050, t2215, t2051, t1884 * t1340 - t1881 * t1343 - t2164, t1884 * t1351 - t1881 * t1361 + t2223, t1884 * t1353 - t1881 * t1365 - t2203, t1884 * t1331 - t1881 * t1332 - pkin(6) * (t1364 * t1881 - t1371 * t1884); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1847, 0, t1848, 0, t1824, t1946, t1953, pkin(6) * t1953, t1815 * t1881 + t1950, t1797 * t1881 - t1850 * t1884, t1809 * t1881 - t1884 * t1965, t1814 * t1881 - t1950, t1807 * t1881 - t1884 * t1964, -qJDD(2) * t1884 + t1839 * t1881, t1881 * t1757 + t1884 * t1746 + pkin(6) * (t1808 * t1884 - t1845 * t1881), t1881 * t1758 + t1884 * t1747 + pkin(6) * (t1810 * t1884 + t1843 * t1881), t1881 * t1737 + pkin(6) * (t1846 * t1884 - t1849 * t1881), pkin(6) * (t1738 * t1884 - t1829 * t1881) - (-pkin(1) * t1884 - pkin(7) * t1881) * t1737, t1708 * t1881 - t1752 * t1884, t1660 * t1881 - t1686 * t1884, t1667 * t1881 - t1724 * t1884, t1707 * t1881 - t1750 * t1884, t1668 * t1881 - t1725 * t1884, t1730 * t1881 + t1765 * t1884, t1881 * t1478 + t1884 * t1532 + pkin(6) * (t1656 * t1884 + t1709 * t1881), t1881 * t1485 + t1884 * t1546 + pkin(6) * (t1666 * t1884 + t1723 * t1881), t1881 * t1456 + t1884 * t1476 + pkin(6) * (t1615 * t1884 + t1687 * t1881), t1881 * t1429 + t1884 * t1449 + pkin(6) * (t1531 * t1884 + t1580 * t1881), t2052, -t2216, t2211, t2053, -t2142, t2108, t1881 * t1381 + t1884 * t1395 - t2202, t1881 * t1385 + t1884 * t1400 + t2224, t1881 * t1357 + t1884 * t1367 + t2163, t1881 * t1339 + t1884 * t1348 + pkin(6) * (t1393 * t1884 + t1396 * t1881), t1591 * t1881 - t1597 * t1884, -t2211, t2142, t2052, -t2216, t2053, t1881 * t1347 + t1884 * t1355 + t2163, t1881 * t1360 + t1884 * t1375 + t2202, t1881 * t1366 + t1884 * t1376 + pkin(6) * (t1491 * t1884 + t2177), t1881 * t1335 + t1884 * t1336 + pkin(6) * (t1378 * t1884 + t1386 * t1881), t2108, t2142, t2211, t2053, t2216, t2052, t1881 * t1340 + t1884 * t1343 + t2163, t1881 * t1351 + t1884 * t1361 - t2224, t1881 * t1353 + t1884 * t1365 - t2202, t1881 * t1331 + t1884 * t1332 + pkin(6) * (t1364 * t1884 + t1371 * t1881); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1856, t1857, 0, 0, t1802, t1796, t1805, t1801, t1803, 0, t1734, t1733, t1713, t1716, t1706, t1659, t1664, t1705, t1665, t1729, t1457, t1477, t1439, t1413, t2074, -t1450, t2192, t2073, -t2124, t2075, t1374, t1379, t1354, t1337, t1588, -t2192, t2124, t2074, -t1450, t2073, t1344, t1358, t1359, t1333, t2075, t2124, t2192, t2073, t1450, t2074, t1338, t1346, t1350, t1330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1885, 0, 0, -g(3), -t1856, 0, t1815, t1797, t1809, t1814, t1807, t1839, t1757, t1758, t1737, pkin(7) * t1737, t1708, t1660, t1667, t1707, t1668, t1730, t1478, t1485, t1456, t1429, t2072, -t1453, t2190, t2071, -t2123, t2070, t1381, t1385, t1357, t1339, t1591, -t2190, t2123, t2072, -t1453, t2071, t1347, t1360, t1366, t1335, t2070, t2123, t2190, t2071, t1453, t2072, t1340, t1351, t1353, t1331; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1885, 0, qJDD(1), 0, g(3), 0, -t1857, 0, t1866, -t1850, -t1965, -t1866, -t1964, -qJDD(2), t1746, t1747, 0, pkin(1) * t1737, -t1752, -t1686, -t1724, -t1750, -t1725, t1765, t1532, t1546, t1476, t1449, -t2045, -t2148, t1555, -t2046, -t1558, -t2049, t1395, t1400, t1367, t1348, -t1597, -t1555, t1558, -t2045, -t2148, -t2046, t1355, t1375, t1376, t1336, -t2049, t1558, t1555, -t2046, t2148, -t2045, t1343, t1361, t1365, t1332; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1856, t1857, 0, 0, t1802, t1796, t1805, t1801, t1803, 0, t1734, t1733, t1713, t1716, t1706, t1659, t1664, t1705, t1665, t1729, t1457, t1477, t1439, t1413, t2074, -t1450, t2192, t2073, -t2124, t2075, t1374, t1379, t1354, t1337, t1588, -t2192, t2124, t2074, -t1450, t2073, t1344, t1358, t1359, t1333, t2075, t2124, t2192, t2073, t1450, t2074, t1338, t1346, t1350, t1330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1925, t1845, t1852, -t1960, t1863, t1960, 0, -t1829, t1811, 0, t1753, t1688, t1727, t1751, t1728, t1766, t1616, t1662, t1522, -qJ(3) * t1580, t2044, -t1470, t2162, t2047, -t2106, t2048, t1417, t1423, t1373, t1368, t1600, -t2162, t2106, t2044, -t1470, t2047, t1362, t1388, t1389, t1342, t2048, t2106, t2162, t2047, t1470, t2044, t1349, t1369, t1370, t1334; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1870, t1843, t1861, t1844, t1851, -t1870, t1829, 0, t1812, 0, t1934, -t1798, -t1778, -t1934, -t1777, t1844, t1586, t1593, -pkin(2) * t1687, -pkin(2) * t1580, -t1722, t1718, -t2059, t1722, t2065, t1838, t1426, t1430, t1434, t1380, t1838, t2059, -t2065, -t1722, t1718, t1722, t1419, t1409, t1412, t1356, t1838, -t2065, -t2059, t1722, -t1718, -t1722, t1411, t1403, t1406, t1341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1866, t1850, t1965, t1866, t1964, qJDD(2), -t1811, -t1812, 0, 0, t1752, t1686, t1724, t1750, t1725, -t1765, t1920, t1919, t1916, t1943, t2045, t2148, -t1555, t2046, t1558, t2049, t1904, t1903, t1907, t1902, t1597, t1555, -t1558, t2045, t2148, t2046, t1910, t1906, t1905, t1911, t2049, -t1558, -t1555, t2046, -t2148, t2045, t1912, t1909, t1908, t1913; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1816, t1776, t2078, t1928, t1819, -t1928, 0, t1748, t1657, 0, t1969, -t1574, -t1631, t1926, t1634, t1935, t1533, t1567, t1416, -pkin(8) * t1432, t1680, t1631, -t1634, t1969, -t1574, t1926, t1398, t1428, t1431, t1391, t1935, -t1634, -t1631, t1926, t1574, t1969, t1384, t1407, t1408, t1352; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1823, t1779, t1820, t1901, -t1780, t1823, -t1748, 0, t1658, 0, t1937, t2111, -t1625, t1936, t1628, t1924, t1486, t1509, t1410, t1425, t1924, t1625, -t1628, t1937, t2111, t1936, t1394, t1421, t1424, t1383, t1924, -t1628, -t1625, t1936, -t2111, t1937, t1382, t1399, t1404, t1345; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1934, t1798, t1778, t1934, t1777, -t1844, -t1657, -t1658, 0, 0, t1722, -t1718, t2059, -t1722, -t2065, -t1838, t1930, t1947, t2034, t2035, -t1838, -t2059, t2065, t1722, -t1718, -t1722, t1948, t1895, t1855 + t1914, t1949, -t1838, t2065, t2059, -t1722, t1718, t1722, t1922, t1855 + t1892, t1888 - t2159, t1923; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1691, -t2066, -t1917, -t1985, t1761, t1985, 0, t1661, t1507, 0, t1985, t1917, -t1761, t1691, -t2066, -t1985, t1442, t2096, t1459, -qJ(5) * t1493, t1985, -t1761, -t1917, -t1985, t2066, t1691, t1420, t1427, t1582, t1405; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1984, t2064, t2058, -t1690, -t2063, t1984, -t1661, 0, t1508, 0, t1984, -t2058, t2063, -t1984, t2064, -t1690, t1441, t1460, pkin(4) * t1649, -pkin(4) * t1493, t1984, t2063, t2058, -t1690, -t2064, -t1984, t1418, t1523, t1422, t1390; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1722, -t1718, t2059, -t1722, -t2065, -t1838, -t1507, -t1508, 0, 0, -t1838, -t2059, t2065, t1722, -t1718, -t1722, t1971, t1900, t1855 + t1921, t1972, -t1838, t2065, t2059, -t1722, t1718, t1722, t1944, t1855 + t1894, t1888, t1945; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1838, -t2059, t2065, t1722, -t1718, -t1722, 0, t1463, t1461, 0, -t1838, t2065, t2059, -t1722, t1718, t1722, -t2021, t1855 + t1898, t1890, -t2022; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1985, -t1917, t1761, -t1691, t2066, t1985, -t1463, 0, t1493, 0, -t1985, t1761, t1917, t1985, -t2066, -t1691, t2077, t1440 - t2025, -t2026, -t2029; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1984, t2058, -t2063, t1984, -t2064, t1690, -t1461, -t1493, 0, 0, -t1984, -t2063, -t2058, t1690, t2064, t1984, qJ(6) * t2057 + t1854 - t1899, -qJ(6) * t2064 + t2027, t1886 - t2054, qJ(6) * t1440 - t2028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1838, t2065, t2059, -t1722, t1718, t1722, 0, t1438, -t1436, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1984, -t2063, -t2058, t1690, t2064, t1984, -t1438, 0, t1440, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1985, -t1761, -t1917, -t1985, t2066, t1691, t1436, -t1440, 0, 0;];
m_new_reg  = t1;

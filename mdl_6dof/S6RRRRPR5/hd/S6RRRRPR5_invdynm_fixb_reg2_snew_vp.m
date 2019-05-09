% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRRRPR5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 20:33
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRRRPR5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR5_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR5_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR5_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPR5_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 20:32:43
% EndTime: 2019-05-07 20:33:35
% DurationCPUTime: 56.46s
% Computational Cost: add. (280818->958), mult. (563265->1223), div. (0->0), fcn. (410925->10), ass. (0->626)
t1925 = cos(qJ(4));
t1920 = sin(qJ(4));
t1921 = sin(qJ(3));
t1922 = sin(qJ(2));
t1926 = cos(qJ(3));
t1927 = cos(qJ(2));
t1882 = (t1921 * t1927 + t1922 * t1926) * qJD(1);
t2019 = qJD(2) + qJD(3);
t1844 = t1882 * t1920 - t1925 * t2019;
t2061 = qJD(1) * t1922;
t1880 = -t1926 * t1927 * qJD(1) + t1921 * t2061;
t2058 = qJD(2) * t1927;
t1911 = qJD(1) * t2058;
t2014 = t1922 * qJDD(1);
t1890 = t1911 + t2014;
t1914 = t1927 * qJDD(1);
t2059 = qJD(2) * t1922;
t2002 = qJD(1) * t2059;
t1970 = t1914 - t2002;
t1812 = -t1880 * qJD(3) + t1926 * t1890 + t1921 * t1970;
t2013 = qJDD(2) + qJDD(3);
t1942 = -t1925 * t1812 - t1920 * t2013;
t1750 = -t1844 * qJD(4) - t1942;
t1876 = qJD(4) + t1880;
t2031 = t1844 * t1876;
t2091 = -t2031 + t1750;
t2044 = t2091 * t1920;
t1846 = t1925 * t1882 + t1920 * t2019;
t1825 = t1876 * t1846;
t1993 = t1920 * t1812 - t1925 * t2013;
t1952 = qJD(4) * t1846 + t1993;
t2096 = t1825 + t1952;
t1629 = -t2096 * t1925 - t2044;
t1842 = t1846 ^ 2;
t2076 = t1844 ^ 2;
t2094 = t1842 - t2076;
t1576 = t1629 * t1921 - t1926 * t2094;
t1578 = t1629 * t1926 + t1921 * t2094;
t1489 = t1576 * t1922 - t1578 * t1927;
t2043 = t2091 * t1925;
t1625 = -t2096 * t1920 + t2043;
t1923 = sin(qJ(1));
t1928 = cos(qJ(1));
t2182 = t1489 * t1923 + t1625 * t1928;
t2181 = t1489 * t1928 - t1625 * t1923;
t2075 = t1876 ^ 2;
t1821 = t2076 - t2075;
t1804 = t1846 * t1844;
t1992 = t1921 * t1890 - t1926 * t1970;
t1811 = -t1882 * qJD(3) - t1992;
t1808 = qJDD(4) - t1811;
t2097 = t1804 + t1808;
t2113 = t2097 * t1920;
t1690 = t1821 * t1925 - t2113;
t1721 = -t1825 + t1952;
t1609 = t1690 * t1921 + t1721 * t1926;
t1613 = t1690 * t1926 - t1721 * t1921;
t1527 = t1609 * t1922 - t1613 * t1927;
t2112 = t2097 * t1925;
t1686 = t1821 * t1920 + t2112;
t2180 = t1527 * t1923 + t1686 * t1928;
t2179 = t1527 * t1928 - t1686 * t1923;
t1822 = t1842 - t2075;
t1994 = -t1808 + t1804;
t2040 = t1994 * t1920;
t2150 = -t1822 * t1925 - t2040;
t2090 = t2031 + t1750;
t2039 = t1994 * t1925;
t2149 = t1822 * t1920 - t2039;
t2155 = t1921 * t2090 + t1926 * t2149;
t2156 = t1921 * t2149 - t1926 * t2090;
t2176 = -t1922 * t2156 + t1927 * t2155;
t2178 = t1923 * t2176 - t1928 * t2150;
t2177 = t1923 * t2150 + t1928 * t2176;
t1488 = t1576 * t1927 + t1578 * t1922;
t1524 = t1609 * t1927 + t1613 * t1922;
t2175 = t1922 * t2155 + t1927 * t2156;
t1770 = t2075 + t1842;
t1655 = t1770 * t1925 + t2113;
t2174 = pkin(1) * t1655;
t2089 = -t2075 - t2076;
t2108 = t1925 * t2089 + t2040;
t2134 = t1921 * t2096 + t1926 * t2108;
t2137 = t1921 * t2108 - t1926 * t2096;
t2146 = t1922 * t2134 + t1927 * t2137;
t2173 = pkin(1) * t2146;
t2172 = pkin(2) * t1655;
t2171 = pkin(3) * t1655;
t2170 = pkin(7) * t2146;
t2169 = pkin(9) * t1655;
t1670 = t1770 * t1920 - t2112;
t2168 = pkin(9) * t1670;
t2165 = t1655 * t1923;
t2164 = t1655 * t1928;
t2163 = t1670 * t1921;
t2162 = t1670 * t1926;
t2109 = t1920 * t2089 - t2039;
t2147 = -t1922 * t2137 + t1927 * t2134;
t2157 = -pkin(1) * t2109 + pkin(7) * t2147;
t2154 = pkin(6) * (t1923 * t2147 - t1928 * t2109);
t2153 = pkin(6) * (t1923 * t2109 + t1928 * t2147);
t2152 = pkin(2) * t2137;
t2151 = pkin(8) * t2137;
t2148 = -pkin(2) * t2109 + pkin(8) * t2134;
t2143 = pkin(3) * t2109;
t2142 = pkin(9) * t2108;
t2141 = pkin(9) * t2109;
t2140 = -qJ(5) * t1920 - pkin(3);
t2027 = t1876 * t1920;
t1706 = t1844 * t2027 - t1925 * t1952;
t2026 = t1876 * t1925;
t2001 = t1844 * t2026;
t1933 = t1920 * t1952 + t2001;
t2006 = t1921 * t1804;
t2081 = t1926 * t1933 - t2006;
t2005 = t1926 * t1804;
t2082 = t1921 * t1933 + t2005;
t2104 = -t1922 * t2082 + t1927 * t2081;
t2136 = -t1706 * t1928 + t1923 * t2104;
t2100 = (t1844 * t1920 + t1846 * t1925) * t1876;
t1815 = t1846 * t2027;
t1967 = t1815 - t2001;
t2080 = t1808 * t1921 + t1926 * t1967;
t2083 = -t1926 * t1808 + t1921 * t1967;
t2106 = -t1922 * t2083 + t1927 * t2080;
t2135 = t1923 * t2106 + t1928 * t2100;
t2133 = t1706 * t1923 + t1928 * t2104;
t2132 = -t1923 * t2100 + t1928 * t2106;
t2093 = t1842 + t2076;
t2131 = pkin(3) * t2093;
t2130 = qJ(5) * t2091;
t1919 = sin(qJ(6));
t1924 = cos(qJ(6));
t1787 = -t1924 * t1844 + t1846 * t1919;
t1789 = t1844 * t1919 + t1846 * t1924;
t1731 = t1789 * t1787;
t1806 = -qJDD(6) + t1808;
t2099 = -t1731 - t1806;
t2127 = t1919 * t2099;
t2125 = t1921 * t2093;
t1835 = t1882 * t1880;
t2095 = -t1835 + t2013;
t2123 = t1921 * t2095;
t2120 = t1924 * t2099;
t2118 = t1926 * t2093;
t2116 = t1926 * t2095;
t1867 = t2019 * t1880;
t2111 = -t1867 + t1812;
t1918 = t1927 ^ 2;
t1899 = t1923 * g(1) - t1928 * g(2);
t1958 = qJDD(1) * pkin(1) + t1899;
t1814 = ((pkin(8) * t1918 + pkin(7)) * qJD(1) - pkin(2) * t2059) * qJD(1) + t1914 * pkin(2) - (qJD(2) * pkin(2) - pkin(8) * t2061) * t2061 + t1958;
t1709 = t1750 * t1920 + t1846 * t2026;
t1710 = t1750 * t1925 - t1815;
t1968 = t1926 * t1710 + t2006;
t1969 = t1921 * t1710 - t2005;
t2079 = -t1922 * t1969 + t1927 * t1968;
t2110 = -t1928 * t1709 + t1923 * t2079;
t2107 = t1709 * t1923 + t1928 * t2079;
t2105 = t1922 * t2080 + t1927 * t2083;
t2103 = t1922 * t2081 + t1927 * t2082;
t2012 = t2019 ^ 2;
t1996 = t2019 * t1882;
t1651 = -t2111 * pkin(9) + (-t1811 + t1996) * pkin(3) - t1814;
t1900 = g(1) * t1928 + g(2) * t1923;
t1943 = qJDD(1) * pkin(7) - t1900;
t2077 = qJD(1) ^ 2;
t1937 = -pkin(1) * t2077 + t1943;
t1859 = -t1922 * g(3) + t1927 * t1937;
t1915 = t1918 * t2077;
t1929 = qJD(2) ^ 2;
t1904 = -t1915 - t1929;
t1801 = pkin(2) * t1904 + t1914 * pkin(8) + t1859;
t2067 = t1927 * g(3);
t1930 = -t1922 * t1943 - t2067 - t1890 * pkin(8) + qJDD(2) * pkin(2) + (pkin(8) * t2058 + (pkin(2) * t1927 + pkin(1)) * t2061) * qJD(1);
t1734 = t1926 * t1801 + t1921 * t1930;
t1832 = pkin(3) * t1880 - pkin(9) * t1882;
t1665 = -pkin(3) * t2012 + pkin(9) * t2013 - t1880 * t1832 + t1734;
t1564 = -t1925 * t1651 + t1920 * t1665;
t1795 = pkin(4) * t1844 - qJ(5) * t1846;
t1538 = -t1808 * pkin(4) - qJ(5) * t2075 + t1846 * t1795 + qJDD(5) + t1564;
t1476 = t1994 * pkin(5) - pkin(10) * t2090 + t1538;
t2057 = qJD(5) * t1876;
t1864 = 0.2e1 * t2057;
t1565 = t1920 * t1651 + t1925 * t1665;
t1963 = -pkin(4) * t2075 + t1808 * qJ(5) - t1844 * t1795 + t1565;
t1535 = t1864 + t1963;
t1980 = -pkin(5) * t1876 - pkin(10) * t1846;
t1482 = -pkin(5) * t2076 + pkin(10) * t1952 + t1876 * t1980 + t1535;
t1427 = -t1924 * t1476 + t1919 * t1482;
t1428 = t1919 * t1476 + t1924 * t1482;
t1382 = -t1924 * t1427 + t1428 * t1919;
t1479 = t1920 * t1564 + t1925 * t1565;
t1636 = -t1787 * qJD(6) + t1924 * t1750 + t1919 * t1952;
t1873 = -qJD(6) + t1876;
t1760 = t1787 * t1873;
t2098 = t1760 + t1636;
t1450 = t1535 * t1925 + t1538 * t1920;
t1733 = t1921 * t1801 - t1926 * t1930;
t1664 = -t2013 * pkin(3) - t2012 * pkin(9) + t1882 * t1832 + t1733;
t1934 = t1952 * pkin(4) + t1664 - t2130;
t1998 = pkin(4) * t1876 - 0.2e1 * qJD(5);
t1547 = t1846 * t1998 + t1934;
t1420 = t1450 * t1921 - t1547 * t1926;
t1940 = pkin(9) * t1450 + (-pkin(4) * t1925 + t2140) * t1547;
t2092 = pkin(2) * t1420 + t1940;
t1383 = t1919 * t1427 + t1924 * t1428;
t2074 = pkin(4) + pkin(5);
t2087 = qJ(5) * t1383 - t1382 * t2074;
t1995 = t1919 * t1750 - t1924 * t1952;
t1587 = (qJD(6) + t1873) * t1789 + t1995;
t1590 = -t1760 + t1636;
t1499 = -t1587 * t1919 - t1590 * t1924;
t1501 = -t1587 * t1924 + t1590 * t1919;
t2086 = qJ(5) * t1501 - t1499 * t2074;
t1785 = t1787 ^ 2;
t1868 = t1873 ^ 2;
t1704 = -t1868 - t1785;
t1596 = t1704 * t1919 + t2120;
t1597 = t1704 * t1924 - t2127;
t2085 = qJ(5) * t1597 - t1596 * t2074 + t1427;
t1786 = t1789 ^ 2;
t1740 = -t1786 - t1868;
t1672 = -t1731 + t1806;
t2053 = t1672 * t1919;
t1619 = t1740 * t1924 + t2053;
t2052 = t1672 * t1924;
t1620 = -t1740 * t1919 + t2052;
t2084 = qJ(5) * t1620 - t1619 * t2074 + t1428;
t2078 = t1922 * t1968 + t1927 * t1969;
t1878 = t1880 ^ 2;
t1879 = t1882 ^ 2;
t1637 = -t1733 * t1926 + t1734 * t1921;
t2072 = pkin(2) * t1637;
t1776 = t1867 + t1812;
t1953 = qJD(2) * t1882 - t1992;
t1696 = -t1776 * t1926 + t1921 * t1953;
t2071 = pkin(2) * t1696;
t2070 = pkin(3) * t1921;
t2069 = pkin(10) * t1382;
t2068 = pkin(10) * t1383;
t2063 = qJ(5) * t1925;
t2062 = qJD(1) * qJD(2);
t1917 = t1922 ^ 2;
t2060 = t2077 * t1917;
t2055 = t1637 * t1922;
t2054 = t1637 * t1927;
t2046 = t2090 * t1920;
t2045 = t2090 * t1925;
t2037 = t1814 * t1921;
t2036 = t1814 * t1926;
t1829 = t1835 + t2013;
t2033 = t1829 * t1921;
t2032 = t1829 * t1926;
t2030 = t1873 * t1789;
t2029 = t1873 * t1919;
t2028 = t1873 * t1924;
t1883 = pkin(7) * t2077 + t1958;
t2025 = t1883 * t1922;
t2024 = t1883 * t1927;
t1891 = t1914 - 0.2e1 * t2002;
t1847 = t1891 * t1927;
t1906 = t1927 * t2077 * t1922;
t1897 = qJDD(2) + t1906;
t2023 = t1897 * t1922;
t1898 = qJDD(2) - t1906;
t2022 = t1898 * t1922;
t2021 = t1898 * t1927;
t1497 = t1993 * pkin(5) + t2076 * pkin(10) + t1934 + (pkin(5) * qJD(4) - t1980 + t1998) * t1846;
t2020 = t1919 * t1497;
t1660 = t1920 * t1664;
t1491 = t1924 * t1497;
t1661 = t1925 * t1664;
t2016 = -pkin(3) * t1664 + pkin(9) * t1479;
t2015 = t1917 + t1918;
t2010 = -pkin(3) * t1926 - pkin(2);
t2008 = t1921 * t1731;
t2007 = t1926 * t1731;
t2004 = t1923 * t1835;
t2003 = t1928 * t1835;
t1728 = (qJD(4) + t1876) * t1844 + t1942;
t2000 = pkin(3) * t1728 + t1660 + t2168;
t1999 = -pkin(3) * t2096 - t1661 + t2142;
t1997 = -pkin(10) * t1619 - t1491;
t1638 = t1733 * t1921 + t1926 * t1734;
t1858 = t1922 * t1937 + t2067;
t1800 = t1858 * t1922 + t1927 * t1859;
t1991 = -t1899 * t1923 - t1928 * t1900;
t1990 = t1923 * t1906;
t1989 = t1928 * t1906;
t1659 = -t1785 - t1786;
t1955 = -pkin(10) * t1501 - t1383;
t1363 = t1659 * t2074 + t1955;
t1956 = -pkin(10) * t1499 - t1382;
t1365 = qJ(5) * t1659 + t1956;
t1440 = t1499 * t1920 + t1501 * t1925;
t1988 = pkin(3) * t1659 + pkin(9) * t1440 + t1925 * t1363 + t1920 * t1365;
t1351 = t1382 * t1920 + t1383 * t1925;
t1360 = -t1497 * t2074 - t2068;
t1368 = -qJ(5) * t1497 - t2069;
t1987 = -pkin(3) * t1497 + pkin(9) * t1351 + t1925 * t1360 + t1920 * t1368;
t1586 = (qJD(6) - t1873) * t1789 + t1995;
t1965 = -pkin(10) * t1597 - t1491;
t1413 = t1586 * t2074 + t1965;
t1966 = -pkin(10) * t1596 - t2020;
t1441 = qJ(5) * t1586 + t1966;
t1508 = t1596 * t1920 + t1597 * t1925;
t1986 = pkin(3) * t1586 + pkin(9) * t1508 + t1925 * t1413 + t1920 * t1441;
t1964 = -pkin(10) * t1620 + t2020;
t1415 = t2074 * t2098 + t1964;
t1443 = qJ(5) * t2098 + t1997;
t1532 = t1619 * t1920 + t1620 * t1925;
t1985 = pkin(3) * t2098 + pkin(9) * t1532 + t1925 * t1415 + t1920 * t1443;
t1514 = pkin(4) * t2093 + t1535;
t1516 = qJ(5) * t2093 + t1538;
t1628 = -t1721 * t1925 + t2046;
t1984 = pkin(9) * t1628 + t1925 * t1514 + t1920 * t1516 + t2131;
t1723 = (-qJD(4) + t1876) * t1846 - t1993;
t1630 = t1723 * t1925 + t2046;
t1983 = pkin(9) * t1630 + t1479 + t2131;
t1456 = t1479 * t1921 - t1664 * t1926;
t1982 = pkin(2) * t1456 + t2016;
t1857 = -t1879 - t2012;
t1777 = t1857 * t1926 - t2033;
t1981 = pkin(2) * t1777 - t1734;
t1894 = qJDD(1) * t1928 - t1923 * t2077;
t1979 = -pkin(6) * t1894 - g(3) * t1923;
t1977 = t1921 * t1867;
t1976 = t1921 * t1996;
t1975 = t1926 * t1867;
t1974 = t1926 * t1996;
t1973 = -pkin(4) * t1538 + qJ(5) * t1535;
t1972 = -pkin(4) * t2090 - qJ(5) * t1721;
t1478 = -t1564 * t1925 + t1565 * t1920;
t1799 = t1858 * t1927 - t1859 * t1922;
t1961 = t1899 * t1928 - t1900 * t1923;
t1960 = t1999 + t2152;
t1598 = t1728 * t1926 + t2163;
t1959 = pkin(2) * t1598 + t2000;
t1828 = -t2012 - t1878;
t1758 = t1828 * t1921 + t2116;
t1957 = pkin(2) * t1758 - t1733;
t1932 = 0.2e1 * qJD(5) * t1846 - t1934;
t1519 = -pkin(4) * t1825 + t1932 + t2130;
t1951 = pkin(3) * t2091 + pkin(4) * t2043 + t1920 * t1519 - t2168;
t1345 = t1351 * t1921 - t1497 * t1926;
t1950 = pkin(2) * t1345 + t1987;
t1425 = t1440 * t1921 + t1659 * t1926;
t1949 = pkin(2) * t1425 + t1988;
t1454 = t1508 * t1921 + t1586 * t1926;
t1948 = pkin(2) * t1454 + t1986;
t1461 = t1532 * t1921 + t1926 * t2098;
t1947 = pkin(2) * t1461 + t1985;
t1568 = t1628 * t1921 + t2118;
t1946 = pkin(2) * t1568 + t1984;
t1569 = t1630 * t1921 + t2118;
t1945 = pkin(2) * t1569 + t1983;
t1520 = (-t2096 - t1825) * pkin(4) + t1932;
t1944 = t1925 * t1520 + t2096 * t2140 + t2142;
t1592 = t1926 * t2091 - t2163;
t1941 = pkin(2) * t1592 + t1951;
t1938 = t1944 + t2152;
t1936 = pkin(4) * t1770 + qJ(5) * t2097 + t1963;
t1931 = -pkin(4) * t1994 + qJ(5) * t2089 - t1538;
t1903 = t1915 - t1929;
t1902 = -t1929 - t2060;
t1901 = t1929 - t2060;
t1896 = -t1915 + t2060;
t1895 = t1915 + t2060;
t1893 = qJDD(1) * t1923 + t1928 * t2077;
t1892 = t2015 * qJDD(1);
t1889 = 0.2e1 * t1911 + t2014;
t1887 = t1927 * t1897;
t1886 = t2015 * t2062;
t1877 = -pkin(6) * t1893 + g(3) * t1928;
t1863 = -t1879 + t2012;
t1862 = t1878 - t2012;
t1861 = t1890 * t1927 - t1917 * t2062;
t1860 = -t1918 * t2062 - t1922 * t1970;
t1856 = -t1902 * t1922 - t2021;
t1855 = -t1901 * t1922 + t1887;
t1854 = t1904 * t1927 - t2023;
t1853 = t1903 * t1927 - t2022;
t1852 = t1902 * t1927 - t2022;
t1851 = t1901 * t1927 + t2023;
t1850 = t1904 * t1922 + t1887;
t1849 = t1903 * t1922 + t2021;
t1848 = (t1890 + t1911) * t1922;
t1837 = -t1889 * t1922 + t1847;
t1836 = t1889 * t1927 + t1891 * t1922;
t1834 = t1879 - t1878;
t1819 = -t1975 + t1976;
t1818 = -t1977 - t1974;
t1817 = -pkin(7) * t1852 - t2024;
t1816 = -pkin(7) * t1850 - t2025;
t1813 = -t1878 - t1879;
t1810 = -pkin(1) * t1852 + t1859;
t1809 = -pkin(1) * t1850 + t1858;
t1791 = pkin(1) * t1891 + pkin(7) * t1854 + t2024;
t1790 = -pkin(1) * t1889 + pkin(7) * t1856 - t2025;
t1782 = t1862 * t1926 - t2033;
t1781 = -t1863 * t1921 + t2116;
t1780 = t1862 * t1921 + t2032;
t1779 = t1863 * t1926 + t2123;
t1778 = -t1857 * t1921 - t2032;
t1771 = (0.2e1 * qJD(3) + qJD(2)) * t1882 + t1992;
t1768 = pkin(1) * t1883 + pkin(7) * t1800;
t1766 = t1926 * t1812 - t1976;
t1765 = t1921 * t1812 + t1974;
t1764 = -t1921 * t1811 + t1975;
t1763 = t1926 * t1811 + t1977;
t1762 = pkin(1) * t1895 + pkin(7) * t1892 + t1800;
t1759 = t1828 * t1926 - t2123;
t1757 = -t1786 + t1868;
t1756 = t1785 - t1868;
t1742 = -t1818 * t1922 + t1819 * t1927;
t1741 = t1818 * t1927 + t1819 * t1922;
t1730 = -pkin(8) * t1777 - t2036;
t1729 = t1786 - t1785;
t1719 = -pkin(8) * t1758 - t2037;
t1714 = -t1780 * t1922 + t1782 * t1927;
t1713 = -t1779 * t1922 + t1781 * t1927;
t1712 = t1780 * t1927 + t1782 * t1922;
t1711 = t1779 * t1927 + t1781 * t1922;
t1700 = -t1777 * t1922 + t1778 * t1927;
t1699 = t1777 * t1927 + t1778 * t1922;
t1698 = t1776 * t1921 + t1926 * t1953;
t1697 = -t1771 * t1926 - t1921 * t2111;
t1695 = -t1771 * t1921 + t1926 * t2111;
t1682 = -t1765 * t1922 + t1766 * t1927;
t1681 = -t1763 * t1922 + t1764 * t1927;
t1680 = t1765 * t1927 + t1766 * t1922;
t1679 = t1763 * t1927 + t1764 * t1922;
t1678 = (t1787 * t1924 - t1789 * t1919) * t1873;
t1677 = (t1787 * t1919 + t1789 * t1924) * t1873;
t1676 = -t1758 * t1922 + t1759 * t1927;
t1675 = t1758 * t1927 + t1759 * t1922;
t1650 = -pkin(2) * t2111 + pkin(8) * t1778 - t2037;
t1639 = -pkin(2) * t1771 + pkin(8) * t1759 + t2036;
t1635 = -qJD(6) * t1789 - t1995;
t1634 = t1756 * t1924 + t2053;
t1633 = -t1757 * t1919 + t2120;
t1632 = t1756 * t1919 - t2052;
t1631 = t1757 * t1924 + t2127;
t1626 = t1723 * t1920 - t2045;
t1624 = -t1721 * t1920 - t2045;
t1618 = pkin(2) * t1814 + pkin(8) * t1638;
t1617 = -t1696 * t1922 + t1698 * t1927;
t1616 = -t1695 * t1922 + t1697 * t1927;
t1615 = t1696 * t1927 + t1698 * t1922;
t1614 = t1695 * t1927 + t1697 * t1922;
t1600 = -t1728 * t1921 + t2162;
t1594 = -t1921 * t2091 - t2162;
t1583 = -pkin(1) * t1699 - t1981;
t1582 = t1636 * t1924 + t1789 * t2029;
t1581 = t1636 * t1919 - t1789 * t2028;
t1580 = -t1635 * t1919 - t1787 * t2028;
t1579 = -t1635 * t1924 + t1787 * t2029;
t1574 = t1677 * t1920 + t1678 * t1925;
t1573 = -t1677 * t1925 + t1678 * t1920;
t1572 = t1661 + t2169;
t1571 = t1630 * t1926 - t2125;
t1570 = t1628 * t1926 - t2125;
t1567 = -pkin(1) * t1675 - t1957;
t1566 = t1660 - t2141;
t1561 = -pkin(8) * t1696 - t1637;
t1560 = t1574 * t1926 + t1806 * t1921;
t1559 = t1574 * t1921 - t1806 * t1926;
t1550 = -pkin(2) * t1813 + pkin(8) * t1698 + t1638;
t1549 = -pkin(1) * t1615 - t2071;
t1548 = -pkin(7) * t1699 - t1650 * t1922 + t1730 * t1927;
t1545 = t1638 * t1927 - t2055;
t1544 = t1638 * t1922 + t2054;
t1543 = -pkin(7) * t1675 - t1639 * t1922 + t1719 * t1927;
t1542 = t1632 * t1920 + t1634 * t1925;
t1541 = t1631 * t1920 + t1633 * t1925;
t1540 = -t1632 * t1925 + t1634 * t1920;
t1539 = -t1631 * t1925 + t1633 * t1920;
t1537 = -pkin(1) * t2111 + pkin(7) * t1700 + t1650 * t1927 + t1730 * t1922;
t1536 = -pkin(3) * t1624 - t1972;
t1534 = t1565 + t2171;
t1533 = t1564 - t2143;
t1531 = -t1619 * t1925 + t1620 * t1920;
t1529 = -pkin(1) * t1771 + pkin(7) * t1676 + t1639 * t1927 + t1719 * t1922;
t1512 = -t1598 * t1922 + t1600 * t1927;
t1510 = t1598 * t1927 + t1600 * t1922;
t1507 = -t1596 * t1925 + t1597 * t1920;
t1504 = -t1592 * t1922 + t1594 * t1927;
t1502 = t1592 * t1927 + t1594 * t1922;
t1500 = -t1586 * t1924 - t1919 * t2098;
t1498 = -t1586 * t1919 + t1924 * t2098;
t1495 = t1581 * t1920 + t1582 * t1925;
t1494 = -t1579 * t1920 + t1580 * t1925;
t1493 = -t1581 * t1925 + t1582 * t1920;
t1492 = t1579 * t1925 + t1580 * t1920;
t1486 = -t1569 * t1922 + t1571 * t1927;
t1485 = -t1568 * t1922 + t1570 * t1927;
t1484 = t1569 * t1927 + t1571 * t1922;
t1483 = t1568 * t1927 + t1570 * t1922;
t1481 = -pkin(1) * t1544 - t2072;
t1473 = -t1559 * t1922 + t1560 * t1927;
t1472 = t1559 * t1927 + t1560 * t1922;
t1471 = t1495 * t1926 - t2008;
t1470 = t1494 * t1926 + t2008;
t1469 = t1495 * t1921 + t2007;
t1468 = t1494 * t1921 - t2007;
t1467 = t1542 * t1926 + t1587 * t1921;
t1466 = t1541 * t1926 - t1590 * t1921;
t1465 = t1542 * t1921 - t1587 * t1926;
t1464 = t1541 * t1921 + t1590 * t1926;
t1463 = -t1931 - t2143;
t1462 = t1532 * t1926 - t1921 * t2098;
t1460 = -t1936 - 0.2e1 * t2057 - t2171;
t1459 = -t1520 * t1920 - t2063 * t2096 - t2141;
t1458 = -pkin(4) * t2044 + t1519 * t1925 - t2169;
t1457 = t1479 * t1926 + t1664 * t1921;
t1455 = t1508 * t1926 - t1586 * t1921;
t1453 = -pkin(9) * t1626 - t1478;
t1452 = -pkin(7) * t1544 - pkin(8) * t2054 - t1618 * t1922;
t1451 = pkin(1) * t1814 + pkin(7) * t1545 - pkin(8) * t2055 + t1618 * t1927;
t1449 = t1535 * t1920 - t1538 * t1925;
t1447 = -pkin(7) * t1615 - t1550 * t1922 + t1561 * t1927;
t1446 = -pkin(1) * t1813 + pkin(7) * t1617 + t1550 * t1927 + t1561 * t1922;
t1445 = -pkin(8) * t1598 - t1534 * t1921 + t1572 * t1926;
t1444 = -t1533 * t1921 + t1566 * t1926 - t2151;
t1439 = t1498 * t1920 + t1500 * t1925;
t1438 = -t1499 * t1925 + t1501 * t1920;
t1437 = -t1498 * t1925 + t1500 * t1920;
t1434 = pkin(8) * t1600 + t1534 * t1926 + t1572 * t1921 + t2172;
t1433 = -pkin(1) * t1510 - t1959;
t1432 = t1533 * t1926 + t1566 * t1921 + t2148;
t1431 = t1439 * t1926 - t1729 * t1921;
t1430 = t1439 * t1921 + t1729 * t1926;
t1429 = -t1960 - t2173;
t1426 = t1440 * t1926 - t1659 * t1921;
t1422 = -pkin(9) * t1624 - t1514 * t1920 + t1516 * t1925;
t1421 = t1450 * t1926 + t1547 * t1921;
t1419 = -t1469 * t1922 + t1471 * t1927;
t1418 = -t1468 * t1922 + t1470 * t1927;
t1417 = t1469 * t1927 + t1471 * t1922;
t1416 = t1468 * t1927 + t1470 * t1922;
t1411 = -pkin(8) * t1569 + t1453 * t1926 + t1626 * t2070;
t1410 = -t1465 * t1922 + t1467 * t1927;
t1409 = -t1464 * t1922 + t1466 * t1927;
t1408 = t1465 * t1927 + t1467 * t1922;
t1407 = t1464 * t1927 + t1466 * t1922;
t1406 = -t1461 * t1922 + t1462 * t1927;
t1405 = t1461 * t1927 + t1462 * t1922;
t1404 = -t1456 * t1922 + t1457 * t1927;
t1403 = t1456 * t1927 + t1457 * t1922;
t1402 = pkin(8) * t1571 + t1921 * t1453 + t1626 * t2010;
t1401 = -t1454 * t1922 + t1455 * t1927;
t1400 = t1454 * t1927 + t1455 * t1922;
t1399 = -t1938 - t2173;
t1398 = -pkin(1) * t1502 - t1941;
t1397 = -pkin(9) * t1449 + (pkin(4) * t1920 - t2063) * t1547;
t1396 = t1459 * t1926 - t1463 * t1921 - t2151;
t1395 = -pkin(3) * t1449 - t1973;
t1394 = -pkin(8) * t1592 + t1458 * t1926 - t1460 * t1921;
t1393 = -pkin(1) * t1484 - t1945;
t1392 = t1459 * t1921 + t1463 * t1926 + t2148;
t1391 = pkin(8) * t1594 + t1458 * t1921 + t1460 * t1926 - t2172;
t1390 = -pkin(8) * t1568 + t1422 * t1926 - t1536 * t1921;
t1389 = -pkin(8) * t1456 + (-pkin(9) * t1926 + t2070) * t1478;
t1388 = -pkin(1) * t1483 - t1946;
t1387 = -pkin(2) * t1624 + pkin(8) * t1570 + t1422 * t1921 + t1536 * t1926;
t1386 = -t1430 * t1922 + t1431 * t1927;
t1385 = t1430 * t1927 + t1431 * t1922;
t1384 = -pkin(3) * t1531 - t2084;
t1381 = -t1425 * t1922 + t1426 * t1927;
t1380 = t1425 * t1927 + t1426 * t1922;
t1379 = -pkin(3) * t1507 - t2085;
t1378 = -t1420 * t1922 + t1421 * t1927;
t1377 = t1420 * t1927 + t1421 * t1922;
t1376 = pkin(8) * t1457 + (-pkin(9) * t1921 + t2010) * t1478;
t1375 = -pkin(7) * t1510 - t1434 * t1922 + t1445 * t1927;
t1374 = -pkin(3) * t1438 - t2086;
t1373 = -t1432 * t1922 + t1444 * t1927 - t2170;
t1372 = pkin(7) * t1512 + t1434 * t1927 + t1445 * t1922 + t2174;
t1371 = -pkin(9) * t1531 - t1415 * t1920 + t1443 * t1925;
t1370 = t1432 * t1927 + t1444 * t1922 + t2157;
t1369 = -pkin(9) * t1507 - t1413 * t1920 + t1441 * t1925;
t1366 = -pkin(1) * t1403 - t1982;
t1361 = -pkin(7) * t1484 - t1402 * t1922 + t1411 * t1927;
t1358 = -pkin(1) * t1626 + pkin(7) * t1486 + t1402 * t1927 + t1411 * t1922;
t1357 = -t1392 * t1922 + t1396 * t1927 - t2170;
t1356 = -pkin(7) * t1502 - t1391 * t1922 + t1394 * t1927;
t1355 = t1392 * t1927 + t1396 * t1922 + t2157;
t1354 = pkin(7) * t1504 + t1391 * t1927 + t1394 * t1922 - t2174;
t1353 = -pkin(8) * t1420 - t1395 * t1921 + t1397 * t1926;
t1352 = -pkin(7) * t1483 - t1387 * t1922 + t1390 * t1927;
t1350 = -t1382 * t1925 + t1383 * t1920;
t1348 = -pkin(1) * t1624 + pkin(7) * t1485 + t1387 * t1927 + t1390 * t1922;
t1347 = -pkin(1) * t1405 - t1947;
t1346 = t1351 * t1926 + t1497 * t1921;
t1344 = -pkin(2) * t1449 + pkin(8) * t1421 + t1395 * t1926 + t1397 * t1921;
t1343 = -pkin(1) * t1400 - t1948;
t1342 = -pkin(1) * t1377 - t2092;
t1341 = -pkin(8) * t1461 + t1371 * t1926 - t1384 * t1921;
t1340 = -pkin(7) * t1403 - t1376 * t1922 + t1389 * t1927;
t1339 = -pkin(8) * t1454 + t1369 * t1926 - t1379 * t1921;
t1338 = -pkin(2) * t1531 + pkin(8) * t1462 + t1371 * t1921 + t1384 * t1926;
t1337 = -pkin(1) * t1478 + pkin(7) * t1404 + t1376 * t1927 + t1389 * t1922;
t1336 = -pkin(2) * t1507 + pkin(8) * t1455 + t1369 * t1921 + t1379 * t1926;
t1335 = -pkin(9) * t1438 - t1363 * t1920 + t1365 * t1925;
t1334 = -t1345 * t1922 + t1346 * t1927;
t1333 = t1345 * t1927 + t1346 * t1922;
t1332 = -pkin(1) * t1380 - t1949;
t1331 = -pkin(8) * t1425 + t1335 * t1926 - t1374 * t1921;
t1330 = -pkin(9) * t1350 - t1360 * t1920 + t1368 * t1925;
t1329 = -pkin(3) * t1350 - t2087;
t1328 = -pkin(2) * t1438 + pkin(8) * t1426 + t1335 * t1921 + t1374 * t1926;
t1327 = -pkin(7) * t1377 - t1344 * t1922 + t1353 * t1927;
t1326 = -pkin(7) * t1405 - t1338 * t1922 + t1341 * t1927;
t1325 = -pkin(1) * t1449 + pkin(7) * t1378 + t1344 * t1927 + t1353 * t1922;
t1324 = -pkin(1) * t1531 + pkin(7) * t1406 + t1338 * t1927 + t1341 * t1922;
t1323 = -pkin(7) * t1400 - t1336 * t1922 + t1339 * t1927;
t1322 = -pkin(1) * t1507 + pkin(7) * t1401 + t1336 * t1927 + t1339 * t1922;
t1321 = -pkin(7) * t1380 - t1328 * t1922 + t1331 * t1927;
t1320 = -pkin(1) * t1438 + pkin(7) * t1381 + t1328 * t1927 + t1331 * t1922;
t1319 = -pkin(1) * t1333 - t1950;
t1318 = -pkin(8) * t1345 - t1329 * t1921 + t1330 * t1926;
t1317 = -pkin(2) * t1350 + pkin(8) * t1346 + t1329 * t1926 + t1330 * t1921;
t1316 = -pkin(7) * t1333 - t1317 * t1922 + t1318 * t1927;
t1315 = -pkin(1) * t1350 + pkin(7) * t1334 + t1317 * t1927 + t1318 * t1922;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1894, 0, -t1893, 0, t1979, -t1877, -t1961, -pkin(6) * t1961, t1861 * t1928 - t1990, t1837 * t1928 + t1896 * t1923, t1855 * t1928 + t1923 * t2014, t1860 * t1928 + t1990, t1853 * t1928 + t1914 * t1923, qJDD(2) * t1923 + t1886 * t1928, t1928 * t1816 - t1923 * t1809 - pkin(6) * (t1854 * t1923 + t1891 * t1928), t1928 * t1817 - t1923 * t1810 - pkin(6) * (t1856 * t1923 - t1889 * t1928), t1928 * t1799 - pkin(6) * (t1892 * t1923 + t1895 * t1928), -pkin(6) * (t1800 * t1923 + t1883 * t1928) - (pkin(1) * t1923 - pkin(7) * t1928) * t1799, t1682 * t1928 + t2004, t1616 * t1928 + t1834 * t1923, t1713 * t1928 + t1776 * t1923, t1681 * t1928 - t2004, t1714 * t1928 + t1923 * t1953, t1928 * t1742 + t1923 * t2013, t1928 * t1543 - t1923 * t1567 - pkin(6) * (t1676 * t1923 - t1771 * t1928), t1928 * t1548 - t1923 * t1583 - pkin(6) * (t1700 * t1923 - t1928 * t2111), t1928 * t1447 - t1923 * t1549 - pkin(6) * (t1617 * t1923 - t1813 * t1928), t1928 * t1452 - t1923 * t1481 - pkin(6) * (t1545 * t1923 + t1814 * t1928), t2107, -t2181, t2177, t2133, -t2179, t2132, t1928 * t1373 - t1923 * t1429 - t2154, t1928 * t1375 - t1923 * t1433 - pkin(6) * (t1512 * t1923 + t2164), t1928 * t1361 - t1923 * t1393 - pkin(6) * (t1486 * t1923 - t1626 * t1928), t1928 * t1340 - t1923 * t1366 - pkin(6) * (t1404 * t1923 - t1478 * t1928), t2107, t2177, t2181, t2132, t2179, t2133, t1928 * t1357 - t1923 * t1399 - t2154, t1928 * t1352 - t1923 * t1388 - pkin(6) * (t1485 * t1923 - t1624 * t1928), t1928 * t1356 - t1923 * t1398 - pkin(6) * (t1504 * t1923 - t2164), t1928 * t1327 - t1923 * t1342 - pkin(6) * (t1378 * t1923 - t1449 * t1928), t1419 * t1928 + t1493 * t1923, t1386 * t1928 + t1437 * t1923, t1409 * t1928 + t1539 * t1923, t1418 * t1928 + t1492 * t1923, t1410 * t1928 + t1540 * t1923, t1473 * t1928 + t1573 * t1923, t1928 * t1323 - t1923 * t1343 - pkin(6) * (t1401 * t1923 - t1507 * t1928), t1928 * t1326 - t1923 * t1347 - pkin(6) * (t1406 * t1923 - t1531 * t1928), t1928 * t1321 - t1923 * t1332 - pkin(6) * (t1381 * t1923 - t1438 * t1928), t1928 * t1316 - t1923 * t1319 - pkin(6) * (t1334 * t1923 - t1350 * t1928); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1893, 0, t1894, 0, t1877, t1979, t1991, pkin(6) * t1991, t1861 * t1923 + t1989, t1837 * t1923 - t1896 * t1928, t1855 * t1923 - t1928 * t2014, t1860 * t1923 - t1989, t1853 * t1923 - t1914 * t1928, -qJDD(2) * t1928 + t1886 * t1923, t1923 * t1816 + t1928 * t1809 + pkin(6) * (t1854 * t1928 - t1891 * t1923), t1923 * t1817 + t1928 * t1810 + pkin(6) * (t1856 * t1928 + t1889 * t1923), t1923 * t1799 + pkin(6) * (t1892 * t1928 - t1895 * t1923), pkin(6) * (t1800 * t1928 - t1883 * t1923) - (-pkin(1) * t1928 - pkin(7) * t1923) * t1799, t1682 * t1923 - t2003, t1616 * t1923 - t1834 * t1928, t1713 * t1923 - t1776 * t1928, t1681 * t1923 + t2003, t1714 * t1923 - t1928 * t1953, t1923 * t1742 - t1928 * t2013, t1923 * t1543 + t1928 * t1567 + pkin(6) * (t1676 * t1928 + t1771 * t1923), t1923 * t1548 + t1928 * t1583 + pkin(6) * (t1700 * t1928 + t1923 * t2111), t1923 * t1447 + t1928 * t1549 + pkin(6) * (t1617 * t1928 + t1813 * t1923), t1923 * t1452 + t1928 * t1481 + pkin(6) * (t1545 * t1928 - t1814 * t1923), t2110, -t2182, t2178, t2136, -t2180, t2135, t1923 * t1373 + t1928 * t1429 + t2153, t1923 * t1375 + t1928 * t1433 + pkin(6) * (t1512 * t1928 - t2165), t1923 * t1361 + t1928 * t1393 + pkin(6) * (t1486 * t1928 + t1626 * t1923), t1923 * t1340 + t1928 * t1366 + pkin(6) * (t1404 * t1928 + t1478 * t1923), t2110, t2178, t2182, t2135, t2180, t2136, t1923 * t1357 + t1928 * t1399 + t2153, t1923 * t1352 + t1928 * t1388 + pkin(6) * (t1485 * t1928 + t1624 * t1923), t1923 * t1356 + t1928 * t1398 + pkin(6) * (t1504 * t1928 + t2165), t1923 * t1327 + t1928 * t1342 + pkin(6) * (t1378 * t1928 + t1449 * t1923), t1419 * t1923 - t1493 * t1928, t1386 * t1923 - t1437 * t1928, t1409 * t1923 - t1539 * t1928, t1418 * t1923 - t1492 * t1928, t1410 * t1923 - t1540 * t1928, t1473 * t1923 - t1573 * t1928, t1923 * t1323 + t1928 * t1343 + pkin(6) * (t1401 * t1928 + t1507 * t1923), t1923 * t1326 + t1928 * t1347 + pkin(6) * (t1406 * t1928 + t1531 * t1923), t1923 * t1321 + t1928 * t1332 + pkin(6) * (t1381 * t1928 + t1438 * t1923), t1923 * t1316 + t1928 * t1319 + pkin(6) * (t1334 * t1928 + t1350 * t1923); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1899, t1900, 0, 0, t1848, t1836, t1851, t1847, t1849, 0, t1791, t1790, t1762, t1768, t1680, t1614, t1711, t1679, t1712, t1741, t1529, t1537, t1446, t1451, t2078, t1488, t2175, t2103, t1524, t2105, t1370, t1372, t1358, t1337, t2078, t2175, -t1488, t2105, -t1524, t2103, t1355, t1348, t1354, t1325, t1417, t1385, t1407, t1416, t1408, t1472, t1322, t1324, t1320, t1315; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t2077, 0, 0, -g(3), -t1899, 0, t1861, t1837, t1855, t1860, t1853, t1886, t1816, t1817, t1799, pkin(7) * t1799, t1682, t1616, t1713, t1681, t1714, t1742, t1543, t1548, t1447, t1452, t2079, -t1489, t2176, t2104, -t1527, t2106, t1373, t1375, t1361, t1340, t2079, t2176, t1489, t2106, t1527, t2104, t1357, t1352, t1356, t1327, t1419, t1386, t1409, t1418, t1410, t1473, t1323, t1326, t1321, t1316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2077, 0, qJDD(1), 0, g(3), 0, -t1900, 0, t1906, -t1896, -t2014, -t1906, -t1914, -qJDD(2), t1809, t1810, 0, pkin(1) * t1799, -t1835, -t1834, -t1776, t1835, -t1953, -t2013, t1567, t1583, t1549, t1481, -t1709, -t1625, -t2150, -t1706, -t1686, t2100, t1429, t1433, t1393, t1366, -t1709, -t2150, t1625, t2100, t1686, -t1706, t1399, t1388, t1398, t1342, -t1493, -t1437, -t1539, -t1492, -t1540, -t1573, t1343, t1347, t1332, t1319; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1899, t1900, 0, 0, t1848, t1836, t1851, t1847, t1849, 0, t1791, t1790, t1762, t1768, t1680, t1614, t1711, t1679, t1712, t1741, t1529, t1537, t1446, t1451, t2078, t1488, t2175, t2103, t1524, t2105, t1370, t1372, t1358, t1337, t2078, t2175, -t1488, t2105, -t1524, t2103, t1355, t1348, t1354, t1325, t1417, t1385, t1407, t1416, t1408, t1472, t1322, t1324, t1320, t1315; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1890, t1891, t1897, -t1911, t1903, t1911, 0, -t1883, t1858, 0, t1766, t1697, t1781, t1764, t1782, t1819, t1719, t1730, t1561, -pkin(8) * t1637, t1968, t1578, t2155, t2081, t1613, t2080, t1444, t1445, t1411, t1389, t1968, t2155, -t1578, t2080, -t1613, t2081, t1396, t1390, t1394, t1353, t1471, t1431, t1466, t1470, t1467, t1560, t1339, t1341, t1331, t1318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2002, t1889, t1901, t1970, t1898, -t2002, t1883, 0, t1859, 0, t1765, t1695, t1779, t1763, t1780, t1818, t1639, t1650, t1550, t1618, t1969, t1576, t2156, t2082, t1609, t2083, t1432, t1434, t1402, t1376, t1969, t2156, -t1576, t2083, -t1609, t2082, t1392, t1387, t1391, t1344, t1469, t1430, t1464, t1468, t1465, t1559, t1336, t1338, t1328, t1317; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1906, t1896, t2014, t1906, t1914, qJDD(2), -t1858, -t1859, 0, 0, t1835, t1834, t1776, -t1835, t1953, t2013, t1957, t1981, t2071, t2072, t1709, t1625, t2150, t1706, t1686, -t2100, t1960, t1959, t1945, t1982, t1709, t2150, -t1625, -t2100, -t1686, t1706, t1938, t1946, t1941, t2092, t1493, t1437, t1539, t1492, t1540, t1573, t1948, t1947, t1949, t1950; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1812, -t1771, t2095, t1867, t1862, -t1867, 0, -t1814, t1733, 0, t1710, t1629, t2149, t1933, t1690, t1967, t1566, t1572, t1453, -pkin(9) * t1478, t1710, t2149, -t1629, t1967, -t1690, t1933, t1459, t1422, t1458, t1397, t1495, t1439, t1541, t1494, t1542, t1574, t1369, t1371, t1335, t1330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1996, t2111, t1863, t1811, t1829, -t1996, t1814, 0, t1734, 0, -t1804, -t2094, -t2090, t1804, t1721, -t1808, t1533, t1534, -pkin(3) * t1626, -pkin(3) * t1478, -t1804, -t2090, t2094, -t1808, -t1721, t1804, t1463, t1536, t1460, t1395, t1731, t1729, t1590, -t1731, -t1587, -t1806, t1379, t1384, t1374, t1329; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1835, t1834, t1776, -t1835, t1953, t2013, -t1733, -t1734, 0, 0, t1709, t1625, t2150, t1706, t1686, -t2100, t1999, t2000, t1983, t2016, t1709, t2150, -t1625, -t2100, -t1686, t1706, t1944, t1984, t1951, t1940, t1493, t1437, t1539, t1492, t1540, t1573, t1986, t1985, t1988, t1987; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1750, -t2096, -t1994, t2031, t1821, -t2031, 0, t1664, t1564, 0, t1750, -t1994, t2096, -t2031, -t1821, t2031, -qJ(5) * t2096, t1516, t1519, -qJ(5) * t1547, t1582, t1500, t1633, t1580, t1634, t1678, t1441, t1443, t1365, t1368; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1825, t2091, -t1822, -t1952, t2097, -t1825, -t1664, 0, t1565, 0, t1825, -t1822, -t2091, -t1825, -t2097, -t1952, t1520, t1514, pkin(4) * t2091, -pkin(4) * t1547, -t1581, -t1498, -t1631, t1579, -t1632, -t1677, t1413, t1415, t1363, t1360; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1804, t2094, t2090, -t1804, -t1721, t1808, -t1564, -t1565, 0, 0, t1804, t2090, -t2094, t1808, t1721, -t1804, t1931, t1972, t1864 + t1936, t1973, -t1731, -t1729, -t1590, t1731, t1587, t1806, t2085, t2084, t2086, t2087; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1750, -t1994, t2096, -t2031, -t1821, t2031, 0, t1538, -t1547, 0, t1582, t1500, t1633, t1580, t1634, t1678, t1966, t1997, t1956, -t2069; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1804, t2090, -t2094, t1808, t1721, -t1804, -t1538, 0, t1535, 0, -t1731, -t1729, -t1590, t1731, t1587, t1806, -pkin(5) * t1596 + t1427, -pkin(5) * t1619 + t1428, -pkin(5) * t1499, -pkin(5) * t1382; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1825, t1822, t2091, t1825, t2097, t1952, t1547, -t1535, 0, 0, t1581, t1498, t1631, -t1579, t1632, t1677, -pkin(5) * t1586 - t1965, -pkin(5) * t2098 - t1964, -pkin(5) * t1659 - t1955, pkin(5) * t1497 + t2068; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1636, -t1586, t2099, -t1760, t1756, t1760, 0, -t1497, t1427, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2030, t2098, t1757, t1635, -t1672, t2030, t1497, 0, t1428, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1731, t1729, t1590, -t1731, -t1587, -t1806, -t1427, -t1428, 0, 0;];
m_new_reg  = t1;

% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRPRPR8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 15:01
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRPRPR8_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR8_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR8_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR8_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR8_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR8_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 15:00:33
% EndTime: 2019-05-06 15:01:28
% DurationCPUTime: 60.34s
% Computational Cost: add. (265736->951), mult. (578640->1193), div. (0->0), fcn. (419065->10), ass. (0->623)
t1859 = sin(pkin(10));
t1860 = cos(pkin(10));
t1863 = sin(qJ(2));
t1991 = qJD(1) * t1863;
t1818 = -qJD(2) * t1860 + t1859 * t1991;
t1819 = qJD(2) * t1859 + t1860 * t1991;
t1862 = sin(qJ(4));
t1866 = cos(qJ(4));
t1772 = -t1862 * t1818 + t1866 * t1819;
t1769 = t1772 ^ 2;
t1867 = cos(qJ(2));
t1990 = qJD(1) * t1867;
t1849 = -qJD(4) + t1990;
t2005 = t1849 ^ 2;
t1698 = t2005 + t1769;
t1852 = qJD(2) * t1991;
t1944 = t1867 * qJDD(1);
t1826 = -t1852 + t1944;
t1820 = -qJDD(4) + t1826;
t1770 = t1866 * t1818 + t1819 * t1862;
t1965 = t1772 * t1770;
t2019 = -t1965 + t1820;
t1974 = t2019 * t1862;
t1607 = -t1698 * t1866 + t1974;
t1973 = t2019 * t1866;
t1609 = t1698 * t1862 + t1973;
t1525 = t1607 * t1859 - t1609 * t1860;
t1936 = qJD(2) * t1990;
t1945 = t1863 * qJDD(1);
t1899 = t1936 + t1945;
t1794 = t1859 * qJDD(2) + t1860 * t1899;
t1873 = t1860 * qJDD(2) - t1859 * t1899;
t1674 = -t1770 * qJD(4) + t1866 * t1794 + t1862 * t1873;
t1966 = t1770 * t1849;
t2022 = t1674 + t1966;
t1481 = t1525 * t1867 - t1863 * t2022;
t1535 = t1607 * t1860 + t1609 * t1859;
t1864 = sin(qJ(1));
t1868 = cos(qJ(1));
t2114 = pkin(6) * (t1481 * t1868 - t1535 * t1864);
t2113 = pkin(6) * (t1481 * t1864 + t1535 * t1868);
t1479 = t1525 * t1863 + t1867 * t2022;
t2112 = pkin(1) * t1479;
t2111 = pkin(7) * t1479;
t2110 = pkin(1) * t1535 + pkin(7) * t1481;
t1930 = -t1862 * t1794 + t1866 * t1873;
t1673 = qJD(4) * t1772 - t1930;
t1754 = t1772 * t1849;
t2023 = t1673 - t1754;
t1564 = -t2023 * t1862 + t1866 * t2022;
t1978 = t2022 * t1862;
t1568 = -t2023 * t1866 - t1978;
t1470 = -t1564 * t1859 + t1568 * t1860;
t2007 = t1770 ^ 2;
t2021 = t1769 - t2007;
t1453 = t1470 * t1867 + t1863 * t2021;
t1466 = t1564 * t1860 + t1568 * t1859;
t2107 = t1453 * t1864 - t1466 * t1868;
t2106 = t1453 * t1868 + t1466 * t1864;
t1743 = t2007 - t2005;
t1622 = t1743 * t1862 - t1973;
t1626 = t1743 * t1866 + t1974;
t1556 = t1622 * t1859 - t1626 * t1860;
t1634 = t1673 + t1754;
t1498 = t1556 * t1867 + t1634 * t1863;
t1551 = t1622 * t1860 + t1626 * t1859;
t2105 = t1498 * t1864 + t1551 * t1868;
t2104 = t1498 * t1868 - t1551 * t1864;
t2102 = pkin(2) * t1535;
t2101 = qJ(3) * t1535;
t2098 = pkin(2) * t2022 + qJ(3) * t1525;
t1451 = t1470 * t1863 - t1867 * t2021;
t1494 = t1556 * t1863 - t1634 * t1867;
t2093 = pkin(3) * t1607;
t2092 = pkin(8) * t1607;
t2091 = pkin(8) * t1609;
t1744 = t1769 - t2005;
t2020 = -t1965 - t1820;
t1972 = t2020 * t1862;
t2055 = -t1866 * t1744 + t1972;
t1677 = t1866 * t2020;
t2056 = t1744 * t1862 + t1677;
t2069 = t1859 * t2056 + t1860 * t2055;
t2018 = -t1966 + t1674;
t2068 = -t1859 * t2055 + t1860 * t2056;
t2082 = t1863 * t2018 + t1867 * t2068;
t2090 = t1864 * t2082 - t1868 * t2069;
t2089 = t1864 * t2069 + t1868 * t2082;
t2017 = -t2005 - t2007;
t2029 = t1866 * t2017 - t1972;
t2032 = t1862 * t2017 + t1677;
t2050 = -t1859 * t2032 + t1860 * t2029;
t2071 = t1863 * t2050 - t1867 * t2023;
t2088 = pkin(1) * t2071;
t2087 = pkin(7) * t2071;
t2049 = t1859 * t2029 + t1860 * t2032;
t2070 = t1863 * t2023 + t1867 * t2050;
t2084 = -pkin(1) * t2049 + pkin(7) * t2070;
t2083 = t1863 * t2068 - t1867 * t2018;
t2081 = pkin(6) * (t1864 * t2070 - t1868 * t2049);
t2080 = pkin(6) * (t1864 * t2049 + t1868 * t2070);
t2078 = pkin(2) * t2049;
t2077 = qJ(3) * t2049;
t2072 = -pkin(2) * t2023 + qJ(3) * t2050;
t1656 = -t2007 - t1769;
t2067 = pkin(2) * t1656;
t2066 = pkin(3) * t1656;
t2065 = pkin(3) * t2032;
t2064 = pkin(8) * t2029;
t2063 = pkin(8) * t2032;
t2062 = qJ(5) * t2022;
t2061 = t1656 * t1863;
t2060 = t1656 * t1867;
t1838 = g(1) * t1868 + g(2) * t1864;
t1869 = qJD(1) ^ 2;
t1810 = -pkin(1) * t1869 + qJDD(1) * pkin(7) - t1838;
t2002 = pkin(2) * t1867;
t1916 = -qJ(3) * t1863 - t2002;
t1824 = t1916 * qJD(1);
t1994 = t1867 * g(3);
t2008 = qJD(2) ^ 2;
t1733 = -qJDD(2) * pkin(2) - qJ(3) * t2008 + (qJD(1) * t1824 + t1810) * t1863 + qJDD(3) + t1994;
t1795 = -pkin(3) * t1990 - pkin(8) * t1819;
t2006 = t1818 ^ 2;
t1647 = -t1873 * pkin(3) - t2006 * pkin(8) + t1819 * t1795 + t1733;
t2057 = t1673 * pkin(4) + t1647 - t2062;
t1894 = (t1770 * t1862 + t1772 * t1866) * t1849;
t1952 = t1849 * t1862;
t1742 = t1772 * t1952;
t1951 = t1849 * t1866;
t1939 = t1770 * t1951;
t1911 = -t1742 + t1939;
t2012 = t1859 * t1911 + t1860 * t1894;
t2011 = -t1859 * t1894 + t1860 * t1911;
t2027 = -t1820 * t1863 + t1867 * t2011;
t2054 = t1864 * t2027 - t1868 * t2012;
t1900 = t1673 * t1862 - t1939;
t1912 = -t1866 * t1673 - t1770 * t1952;
t2009 = t1859 * t1900 + t1860 * t1912;
t1941 = t1863 * t1965;
t2010 = -t1859 * t1912 + t1860 * t1900;
t2028 = t1867 * t2010 - t1941;
t2053 = t1864 * t2028 - t1868 * t2009;
t2052 = t1864 * t2012 + t1868 * t2027;
t2051 = t1864 * t2009 + t1868 * t2028;
t1861 = sin(qJ(6));
t1865 = cos(qJ(6));
t1701 = -t1865 * t1770 + t1772 * t1861;
t1703 = t1861 * t1770 + t1865 * t1772;
t1605 = t1703 * t1701;
t1814 = qJDD(6) + t1820;
t2024 = -t1605 + t1814;
t2046 = t1861 * t2024;
t2039 = t1865 * t2024;
t2031 = t1867 * t1820 + t1863 * t2011;
t1940 = t1867 * t1965;
t2030 = t1863 * t2010 + t1940;
t1961 = t1819 * t1818;
t1898 = -t1826 - t1961;
t2026 = t1859 * t1898;
t2025 = t1860 * t1898;
t1837 = t1864 * g(1) - t1868 * g(2);
t1809 = qJDD(1) * pkin(1) + t1869 * pkin(7) + t1837;
t1825 = 0.2e1 * t1936 + t1945;
t1723 = (-t1826 + t1852) * pkin(2) - t1825 * qJ(3) - t1809;
t1790 = -g(3) * t1863 + t1867 * t1810;
t1734 = -pkin(2) * t2008 + qJDD(2) * qJ(3) + t1824 * t1990 + t1790;
t1643 = 0.2e1 * qJD(3) * t1819 - t1860 * t1723 + t1859 * t1734;
t1935 = t1818 * t1990;
t1915 = -t1794 + t1935;
t1581 = pkin(3) * t1898 + pkin(8) * t1915 - t1643;
t1644 = -0.2e1 * qJD(3) * t1818 + t1859 * t1723 + t1860 * t1734;
t1589 = -pkin(3) * t2006 + pkin(8) * t1873 + t1795 * t1990 + t1644;
t1499 = -t1866 * t1581 + t1862 * t1589;
t1705 = pkin(4) * t1770 - qJ(5) * t1772;
t1463 = t1820 * pkin(4) - qJ(5) * t2005 + t1772 * t1705 + qJDD(5) + t1499;
t1421 = -pkin(5) * t2020 - pkin(9) * t2018 + t1463;
t1989 = qJD(5) * t1849;
t1835 = -0.2e1 * t1989;
t1500 = t1862 * t1581 + t1866 * t1589;
t1907 = -pkin(4) * t2005 - t1820 * qJ(5) - t1770 * t1705 + t1500;
t1459 = t1835 + t1907;
t1919 = pkin(5) * t1849 - pkin(9) * t1772;
t1425 = -pkin(5) * t2007 + t1673 * pkin(9) - t1849 * t1919 + t1459;
t1372 = -t1865 * t1421 + t1425 * t1861;
t1373 = t1861 * t1421 + t1865 * t1425;
t1330 = -t1865 * t1372 + t1373 * t1861;
t1577 = -t1701 * qJD(6) + t1861 * t1673 + t1865 * t1674;
t1842 = qJD(6) + t1849;
t1678 = t1842 * t1701;
t1520 = -t1678 + t1577;
t1960 = t1819 * t1867;
t1801 = qJD(1) * t1960;
t1757 = t1873 - t1801;
t1618 = t1674 * t1862 - t1772 * t1951;
t1619 = t1674 * t1866 + t1742;
t1545 = t1618 * t1860 + t1619 * t1859;
t1548 = -t1618 * t1859 + t1619 * t1860;
t1913 = t1867 * t1548 + t1941;
t2014 = -t1868 * t1545 + t1864 * t1913;
t2013 = t1545 * t1864 + t1868 * t1913;
t1699 = t1701 ^ 2;
t1700 = t1703 ^ 2;
t1817 = t1819 ^ 2;
t1839 = t1842 ^ 2;
t2004 = -pkin(4) - pkin(5);
t2003 = pkin(2) * t1863;
t1416 = -t1499 * t1866 + t1500 * t1862;
t2001 = pkin(3) * t1416;
t1628 = t1866 * t2018;
t1635 = (-qJD(4) - t1849) * t1772 + t1930;
t1565 = t1635 * t1862 - t1628;
t2000 = pkin(3) * t1565;
t1999 = pkin(4) * t1866;
t1998 = pkin(5) * t1330;
t1931 = t1865 * t1673 - t1861 * t1674;
t1519 = (-qJD(6) + t1842) * t1703 + t1931;
t1521 = t1678 + t1577;
t1435 = t1519 * t1861 - t1521 * t1865;
t1997 = pkin(5) * t1435;
t1996 = pkin(9) * t1330;
t1331 = t1861 * t1372 + t1865 * t1373;
t1995 = pkin(9) * t1331;
t1993 = qJ(5) * t1866;
t1992 = qJD(1) * qJD(2);
t1987 = t1416 * t1859;
t1986 = t1416 * t1860;
t1597 = t1605 + t1814;
t1984 = t1597 * t1861;
t1983 = t1597 * t1865;
t1977 = t2018 * t1862;
t1976 = t1647 * t1862;
t1975 = t1647 * t1866;
t1971 = t1733 * t1859;
t1970 = t1733 * t1860;
t1760 = t1826 - t1961;
t1968 = t1760 * t1859;
t1967 = t1760 * t1860;
t1964 = t1809 * t1863;
t1963 = t1809 * t1867;
t1780 = t1825 * t1863;
t1958 = t1826 * t1863;
t1848 = t1867 * t1869 * t1863;
t1833 = -t1848 + qJDD(2);
t1957 = t1833 * t1863;
t1956 = t1833 * t1867;
t1834 = qJDD(2) + t1848;
t1955 = t1834 * t1863;
t1954 = t1842 * t1861;
t1953 = t1842 * t1865;
t1856 = t1863 ^ 2;
t1950 = t1856 * t1869;
t1489 = (-pkin(4) * t1849 - 0.2e1 * qJD(5)) * t1772 + t2057;
t1449 = t1673 * pkin(5) + pkin(9) * t2007 - t1772 * t1919 + t1489;
t1949 = t1861 * t1449;
t1448 = t1865 * t1449;
t1948 = -pkin(4) * t1463 + qJ(5) * t1459;
t1947 = -pkin(4) * t2018 - qJ(5) * t1634;
t1857 = t1867 ^ 2;
t1946 = t1856 + t1857;
t1943 = t1863 * t1605;
t1942 = t1867 * t1605;
t1938 = t1863 * t1961;
t1937 = t1818 * t1960;
t1934 = -qJ(5) * t1862 - pkin(3);
t1658 = -t1700 - t1839;
t1559 = t1658 * t1865 - t1984;
t1933 = -pkin(9) * t1559 - t1448;
t1417 = t1499 * t1862 + t1866 * t1500;
t1571 = t1643 * t1859 + t1860 * t1644;
t1789 = t1863 * t1810 + t1994;
t1726 = t1789 * t1863 + t1867 * t1790;
t1929 = -t1837 * t1864 - t1868 * t1838;
t1928 = t1859 * t1935;
t1927 = t1864 * t1848;
t1926 = t1868 * t1848;
t1398 = t1459 * t1862 - t1463 * t1866;
t1925 = pkin(3) * t1398 + t1948;
t1563 = -t1634 * t1862 - t1628;
t1924 = pkin(3) * t1563 + t1947;
t1923 = -t1500 + t2093;
t1922 = -pkin(4) * t1330 + qJ(5) * t1331 - t1998;
t1921 = -pkin(5) * t1559 + t1373;
t1437 = t1519 * t1865 + t1521 * t1861;
t1920 = -pkin(4) * t1435 + qJ(5) * t1437 - t1997;
t1830 = qJDD(1) * t1868 - t1864 * t1869;
t1918 = -pkin(6) * t1830 - g(3) * t1864;
t1917 = -pkin(2) * t1733 + qJ(3) * t1571;
t1914 = t1863 * t1548 - t1940;
t1603 = -t1839 - t1699;
t1529 = t1603 * t1861 + t2039;
t1910 = -pkin(9) * t1529 - t1949;
t1530 = t1603 * t1865 - t2046;
t1909 = -pkin(9) * t1530 - t1448;
t1560 = -t1658 * t1861 - t1983;
t1908 = -pkin(9) * t1560 + t1949;
t1570 = -t1643 * t1860 + t1644 * t1859;
t1725 = t1789 * t1867 - t1790 * t1863;
t1906 = t1837 * t1868 - t1838 * t1864;
t1904 = -t1499 + t2065;
t1903 = -pkin(5) * t1529 + t1372;
t1902 = -pkin(9) * t1435 - t1330;
t1901 = -pkin(9) * t1437 - t1331;
t1576 = -qJD(6) * t1703 + t1931;
t1897 = -pkin(4) * t1559 + qJ(5) * t1560 + t1921;
t1301 = -t1330 * t1866 + t1331 * t1862;
t1896 = pkin(3) * t1301 + t1922;
t1385 = -t1435 * t1866 + t1437 * t1862;
t1895 = pkin(3) * t1385 + t1920;
t1893 = pkin(4) * t1698 - qJ(5) * t2019 + t1907;
t1853 = t1857 * t1869;
t1773 = -t1853 - t2006;
t1692 = t1773 * t1860 - t2026;
t1756 = t1801 + t1873;
t1892 = pkin(2) * t1756 + qJ(3) * t1692 - t1970;
t1799 = -t1817 - t1853;
t1714 = -t1799 * t1859 + t1967;
t1759 = t1794 + t1935;
t1891 = -pkin(2) * t1759 + qJ(3) * t1714 + t1971;
t1890 = -pkin(4) * t1529 + qJ(5) * t1530 + t1903;
t1672 = t1757 * t1860 - t1859 * t1915;
t1749 = t1817 + t2006;
t1889 = pkin(2) * t1749 + qJ(3) * t1672 + t1571;
t1460 = -t1559 * t1866 + t1560 * t1862;
t1888 = pkin(3) * t1460 + t1897;
t1887 = t1893 - t2093;
t1302 = t1330 * t1862 + t1331 * t1866;
t1311 = t1449 * t2004 - t1995;
t1322 = -qJ(5) * t1449 - t1996;
t1281 = -pkin(3) * t1449 + pkin(8) * t1302 + t1311 * t1866 + t1322 * t1862;
t1282 = -pkin(8) * t1301 - t1311 * t1862 + t1322 * t1866;
t1288 = -t1301 * t1859 + t1302 * t1860;
t1886 = -pkin(2) * t1449 + qJ(3) * t1288 + t1281 * t1860 + t1282 * t1859;
t1578 = t1699 + t1700;
t1312 = t1578 * t2004 + t1901;
t1315 = -qJ(5) * t1578 + t1902;
t1387 = t1435 * t1862 + t1437 * t1866;
t1291 = -pkin(3) * t1578 + pkin(8) * t1387 + t1312 * t1866 + t1315 * t1862;
t1293 = -pkin(8) * t1385 - t1312 * t1862 + t1315 * t1866;
t1340 = -t1385 * t1859 + t1387 * t1860;
t1885 = -pkin(2) * t1578 + qJ(3) * t1340 + t1291 * t1860 + t1293 * t1859;
t1679 = t1842 * t1703;
t1518 = t1576 - t1679;
t1362 = t1518 * t2004 + t1909;
t1390 = -qJ(5) * t1518 + t1910;
t1439 = t1529 * t1862 + t1530 * t1866;
t1313 = -pkin(3) * t1518 + pkin(8) * t1439 + t1362 * t1866 + t1390 * t1862;
t1438 = -t1529 * t1866 + t1530 * t1862;
t1320 = -pkin(8) * t1438 - t1362 * t1862 + t1390 * t1866;
t1389 = -t1438 * t1859 + t1439 * t1860;
t1884 = -pkin(2) * t1518 + qJ(3) * t1389 + t1313 * t1860 + t1320 * t1859;
t1363 = -t1520 * t2004 + t1908;
t1391 = qJ(5) * t1520 + t1933;
t1461 = t1559 * t1862 + t1560 * t1866;
t1319 = pkin(3) * t1520 + pkin(8) * t1461 + t1363 * t1866 + t1391 * t1862;
t1325 = -pkin(8) * t1460 - t1363 * t1862 + t1391 * t1866;
t1397 = -t1460 * t1859 + t1461 * t1860;
t1883 = pkin(2) * t1520 + qJ(3) * t1397 + t1319 * t1860 + t1325 * t1859;
t1399 = t1459 * t1866 + t1463 * t1862;
t1347 = pkin(8) * t1399 + (t1934 - t1999) * t1489;
t1350 = -t1398 * t1859 + t1399 * t1860;
t1353 = -pkin(8) * t1398 + (pkin(4) * t1862 - t1993) * t1489;
t1882 = -pkin(2) * t1489 + qJ(3) * t1350 + t1347 * t1860 + t1353 * t1859;
t1441 = -pkin(4) * t1656 + t1459;
t1442 = -qJ(5) * t1656 + t1463;
t1567 = -t1634 * t1866 + t1977;
t1358 = pkin(8) * t1567 + t1441 * t1866 + t1442 * t1862 - t2066;
t1368 = -pkin(8) * t1563 - t1441 * t1862 + t1442 * t1866;
t1469 = -t1563 * t1859 + t1567 * t1860;
t1881 = qJ(3) * t1469 + t1358 * t1860 + t1368 * t1859 - t2067;
t1569 = t1635 * t1866 + t1977;
t1393 = pkin(8) * t1569 + t1417 - t2066;
t1400 = -pkin(8) * t1565 - t1416;
t1471 = -t1565 * t1859 + t1569 * t1860;
t1880 = qJ(3) * t1471 + t1393 * t1860 + t1400 * t1859 - t2067;
t1870 = 0.2e1 * qJD(5) * t1772 - t2057;
t1457 = pkin(4) * t1754 + t1870 + t2062;
t1407 = -t2091 + t1862 * t1457 + (pkin(3) + t1999) * t2022;
t1412 = -pkin(4) * t1978 + t1457 * t1866 + t2092;
t1879 = t1407 * t1860 + t1412 * t1859 + t2098;
t1458 = (-t2023 + t1754) * pkin(4) + t1870;
t1409 = t1866 * t1458 + t1934 * t2023 + t2064;
t1415 = -t1458 * t1862 - t1993 * t2023 - t2063;
t1878 = t1409 * t1860 + t1415 * t1859 + t2072;
t1484 = -pkin(3) * t2023 - t1975 + t2064;
t1534 = t1976 - t2063;
t1877 = t1484 * t1860 + t1534 * t1859 + t2072;
t1501 = -pkin(3) * t2022 + t1976 + t2091;
t1561 = t1975 - t2092;
t1876 = t1501 * t1860 + t1561 * t1859 - t2098;
t1875 = pkin(3) * t1438 + t1890;
t1361 = t1417 * t1860 - t1987;
t1410 = -pkin(3) * t1647 + pkin(8) * t1417;
t1874 = -pkin(2) * t1647 - pkin(8) * t1987 + qJ(3) * t1361 + t1410 * t1860;
t1872 = pkin(4) * t2020 + qJ(5) * t2017 - t1463;
t1871 = t1872 + t2065;
t1846 = -t1853 - t2008;
t1845 = t1853 - t2008;
t1844 = -t1950 - t2008;
t1843 = -t1950 + t2008;
t1832 = -t1853 + t1950;
t1831 = t1853 + t1950;
t1829 = qJDD(1) * t1864 + t1868 * t1869;
t1828 = t1946 * qJDD(1);
t1827 = -0.2e1 * t1852 + t1944;
t1822 = t1867 * t1834;
t1821 = t1946 * t1992;
t1812 = t1867 * t1826;
t1802 = -pkin(6) * t1829 + g(3) * t1868;
t1798 = -t1817 + t1853;
t1797 = -t1853 + t2006;
t1796 = t1860 * t1801;
t1793 = -t1856 * t1992 + t1867 * t1899;
t1792 = -t1857 * t1992 - t1958;
t1788 = -t1844 * t1863 - t1956;
t1787 = -t1843 * t1863 + t1822;
t1786 = t1846 * t1867 - t1955;
t1785 = t1845 * t1867 - t1957;
t1784 = t1844 * t1867 - t1957;
t1783 = t1843 * t1867 + t1955;
t1782 = t1846 * t1863 + t1822;
t1781 = t1845 * t1863 + t1956;
t1779 = -t1863 * t1936 + t1812;
t1776 = t1817 - t2006;
t1775 = t1827 * t1867 - t1780;
t1774 = t1825 * t1867 + t1827 * t1863;
t1747 = (t1818 * t1860 - t1819 * t1859) * t1990;
t1746 = -t1796 - t1928;
t1741 = -pkin(7) * t1784 - t1963;
t1740 = -pkin(7) * t1782 - t1964;
t1738 = t1794 * t1860 + t1801 * t1859;
t1737 = t1794 * t1859 - t1796;
t1736 = -t1859 * t1873 - t1860 * t1935;
t1735 = t1860 * t1873 - t1928;
t1732 = -pkin(1) * t1784 + t1790;
t1731 = -pkin(1) * t1782 + t1789;
t1722 = pkin(1) * t1827 + pkin(7) * t1786 + t1963;
t1721 = -pkin(1) * t1825 + pkin(7) * t1788 - t1964;
t1718 = t1747 * t1867 - t1958;
t1717 = t1747 * t1863 + t1812;
t1716 = t1797 * t1860 + t1968;
t1715 = -t1798 * t1859 + t2025;
t1713 = t1797 * t1859 - t1967;
t1712 = t1798 * t1860 + t2026;
t1711 = t1799 * t1860 + t1968;
t1704 = pkin(1) * t1809 + pkin(7) * t1726;
t1695 = pkin(1) * t1831 + pkin(7) * t1828 + t1726;
t1691 = t1773 * t1859 + t2025;
t1690 = t1738 * t1867 + t1938;
t1689 = t1736 * t1867 - t1938;
t1688 = t1738 * t1863 - t1937;
t1687 = t1736 * t1863 + t1937;
t1676 = -t1700 + t1839;
t1675 = t1699 - t1839;
t1671 = t1756 * t1860 - t1759 * t1859;
t1670 = t1757 * t1859 + t1860 * t1915;
t1669 = t1756 * t1859 + t1759 * t1860;
t1654 = t1716 * t1867 + t1757 * t1863;
t1653 = t1715 * t1867 - t1863 * t1915;
t1652 = t1714 * t1867 + t1759 * t1863;
t1651 = t1716 * t1863 - t1757 * t1867;
t1650 = t1715 * t1863 + t1867 * t1915;
t1649 = t1714 * t1863 - t1759 * t1867;
t1648 = -qJ(3) * t1711 + t1970;
t1646 = t1671 * t1867 + t1776 * t1863;
t1645 = t1671 * t1863 - t1776 * t1867;
t1642 = t1692 * t1867 - t1756 * t1863;
t1641 = t1692 * t1863 + t1756 * t1867;
t1613 = -qJ(3) * t1691 + t1971;
t1612 = t1672 * t1867 - t1749 * t1863;
t1611 = t1672 * t1863 + t1749 * t1867;
t1604 = t1700 - t1699;
t1595 = (-t1701 * t1865 + t1703 * t1861) * t1842;
t1594 = (-t1701 * t1861 - t1703 * t1865) * t1842;
t1587 = -pkin(2) * t1711 + t1644;
t1582 = -pkin(2) * t1691 + t1643;
t1575 = t1675 * t1865 - t1984;
t1574 = -t1676 * t1861 + t2039;
t1573 = t1675 * t1861 + t1983;
t1572 = t1676 * t1865 + t2046;
t1542 = -pkin(1) * t1649 - t1891;
t1533 = -pkin(1) * t1641 - t1892;
t1532 = t1571 * t1867 + t1733 * t1863;
t1531 = t1571 * t1863 - t1733 * t1867;
t1517 = -t1576 - t1679;
t1516 = t1577 * t1865 - t1703 * t1954;
t1515 = t1577 * t1861 + t1703 * t1953;
t1514 = -t1576 * t1861 + t1701 * t1953;
t1513 = -t1576 * t1865 - t1701 * t1954;
t1512 = -qJ(3) * t1670 - t1570;
t1503 = t1594 * t1862 + t1595 * t1866;
t1502 = -t1594 * t1866 + t1595 * t1862;
t1483 = -pkin(7) * t1649 - t1587 * t1863 + t1648 * t1867;
t1478 = -pkin(7) * t1641 - t1582 * t1863 + t1613 * t1867;
t1477 = -pkin(1) * t1711 + pkin(7) * t1652 + t1587 * t1867 + t1648 * t1863;
t1476 = t1573 * t1862 + t1575 * t1866;
t1475 = t1572 * t1862 + t1574 * t1866;
t1474 = -t1573 * t1866 + t1575 * t1862;
t1473 = -t1572 * t1866 + t1574 * t1862;
t1472 = -pkin(1) * t1611 - t1889;
t1467 = t1565 * t1860 + t1569 * t1859;
t1465 = t1563 * t1860 + t1567 * t1859;
t1455 = -pkin(1) * t1691 + pkin(7) * t1642 + t1582 * t1867 + t1613 * t1863;
t1454 = -pkin(7) * t1611 + t1512 * t1867 + t1670 * t2003;
t1447 = -pkin(1) * t1531 - t1917;
t1446 = t1471 * t1867 + t2061;
t1445 = t1469 * t1867 + t2061;
t1444 = t1471 * t1863 - t2060;
t1443 = t1469 * t1863 - t2060;
t1440 = pkin(7) * t1612 + t1863 * t1512 + (-pkin(1) - t2002) * t1670;
t1436 = t1518 * t1865 - t1520 * t1861;
t1434 = t1518 * t1861 + t1520 * t1865;
t1431 = t1515 * t1862 + t1516 * t1866;
t1430 = -t1513 * t1862 + t1514 * t1866;
t1429 = -t1515 * t1866 + t1516 * t1862;
t1428 = t1513 * t1866 + t1514 * t1862;
t1427 = -t1502 * t1859 + t1503 * t1860;
t1426 = t1502 * t1860 + t1503 * t1859;
t1423 = t1427 * t1867 - t1814 * t1863;
t1422 = t1427 * t1863 + t1814 * t1867;
t1418 = -pkin(2) * t1467 - t2000;
t1414 = -t1923 - t2102;
t1413 = -pkin(7) * t1531 + (-qJ(3) * t1867 + t2003) * t1570;
t1411 = -t1904 - t2078;
t1408 = -t1501 * t1859 + t1561 * t1860 - t2101;
t1406 = -pkin(2) * t1465 - t1924;
t1405 = -t1474 * t1859 + t1476 * t1860;
t1404 = -t1473 * t1859 + t1475 * t1860;
t1403 = t1474 * t1860 + t1476 * t1859;
t1402 = t1473 * t1860 + t1475 * t1859;
t1401 = -t1484 * t1859 + t1534 * t1860 - t2077;
t1396 = t1460 * t1860 + t1461 * t1859;
t1395 = -t1871 - t2078;
t1394 = pkin(7) * t1532 + (-pkin(1) + t1916) * t1570;
t1392 = -t1887 + 0.2e1 * t1989 + t2102;
t1388 = t1438 * t1860 + t1439 * t1859;
t1386 = t1434 * t1862 + t1436 * t1866;
t1384 = -t1434 * t1866 + t1436 * t1862;
t1383 = t1405 * t1867 + t1517 * t1863;
t1382 = t1404 * t1867 - t1521 * t1863;
t1381 = t1405 * t1863 - t1517 * t1867;
t1380 = t1404 * t1863 + t1521 * t1867;
t1379 = -t1429 * t1859 + t1431 * t1860;
t1378 = -t1428 * t1859 + t1430 * t1860;
t1377 = t1429 * t1860 + t1431 * t1859;
t1376 = t1428 * t1860 + t1430 * t1859;
t1375 = t1397 * t1867 - t1520 * t1863;
t1374 = t1397 * t1863 + t1520 * t1867;
t1369 = -t1876 + t2112;
t1367 = t1379 * t1867 - t1943;
t1366 = t1378 * t1867 + t1943;
t1365 = t1379 * t1863 + t1942;
t1364 = t1378 * t1863 - t1942;
t1360 = t1417 * t1859 + t1986;
t1359 = -t1877 - t2088;
t1357 = t1389 * t1867 + t1518 * t1863;
t1356 = t1389 * t1863 - t1518 * t1867;
t1355 = t1361 * t1867 + t1647 * t1863;
t1354 = t1361 * t1863 - t1647 * t1867;
t1352 = -t1409 * t1859 + t1415 * t1860 - t2077;
t1351 = -t1407 * t1859 + t1412 * t1860 + t2101;
t1349 = t1398 * t1860 + t1399 * t1859;
t1348 = t1408 * t1867 - t1414 * t1863 + t2111;
t1346 = t1401 * t1867 - t1411 * t1863 - t2087;
t1345 = -pkin(2) * t1360 - t2001;
t1344 = t1408 * t1863 + t1414 * t1867 - t2110;
t1343 = t1350 * t1867 + t1489 * t1863;
t1342 = t1350 * t1863 - t1489 * t1867;
t1341 = -t1878 - t2088;
t1339 = -t1384 * t1859 + t1386 * t1860;
t1338 = t1385 * t1860 + t1387 * t1859;
t1337 = t1384 * t1860 + t1386 * t1859;
t1336 = -t1879 - t2112;
t1335 = t1401 * t1863 + t1411 * t1867 + t2084;
t1334 = -qJ(3) * t1467 - t1393 * t1859 + t1400 * t1860;
t1333 = t1339 * t1867 - t1604 * t1863;
t1332 = t1339 * t1863 + t1604 * t1867;
t1327 = t1340 * t1867 + t1578 * t1863;
t1326 = t1340 * t1863 - t1578 * t1867;
t1324 = -pkin(8) * t1986 - qJ(3) * t1360 - t1410 * t1859;
t1323 = -pkin(1) * t1444 - t1880;
t1321 = t1352 * t1867 - t1395 * t1863 - t2087;
t1318 = -qJ(3) * t1465 - t1358 * t1859 + t1368 * t1860;
t1317 = t1351 * t1867 - t1392 * t1863 - t2111;
t1316 = t1352 * t1863 + t1395 * t1867 + t2084;
t1314 = -pkin(2) * t1396 - t1888;
t1310 = t1351 * t1863 + t1392 * t1867 + t2110;
t1309 = -pkin(7) * t1444 + t1334 * t1867 - t1418 * t1863;
t1308 = -pkin(2) * t1349 - t1925;
t1307 = -pkin(2) * t1388 - t1875;
t1306 = -pkin(1) * t1443 - t1881;
t1305 = -pkin(1) * t1467 + pkin(7) * t1446 + t1334 * t1863 + t1418 * t1867;
t1304 = -pkin(1) * t1354 - t1874;
t1303 = -pkin(7) * t1443 + t1318 * t1867 - t1406 * t1863;
t1300 = -pkin(1) * t1465 + pkin(7) * t1445 + t1318 * t1863 + t1406 * t1867;
t1299 = -pkin(2) * t1338 - t1895;
t1298 = -qJ(3) * t1349 - t1347 * t1859 + t1353 * t1860;
t1297 = -pkin(7) * t1354 + t1324 * t1867 - t1345 * t1863;
t1296 = -qJ(3) * t1396 - t1319 * t1859 + t1325 * t1860;
t1295 = -qJ(3) * t1388 - t1313 * t1859 + t1320 * t1860;
t1294 = -pkin(1) * t1360 + pkin(7) * t1355 + t1324 * t1863 + t1345 * t1867;
t1292 = -pkin(1) * t1342 - t1882;
t1290 = -pkin(1) * t1374 - t1883;
t1289 = -pkin(1) * t1356 - t1884;
t1287 = t1301 * t1860 + t1302 * t1859;
t1286 = t1288 * t1867 + t1449 * t1863;
t1285 = t1288 * t1863 - t1449 * t1867;
t1284 = -pkin(7) * t1342 + t1298 * t1867 - t1308 * t1863;
t1283 = -pkin(7) * t1374 + t1296 * t1867 - t1314 * t1863;
t1280 = -pkin(1) * t1396 + pkin(7) * t1375 + t1296 * t1863 + t1314 * t1867;
t1279 = -pkin(7) * t1356 + t1295 * t1867 - t1307 * t1863;
t1278 = -pkin(1) * t1349 + pkin(7) * t1343 + t1298 * t1863 + t1308 * t1867;
t1277 = -pkin(1) * t1388 + pkin(7) * t1357 + t1295 * t1863 + t1307 * t1867;
t1276 = -qJ(3) * t1338 - t1291 * t1859 + t1293 * t1860;
t1275 = -pkin(1) * t1326 - t1885;
t1274 = -pkin(2) * t1287 - t1896;
t1273 = -pkin(7) * t1326 + t1276 * t1867 - t1299 * t1863;
t1272 = -pkin(1) * t1338 + pkin(7) * t1327 + t1276 * t1863 + t1299 * t1867;
t1271 = -qJ(3) * t1287 - t1281 * t1859 + t1282 * t1860;
t1270 = -pkin(1) * t1285 - t1886;
t1269 = -pkin(7) * t1285 + t1271 * t1867 - t1274 * t1863;
t1268 = -pkin(1) * t1287 + pkin(7) * t1286 + t1271 * t1863 + t1274 * t1867;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1830, 0, -t1829, 0, t1918, -t1802, -t1906, -pkin(6) * t1906, t1793 * t1868 - t1927, t1775 * t1868 + t1832 * t1864, t1787 * t1868 + t1864 * t1945, t1792 * t1868 + t1927, t1785 * t1868 + t1864 * t1944, qJDD(2) * t1864 + t1821 * t1868, t1868 * t1740 - t1864 * t1731 - pkin(6) * (t1786 * t1864 + t1827 * t1868), t1868 * t1741 - t1864 * t1732 - pkin(6) * (t1788 * t1864 - t1825 * t1868), t1868 * t1725 - pkin(6) * (t1828 * t1864 + t1831 * t1868), -pkin(6) * (t1726 * t1864 + t1809 * t1868) - (pkin(1) * t1864 - pkin(7) * t1868) * t1725, t1690 * t1868 + t1737 * t1864, t1646 * t1868 + t1669 * t1864, t1653 * t1868 + t1712 * t1864, t1689 * t1868 + t1735 * t1864, t1654 * t1868 + t1713 * t1864, t1718 * t1868 - t1746 * t1864, t1868 * t1478 - t1864 * t1533 - pkin(6) * (t1642 * t1864 - t1691 * t1868), t1868 * t1483 - t1864 * t1542 - pkin(6) * (t1652 * t1864 - t1711 * t1868), t1868 * t1454 - t1864 * t1472 - pkin(6) * (t1612 * t1864 - t1670 * t1868), t1868 * t1413 - t1864 * t1447 - pkin(6) * (t1532 * t1864 - t1570 * t1868), t2013, t2106, t2089, t2051, -t2104, t2052, t1868 * t1346 - t1864 * t1359 - t2081, t1868 * t1348 - t1864 * t1369 + t2113, t1868 * t1309 - t1864 * t1323 - pkin(6) * (t1446 * t1864 - t1467 * t1868), t1868 * t1297 - t1864 * t1304 - pkin(6) * (t1355 * t1864 - t1360 * t1868), t2013, t2089, -t2106, t2052, t2104, t2051, t1868 * t1321 - t1864 * t1341 - t2081, t1868 * t1303 - t1864 * t1306 - pkin(6) * (t1445 * t1864 - t1465 * t1868), t1868 * t1317 - t1864 * t1336 - t2113, t1868 * t1284 - t1864 * t1292 - pkin(6) * (t1343 * t1864 - t1349 * t1868), t1367 * t1868 + t1377 * t1864, t1333 * t1868 + t1337 * t1864, t1382 * t1868 + t1402 * t1864, t1366 * t1868 + t1376 * t1864, t1383 * t1868 + t1403 * t1864, t1423 * t1868 + t1426 * t1864, t1868 * t1279 - t1864 * t1289 - pkin(6) * (t1357 * t1864 - t1388 * t1868), t1868 * t1283 - t1864 * t1290 - pkin(6) * (t1375 * t1864 - t1396 * t1868), t1868 * t1273 - t1864 * t1275 - pkin(6) * (t1327 * t1864 - t1338 * t1868), t1868 * t1269 - t1864 * t1270 - pkin(6) * (t1286 * t1864 - t1287 * t1868); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1829, 0, t1830, 0, t1802, t1918, t1929, pkin(6) * t1929, t1793 * t1864 + t1926, t1775 * t1864 - t1832 * t1868, t1787 * t1864 - t1868 * t1945, t1792 * t1864 - t1926, t1785 * t1864 - t1868 * t1944, -qJDD(2) * t1868 + t1821 * t1864, t1864 * t1740 + t1868 * t1731 + pkin(6) * (t1786 * t1868 - t1827 * t1864), t1864 * t1741 + t1868 * t1732 + pkin(6) * (t1788 * t1868 + t1825 * t1864), t1864 * t1725 + pkin(6) * (t1828 * t1868 - t1831 * t1864), pkin(6) * (t1726 * t1868 - t1809 * t1864) - (-pkin(1) * t1868 - pkin(7) * t1864) * t1725, t1690 * t1864 - t1737 * t1868, t1646 * t1864 - t1669 * t1868, t1653 * t1864 - t1712 * t1868, t1689 * t1864 - t1735 * t1868, t1654 * t1864 - t1713 * t1868, t1718 * t1864 + t1746 * t1868, t1864 * t1478 + t1868 * t1533 + pkin(6) * (t1642 * t1868 + t1691 * t1864), t1864 * t1483 + t1868 * t1542 + pkin(6) * (t1652 * t1868 + t1711 * t1864), t1864 * t1454 + t1868 * t1472 + pkin(6) * (t1612 * t1868 + t1670 * t1864), t1864 * t1413 + t1868 * t1447 + pkin(6) * (t1532 * t1868 + t1570 * t1864), t2014, t2107, t2090, t2053, -t2105, t2054, t1864 * t1346 + t1868 * t1359 + t2080, t1864 * t1348 + t1868 * t1369 - t2114, t1864 * t1309 + t1868 * t1323 + pkin(6) * (t1446 * t1868 + t1467 * t1864), t1864 * t1297 + t1868 * t1304 + pkin(6) * (t1355 * t1868 + t1360 * t1864), t2014, t2090, -t2107, t2054, t2105, t2053, t1864 * t1321 + t1868 * t1341 + t2080, t1864 * t1303 + t1868 * t1306 + pkin(6) * (t1445 * t1868 + t1465 * t1864), t1864 * t1317 + t1868 * t1336 + t2114, t1864 * t1284 + t1868 * t1292 + pkin(6) * (t1343 * t1868 + t1349 * t1864), t1367 * t1864 - t1377 * t1868, t1333 * t1864 - t1337 * t1868, t1382 * t1864 - t1402 * t1868, t1366 * t1864 - t1376 * t1868, t1383 * t1864 - t1403 * t1868, t1423 * t1864 - t1426 * t1868, t1864 * t1279 + t1868 * t1289 + pkin(6) * (t1357 * t1868 + t1388 * t1864), t1864 * t1283 + t1868 * t1290 + pkin(6) * (t1375 * t1868 + t1396 * t1864), t1864 * t1273 + t1868 * t1275 + pkin(6) * (t1327 * t1868 + t1338 * t1864), t1864 * t1269 + t1868 * t1270 + pkin(6) * (t1286 * t1868 + t1287 * t1864); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1837, t1838, 0, 0, t1780, t1774, t1783, t1779, t1781, 0, t1722, t1721, t1695, t1704, t1688, t1645, t1650, t1687, t1651, t1717, t1455, t1477, t1440, t1394, t1914, t1451, t2083, t2030, -t1494, t2031, t1335, t1344, t1305, t1294, t1914, t2083, -t1451, t2031, t1494, t2030, t1316, t1300, t1310, t1278, t1365, t1332, t1380, t1364, t1381, t1422, t1277, t1280, t1272, t1268; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1869, 0, 0, -g(3), -t1837, 0, t1793, t1775, t1787, t1792, t1785, t1821, t1740, t1741, t1725, pkin(7) * t1725, t1690, t1646, t1653, t1689, t1654, t1718, t1478, t1483, t1454, t1413, t1913, t1453, t2082, t2028, -t1498, t2027, t1346, t1348, t1309, t1297, t1913, t2082, -t1453, t2027, t1498, t2028, t1321, t1303, t1317, t1284, t1367, t1333, t1382, t1366, t1383, t1423, t1279, t1283, t1273, t1269; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1869, 0, qJDD(1), 0, g(3), 0, -t1838, 0, t1848, -t1832, -t1945, -t1848, -t1944, -qJDD(2), t1731, t1732, 0, pkin(1) * t1725, -t1737, -t1669, -t1712, -t1735, -t1713, t1746, t1533, t1542, t1472, t1447, -t1545, -t1466, -t2069, -t2009, -t1551, -t2012, t1359, t1369, t1323, t1304, -t1545, -t2069, t1466, -t2012, t1551, -t2009, t1341, t1306, t1336, t1292, -t1377, -t1337, -t1402, -t1376, -t1403, -t1426, t1289, t1290, t1275, t1270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1837, t1838, 0, 0, t1780, t1774, t1783, t1779, t1781, 0, t1722, t1721, t1695, t1704, t1688, t1645, t1650, t1687, t1651, t1717, t1455, t1477, t1440, t1394, t1914, t1451, t2083, t2030, -t1494, t2031, t1335, t1344, t1305, t1294, t1914, t2083, -t1451, t2031, t1494, t2030, t1316, t1300, t1310, t1278, t1365, t1332, t1380, t1364, t1381, t1422, t1277, t1280, t1272, t1268; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1899, t1827, t1834, -t1936, t1845, t1936, 0, -t1809, t1789, 0, t1738, t1671, t1715, t1736, t1716, t1747, t1613, t1648, t1512, -qJ(3) * t1570, t1548, t1470, t2068, t2010, -t1556, t2011, t1401, t1408, t1334, t1324, t1548, t2068, -t1470, t2011, t1556, t2010, t1352, t1318, t1351, t1298, t1379, t1339, t1404, t1378, t1405, t1427, t1295, t1296, t1276, t1271; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1852, t1825, t1843, t1826, t1833, -t1852, t1809, 0, t1790, 0, -t1961, -t1776, t1915, t1961, -t1757, t1826, t1582, t1587, -pkin(2) * t1670, -pkin(2) * t1570, -t1965, -t2021, -t2018, t1965, t1634, t1820, t1411, t1414, t1418, t1345, -t1965, -t2018, t2021, t1820, -t1634, t1965, t1395, t1406, t1392, t1308, t1605, t1604, t1521, -t1605, -t1517, t1814, t1307, t1314, t1299, t1274; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1848, t1832, t1945, t1848, t1944, qJDD(2), -t1789, -t1790, 0, 0, t1737, t1669, t1712, t1735, t1713, -t1746, t1892, t1891, t1889, t1917, t1545, t1466, t2069, t2009, t1551, t2012, t1877, t1876, t1880, t1874, t1545, t2069, -t1466, t2012, -t1551, t2009, t1878, t1881, t1879, t1882, t1377, t1337, t1402, t1376, t1403, t1426, t1884, t1883, t1885, t1886; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1794, t1756, t1898, -t1935, t1797, t1935, 0, t1733, t1643, 0, t1619, t1568, t2056, t1900, t1626, t1911, t1534, t1561, t1400, -pkin(8) * t1416, t1619, t2056, -t1568, t1911, -t1626, t1900, t1415, t1368, t1412, t1353, t1431, t1386, t1475, t1430, t1476, t1503, t1320, t1325, t1293, t1282; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1801, t1759, t1798, t1873, -t1760, t1801, -t1733, 0, t1644, 0, t1618, t1564, t2055, t1912, t1622, t1894, t1484, t1501, t1393, t1410, t1618, t2055, -t1564, t1894, -t1622, t1912, t1409, t1358, t1407, t1347, t1429, t1384, t1473, t1428, t1474, t1502, t1313, t1319, t1291, t1281; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1961, t1776, -t1915, -t1961, t1757, -t1826, -t1643, -t1644, 0, 0, t1965, t2021, t2018, -t1965, -t1634, -t1820, t1904, t1923, t2000, t2001, t1965, t2018, -t2021, -t1820, t1634, -t1965, t1871, t1924, t1835 + t1887, t1925, -t1605, -t1604, -t1521, t1605, t1517, -t1814, t1875, t1888, t1895, t1896; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1674, -t2023, t2020, -t1966, t1743, t1966, 0, t1647, t1499, 0, t1674, t2020, t2023, t1966, -t1743, -t1966, -qJ(5) * t2023, t1442, t1457, -qJ(5) * t1489, t1516, t1436, t1574, t1514, t1575, t1595, t1390, t1391, t1315, t1322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1754, t2022, -t1744, -t1673, -t2019, t1754, -t1647, 0, t1500, 0, -t1754, -t1744, -t2022, t1754, t2019, -t1673, t1458, t1441, pkin(4) * t2022, -pkin(4) * t1489, -t1515, -t1434, -t1572, t1513, -t1573, -t1594, t1362, t1363, t1312, t1311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1965, t2021, t2018, -t1965, -t1634, -t1820, -t1499, -t1500, 0, 0, t1965, t2018, -t2021, -t1820, t1634, -t1965, t1872, t1947, t1835 + t1893, t1948, -t1605, -t1604, -t1521, t1605, t1517, -t1814, t1890, t1897, t1920, t1922; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1674, t2020, t2023, t1966, -t1743, -t1966, 0, t1463, -t1489, 0, t1516, t1436, t1574, t1514, t1575, t1595, t1910, t1933, t1902, -t1996; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1965, t2018, -t2021, -t1820, t1634, -t1965, -t1463, 0, t1459, 0, -t1605, -t1604, -t1521, t1605, t1517, -t1814, t1903, t1921, -t1997, -t1998; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1754, t1744, t2022, -t1754, -t2019, t1673, t1489, -t1459, 0, 0, t1515, t1434, t1572, -t1513, t1573, t1594, pkin(5) * t1518 - t1909, -pkin(5) * t1520 - t1908, pkin(5) * t1578 - t1901, pkin(5) * t1449 + t1995; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1577, t1518, t2024, t1678, t1675, -t1678, 0, -t1449, t1372, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1679, t1520, t1676, t1576, t1597, -t1679, t1449, 0, t1373, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1605, t1604, t1521, -t1605, -t1517, t1814, -t1372, -t1373, 0, 0;];
m_new_reg  = t1;

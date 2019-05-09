% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6PRRPRP5
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 04:12
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6PRRPRP5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP5_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP5_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRP5_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRP5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP5_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 04:11:45
% EndTime: 2019-05-05 04:12:33
% DurationCPUTime: 51.86s
% Computational Cost: add. (87163->889), mult. (175206->1093), div. (0->0), fcn. (111687->10), ass. (0->612)
t1646 = cos(qJ(5));
t1643 = sin(qJ(5));
t1647 = cos(qJ(3));
t1822 = qJD(2) * t1647;
t1590 = qJD(3) * t1646 - t1643 * t1822;
t1579 = t1590 ^ 2;
t1644 = sin(qJ(3));
t1823 = qJD(2) * t1644;
t1620 = qJD(5) + t1823;
t1616 = t1620 ^ 2;
t1764 = t1616 + t1579;
t1625 = qJD(3) * t1822;
t1768 = t1644 * qJDD(2);
t1595 = t1625 + t1768;
t1580 = qJDD(5) + t1595;
t1588 = qJD(3) * t1643 + t1646 * t1822;
t1808 = t1590 * t1588;
t1867 = t1580 + t1808;
t1785 = t1643 * t1867;
t1398 = t1646 * t1764 + t1785;
t1758 = qJD(3) * t1823;
t1767 = t1647 * qJDD(2);
t1684 = t1758 - t1767;
t1655 = t1646 * qJDD(3) + t1643 * t1684;
t1509 = -t1588 * qJD(5) + t1655;
t1560 = t1588 * t1620;
t1869 = -t1560 + t1509;
t1334 = t1398 * t1647 + t1644 * t1869;
t1638 = sin(pkin(6));
t1640 = cos(pkin(6));
t1332 = t1398 * t1644 - t1647 * t1869;
t1810 = t1867 * t1646;
t1415 = t1643 * t1764 - t1810;
t1645 = sin(qJ(2));
t1648 = cos(qJ(2));
t1712 = t1332 * t1645 + t1415 * t1648;
t1229 = -t1640 * t1334 + t1638 * t1712;
t1231 = t1638 * t1334 + t1640 * t1712;
t2034 = pkin(7) * (t1229 * t1638 + t1231 * t1640);
t1287 = t1332 * t1648 - t1415 * t1645;
t1637 = sin(pkin(10));
t1639 = cos(pkin(10));
t2033 = qJ(1) * (t1231 * t1639 + t1287 * t1637);
t2032 = qJ(1) * (t1231 * t1637 - t1287 * t1639);
t2031 = pkin(1) * t1229;
t2030 = pkin(1) * t1231;
t1844 = t1588 ^ 2;
t1556 = t1844 - t1616;
t1437 = t1556 * t1643 + t1810;
t1742 = -t1643 * qJDD(3) + t1646 * t1684;
t1508 = qJD(5) * t1590 - t1742;
t1562 = t1590 * t1620;
t1465 = t1508 - t1562;
t1340 = t1437 * t1647 + t1465 * t1644;
t1345 = t1437 * t1644 - t1465 * t1647;
t1441 = t1556 * t1646 - t1785;
t1708 = t1345 * t1645 - t1441 * t1648;
t1248 = t1638 * t1340 + t1640 * t1708;
t1295 = t1345 * t1648 + t1441 * t1645;
t2027 = t1248 * t1637 - t1295 * t1639;
t2026 = t1248 * t1639 + t1295 * t1637;
t2024 = pkin(7) * t1287;
t1244 = -t1640 * t1340 + t1638 * t1708;
t1634 = t1644 ^ 2;
t1649 = qJD(2) ^ 2;
t1628 = t1634 * t1649;
t1845 = qJD(3) ^ 2;
t1613 = -t1628 - t1845;
t1779 = t1647 * t1649;
t1619 = t1644 * t1779;
t1605 = qJDD(3) - t1619;
t1801 = t1605 * t1644;
t1540 = -t1613 * t1647 + t1801;
t1780 = t1647 * t1605;
t1548 = t1613 * t1644 + t1780;
t1594 = 0.2e1 * t1625 + t1768;
t1698 = t1548 * t1645 + t1594 * t1648;
t1404 = t1640 * t1540 + t1638 * t1698;
t1408 = -t1638 * t1540 + t1640 * t1698;
t2019 = pkin(7) * (t1404 * t1638 + t1408 * t1640);
t1481 = t1548 * t1648 - t1594 * t1645;
t2018 = qJ(1) * (t1408 * t1639 + t1481 * t1637);
t2017 = qJ(1) * (t1408 * t1637 - t1481 * t1639);
t2016 = pkin(1) * t1404;
t2015 = pkin(1) * t1408;
t2014 = pkin(2) * t1334;
t1843 = t1647 ^ 2;
t1630 = t1843 * t1649;
t1615 = -t1630 - t1845;
t1604 = qJDD(3) + t1619;
t1781 = t1647 * t1604;
t1537 = t1615 * t1644 + t1781;
t1802 = t1604 * t1644;
t1546 = -t1615 * t1647 + t1802;
t1596 = -0.2e1 * t1758 + t1767;
t1699 = t1546 * t1645 - t1596 * t1648;
t1403 = -t1640 * t1537 + t1638 * t1699;
t1407 = t1638 * t1537 + t1640 * t1699;
t2013 = pkin(7) * (t1403 * t1638 + t1407 * t1640);
t2012 = pkin(8) * t1334;
t1480 = t1546 * t1648 + t1596 * t1645;
t2011 = qJ(1) * (t1407 * t1639 + t1480 * t1637);
t2010 = qJ(1) * (t1407 * t1637 - t1480 * t1639);
t2005 = pkin(2) * t1415 + pkin(8) * t1332;
t1612 = -t1628 + t1845;
t1539 = t1612 * t1647 + t1802;
t1547 = -t1612 * t1644 + t1781;
t1681 = t1547 * t1645 - t1648 * t1768;
t1426 = -t1638 * t1539 + t1640 * t1681;
t1503 = t1547 * t1648 + t1645 * t1768;
t2002 = t1426 * t1637 - t1503 * t1639;
t2001 = t1426 * t1639 + t1503 * t1637;
t1999 = pkin(1) * t1403;
t1998 = pkin(1) * t1407;
t1870 = t1508 + t1562;
t1866 = -t1808 + t1580;
t1809 = t1866 * t1646;
t1865 = -t1844 - t1616;
t1878 = t1643 * t1865 + t1809;
t1907 = t1644 * t1870 - t1647 * t1878;
t1485 = t1643 * t1866;
t1881 = t1646 * t1865 - t1485;
t1910 = t1644 * t1878 + t1647 * t1870;
t1940 = t1645 * t1910 - t1648 * t1881;
t1963 = -t1638 * t1907 + t1640 * t1940;
t1997 = pkin(1) * t1963;
t1966 = t1638 * t1940 + t1640 * t1907;
t1996 = pkin(1) * t1966;
t1614 = t1630 - t1845;
t1535 = t1614 * t1644 + t1780;
t1544 = -t1614 * t1647 + t1801;
t1682 = t1544 * t1645 + t1648 * t1767;
t1425 = t1638 * t1535 + t1640 * t1682;
t1502 = t1544 * t1648 - t1645 * t1767;
t1993 = t1425 * t1637 - t1502 * t1639;
t1992 = t1425 * t1639 + t1502 * t1637;
t1939 = t1645 * t1881 + t1648 * t1910;
t1991 = qJ(1) * (-t1637 * t1963 + t1639 * t1939);
t1990 = qJ(1) * (t1637 * t1939 + t1639 * t1963);
t1988 = (-t1638 * t1966 - t1640 * t1963) * pkin(7);
t1986 = pkin(4) * t1398;
t1985 = pkin(7) * t1481;
t1984 = pkin(7) * t1939;
t1983 = pkin(9) * t1398;
t1982 = pkin(9) * t1415;
t1981 = qJ(4) * t1415;
t1841 = pkin(3) + pkin(9);
t1978 = t1415 * t1841;
t1969 = qJ(4) * t1869 + t1398 * t1841;
t1796 = t1620 * t1643;
t1552 = t1590 * t1796;
t1795 = t1620 * t1646;
t1759 = t1588 * t1795;
t1475 = -t1552 + t1759;
t1872 = (t1588 * t1643 + t1590 * t1646) * t1620;
t1879 = t1647 * t1580 - t1644 * t1872;
t1906 = -t1475 * t1645 + t1648 * t1879;
t1880 = t1644 * t1580 + t1647 * t1872;
t1909 = t1475 * t1648 + t1645 * t1879;
t1941 = -t1638 * t1880 + t1640 * t1909;
t1968 = -t1637 * t1941 + t1639 * t1906;
t1452 = t1643 * t1508 + t1759;
t1450 = -t1508 * t1646 + t1588 * t1796;
t1760 = t1647 * t1808;
t1883 = t1450 * t1644 - t1760;
t1905 = t1452 * t1645 + t1648 * t1883;
t1761 = t1644 * t1808;
t1882 = -t1450 * t1647 - t1761;
t1908 = -t1452 * t1648 + t1645 * t1883;
t1942 = -t1638 * t1882 + t1640 * t1908;
t1967 = -t1637 * t1942 + t1639 * t1905;
t1422 = t1640 * t1539 + t1638 * t1681;
t1965 = t1637 * t1906 + t1639 * t1941;
t1964 = t1637 * t1905 + t1639 * t1942;
t1962 = pkin(2) * t1907;
t1961 = pkin(7) * t1480;
t1960 = pkin(8) * t1907;
t1771 = t1579 - t1616;
t1913 = -t1646 * t1771 + t1485;
t1949 = t1644 * t1913;
t1912 = t1643 * t1771 + t1809;
t1948 = t1645 * t1912;
t1947 = t1647 * t1913;
t1946 = t1648 * t1912;
t1945 = -pkin(2) * t1881 + pkin(8) * t1910;
t1421 = -t1640 * t1535 + t1638 * t1682;
t1944 = t1638 * t1908 + t1640 * t1882;
t1943 = t1638 * t1909 + t1640 * t1880;
t1938 = pkin(2) * t1537;
t1489 = -t1844 - t1579;
t1936 = pkin(4) * t1489;
t1935 = pkin(4) * t1878;
t1934 = pkin(8) * t1537;
t1933 = pkin(8) * t1548;
t1932 = pkin(9) * t1878;
t1931 = pkin(9) * t1881;
t1930 = qJ(4) * t1489;
t1929 = qJ(4) * t1881;
t1928 = qJ(6) * t1869;
t1927 = t1489 * t1644;
t1926 = t1489 * t1647;
t1915 = t1841 * t1878;
t1914 = t1841 * t1881;
t1603 = g(1) * t1639 + g(2) * t1637;
t1751 = g(1) * t1637 - t1639 * g(2);
t1830 = g(3) - qJDD(1);
t1884 = -t1638 * t1830 + t1640 * t1751;
t1496 = -t1648 * t1603 + t1645 * t1884;
t1478 = -t1649 * pkin(2) + qJDD(2) * pkin(8) + t1496;
t1826 = qJ(4) * t1644;
t1838 = pkin(3) * t1647;
t1732 = -t1826 - t1838;
t1746 = t1649 * t1732 + t1478;
t1559 = t1638 * t1751 + t1640 * t1830;
t1784 = t1644 * t1559;
t1660 = -pkin(3) * t1845 + t1647 * t1746 - t1784;
t1904 = 2 * qJD(4);
t1654 = qJD(3) * t1904 + t1660;
t1911 = t1654 + (qJDD(3) + t1605) * qJ(4) - pkin(3) * t1613;
t1903 = pkin(2) * t1540;
t1902 = pkin(8) * t1540;
t1901 = pkin(8) * t1546;
t1868 = t1579 - t1844;
t1891 = t1644 * t1868;
t1888 = t1647 * t1868;
t1885 = t1595 + t1625;
t1454 = t1509 * t1643 + t1590 * t1795;
t1686 = t1454 * t1644 + t1760;
t1730 = -t1647 * t1454 + t1761;
t1792 = t1640 * t1645;
t1455 = t1509 * t1646 - t1552;
t1817 = t1455 * t1648;
t1846 = -t1638 * t1730 - t1640 * t1817 + t1686 * t1792;
t1850 = t1455 * t1645 + t1648 * t1686;
t1877 = t1637 * t1850 + t1639 * t1846;
t1876 = -t1637 * t1846 + t1639 * t1850;
t1609 = pkin(4) * t1823 - qJD(3) * pkin(9);
t1777 = t1904 + t1609;
t1819 = qJDD(3) * qJ(4);
t1862 = -t1684 * pkin(4) - pkin(9) * t1630 + t1819;
t1348 = qJD(3) * t1777 + t1660 + t1862;
t1863 = t1508 * pkin(5) - t1928;
t1281 = (pkin(5) * t1620 - (2 * qJD(6))) * t1590 + t1348 + t1863;
t1757 = qJ(6) * t1643 + pkin(4);
t1833 = pkin(5) * t1646;
t1875 = t1281 * (t1757 + t1833);
t1874 = t1637 * t1830;
t1873 = t1639 * t1830;
t1551 = t1647 * t1559;
t1739 = -qJDD(3) * pkin(3) - qJ(4) * t1845 + qJDD(4) + t1551;
t1349 = -qJDD(3) * pkin(9) + (t1595 - t1625) * pkin(4) + (-pkin(9) * t1779 + t1746) * t1644 + t1739;
t1495 = -t1645 * t1603 - t1648 * t1884;
t1477 = -qJDD(2) * pkin(2) - t1649 * pkin(8) + t1495;
t1658 = t1684 * pkin(3) - qJ(4) * t1885 + t1477;
t1352 = (-pkin(4) * t1779 - pkin(9) * qJDD(2)) * t1647 + (qJD(3) * t1841 - t1777) * t1823 + t1658;
t1279 = -t1646 * t1349 + t1643 * t1352;
t1280 = t1643 * t1349 + t1646 * t1352;
t1871 = -t1646 * t1279 + t1643 * t1280;
t1380 = t1644 * t1746 + t1739;
t1864 = -pkin(3) * t1604 - qJ(4) * t1615 + t1380;
t1860 = qJ(4) * t1348 - t1841 * t1871;
t1776 = -qJD(5) + t1620;
t1467 = t1590 * t1776 + t1742;
t1471 = t1588 * t1776 + t1655;
t1813 = t1471 * t1646;
t1356 = t1467 * t1643 - t1813;
t1859 = -t1356 * t1841 - t1871 + t1930;
t1357 = -t1465 * t1643 - t1813;
t1820 = qJD(6) * t1620;
t1606 = 0.2e1 * t1820;
t1522 = pkin(5) * t1588 - qJ(6) * t1590;
t1723 = -t1616 * pkin(5) + t1580 * qJ(6) - t1588 * t1522 + t1280;
t1255 = t1606 + t1723;
t1232 = -pkin(5) * t1489 + t1255;
t1258 = -t1580 * pkin(5) - t1616 * qJ(6) + t1522 * t1590 + qJDD(6) + t1279;
t1234 = -qJ(6) * t1489 + t1258;
t1745 = t1643 * t1232 - t1646 * t1234;
t1858 = -t1357 * t1841 - t1745 + t1930;
t1650 = -qJD(3) * t1609 + 0.2e1 * qJD(6) * t1590 - t1654 - t1862 - t1863;
t1261 = -pkin(5) * t1562 + t1650 + t1928;
t1786 = t1643 * t1869;
t1774 = pkin(5) * t1786 - t1646 * t1261;
t1857 = -t1774 - t1969;
t1788 = t1643 * t1348;
t1856 = qJ(4) * t1870 + t1788 - t1915;
t1337 = t1646 * t1348;
t1855 = t1337 + t1969;
t1262 = (-t1870 - t1562) * pkin(5) + t1650;
t1854 = t1646 * t1262 - t1757 * t1870;
t1853 = t1869 * (pkin(4) + t1833) + t1643 * t1261;
t1852 = -t1639 * t1603 - t1637 * t1751;
t1851 = -t1637 * t1603 + t1639 * t1751;
t1187 = t1255 * t1643 - t1258 * t1646;
t1834 = pkin(5) * t1281;
t1276 = t1643 * t1834;
t1825 = qJ(6) * t1646;
t1749 = -qJ(4) + t1825;
t1849 = -t1187 * t1841 - t1281 * t1749 + t1276;
t1790 = t1643 * t1262;
t1848 = -t1749 * t1870 - t1790 - t1915;
t1793 = t1638 * t1645;
t1847 = -t1638 * t1817 + t1640 * t1730 + t1686 * t1793;
t1842 = -2 * qJD(4);
t1837 = pkin(4) * t1871;
t1836 = pkin(4) * t1348;
t1835 = pkin(4) * t1356;
t1832 = pkin(7) * t1638;
t1831 = pkin(7) * t1640;
t1763 = t1634 + t1843;
t1598 = t1763 * qJDD(2);
t1601 = t1628 + t1630;
t1693 = t1598 * t1645 + t1601 * t1648;
t1515 = t1693 * t1640;
t1524 = t1598 * t1648 - t1601 * t1645;
t1829 = qJ(1) * (t1515 * t1639 + t1524 * t1637);
t1824 = qJD(2) * qJD(3);
t1816 = t1870 * t1646;
t1812 = t1477 * t1644;
t1811 = t1477 * t1647;
t1807 = t1594 * t1644;
t1533 = t1596 * t1647;
t1787 = t1643 * t1870;
t1783 = t1645 * t1559;
t1778 = t1648 * t1559;
t1775 = -pkin(5) * t1258 + qJ(6) * t1255;
t1773 = -pkin(5) * t1471 - qJ(6) * t1465;
t1772 = pkin(1) * t1515 + t1524 * t1832;
t1770 = pkin(2) * t1601 + pkin(8) * t1598;
t1769 = t1638 * qJDD(2);
t1514 = t1693 * t1638;
t1752 = -pkin(1) * t1514 + t1524 * t1831;
t1417 = t1644 * t1478 + t1551;
t1418 = t1647 * t1478 - t1784;
t1318 = t1417 * t1644 + t1647 * t1418;
t1741 = t1645 * t1619;
t1740 = t1648 * t1619;
t1738 = -pkin(4) * t1187 - t1775;
t1737 = t1280 + t1986;
t1736 = t1279 - t1935;
t1735 = -pkin(4) * t1357 - t1773;
t1377 = t1654 + t1819;
t1733 = -pkin(3) * t1380 + qJ(4) * t1377;
t1731 = pkin(3) * t1644 - qJ(4) * t1647;
t1728 = pkin(4) * t1870 + t1337;
t1727 = pkin(4) * t1869 - t1788;
t1599 = qJDD(2) * t1648 - t1645 * t1649;
t1726 = -pkin(7) * t1599 - t1783;
t1692 = qJDD(2) * t1645 + t1648 * t1649;
t1725 = -pkin(7) * t1692 + t1778;
t1181 = t1187 * t1644 + t1281 * t1647;
t1188 = t1255 * t1646 + t1643 * t1258;
t1722 = t1181 * t1645 - t1188 * t1648;
t1190 = t1348 * t1647 + t1644 * t1871;
t1202 = t1643 * t1279 + t1646 * t1280;
t1721 = t1190 * t1645 - t1202 * t1648;
t1369 = pkin(3) * t1601 + t1377;
t1370 = qJ(4) * t1601 + t1380;
t1288 = -t1369 * t1644 + t1370 * t1647;
t1591 = t1731 * qJDD(2);
t1720 = t1288 * t1645 + t1591 * t1648;
t1299 = t1377 * t1647 + t1380 * t1644;
t1389 = (pkin(3) * qJD(3) + t1842) * t1823 + t1658;
t1719 = t1299 * t1645 - t1389 * t1648;
t1308 = t1356 * t1644 + t1926;
t1459 = t1643 * t1471;
t1360 = t1467 * t1646 + t1459;
t1718 = t1308 * t1645 - t1360 * t1648;
t1309 = t1357 * t1644 + t1926;
t1361 = -t1465 * t1646 + t1459;
t1717 = t1309 * t1645 - t1361 * t1648;
t1716 = t1318 * t1645 - t1477 * t1648;
t1651 = (-qJD(5) - t1620) * t1588 + t1655;
t1358 = t1646 * t1651 - t1787;
t1321 = t1358 * t1644 + t1888;
t1362 = -t1643 * t1651 - t1816;
t1715 = t1321 * t1645 - t1362 * t1648;
t1355 = -t1646 * t1869 + t1787;
t1322 = t1355 * t1644 - t1888;
t1359 = t1786 + t1816;
t1714 = t1322 * t1645 - t1359 * t1648;
t1468 = t1560 + t1509;
t1346 = t1468 * t1647 + t1949;
t1707 = t1346 * t1645 - t1946;
t1347 = t1471 * t1647 + t1949;
t1706 = t1347 * t1645 - t1946;
t1317 = t1417 * t1647 - t1418 * t1644;
t1396 = t1495 * t1648 - t1496 * t1645;
t1397 = t1495 * t1645 + t1496 * t1648;
t1520 = t1533 - t1807;
t1602 = t1628 - t1630;
t1701 = t1520 * t1645 - t1602 * t1648;
t1568 = t1692 * t1640;
t1696 = t1568 * t1639 + t1599 * t1637;
t1695 = t1568 * t1637 - t1599 * t1639;
t1583 = t1763 * t1824;
t1691 = -qJDD(3) * t1648 + t1583 * t1645;
t1685 = (-t1514 * t1638 - t1515 * t1640) * pkin(7);
t1679 = pkin(5) * t1764 + qJ(6) * t1867 + t1723;
t1553 = t1644 * t1684 - t1824 * t1843;
t1678 = t1553 * t1645 - t1740;
t1554 = t1595 * t1647 - t1634 * t1824;
t1677 = t1554 * t1645 + t1740;
t1676 = -t1646 * t1232 - t1643 * t1234 + t1936;
t1675 = -t1202 + t1936;
t1153 = -t1188 * t1841 + t1875;
t1155 = -qJ(4) * t1188 - t1738;
t1180 = -t1187 * t1647 + t1281 * t1644;
t1130 = -pkin(8) * t1180 - t1153 * t1644 + t1155 * t1647;
t1142 = -pkin(2) * t1180 - t1849;
t1161 = t1181 * t1648 + t1188 * t1645;
t1674 = pkin(7) * t1161 + t1130 * t1645 + t1142 * t1648;
t1171 = -t1202 * t1841 + t1836;
t1174 = -qJ(4) * t1202 + t1837;
t1189 = t1348 * t1644 - t1647 * t1871;
t1145 = -pkin(8) * t1189 - t1171 * t1644 + t1174 * t1647;
t1158 = -pkin(2) * t1189 - t1860;
t1169 = t1190 * t1648 + t1202 * t1645;
t1673 = pkin(7) * t1169 + t1145 * t1645 + t1158 * t1648;
t1176 = -t1361 * t1841 + t1676;
t1242 = -qJ(4) * t1361 - t1735;
t1307 = -t1357 * t1647 + t1927;
t1162 = -pkin(8) * t1307 - t1176 * t1644 + t1242 * t1647;
t1170 = -pkin(2) * t1307 - t1858;
t1265 = t1309 * t1648 + t1361 * t1645;
t1672 = pkin(7) * t1265 + t1162 * t1645 + t1170 * t1648;
t1195 = -t1853 + t1978;
t1659 = -t1679 - t1986;
t1197 = t1606 - t1659 + t1981;
t1166 = -t1195 * t1644 + t1197 * t1647 + t2012;
t1185 = -t1857 + t2014;
t1671 = t1166 * t1645 + t1185 * t1648 + t2024;
t1196 = -t1854 - t1914;
t1657 = pkin(5) * t1866 + qJ(6) * t1865 - t1258;
t1653 = -t1657 - t1935;
t1200 = -t1653 - t1929;
t1167 = -t1196 * t1644 + t1200 * t1647 - t1960;
t1186 = -t1848 - t1962;
t1670 = t1167 * t1645 + t1186 * t1648 + t1984;
t1184 = -t1360 * t1841 + t1675;
t1284 = -qJ(4) * t1360 + t1835;
t1306 = -t1356 * t1647 + t1927;
t1168 = -pkin(8) * t1306 - t1184 * t1644 + t1284 * t1647;
t1179 = -pkin(2) * t1306 - t1859;
t1264 = t1308 * t1648 + t1360 * t1645;
t1669 = pkin(7) * t1264 + t1168 * t1645 + t1179 * t1648;
t1218 = -t1736 - t1929;
t1241 = t1728 - t1914;
t1182 = t1218 * t1647 - t1241 * t1644 - t1960;
t1205 = -t1856 - t1962;
t1668 = t1182 * t1645 + t1205 * t1648 + t1984;
t1219 = -t1737 - t1981;
t1253 = t1727 - t1978;
t1183 = t1219 * t1647 - t1253 * t1644 - t2012;
t1207 = -t1855 - t2014;
t1667 = t1183 * t1645 + t1207 * t1648 - t2024;
t1298 = t1377 * t1644 - t1380 * t1647;
t1222 = -pkin(2) * t1298 - t1733;
t1227 = -pkin(8) * t1298 + t1389 * t1731;
t1263 = t1299 * t1648 + t1389 * t1645;
t1666 = pkin(7) * t1263 + t1222 * t1648 + t1227 * t1645;
t1652 = t1823 * t1842 + t1658;
t1372 = (-t1596 + t1758) * pkin(3) + t1652;
t1323 = -qJ(4) * t1533 - t1372 * t1644 + t1934;
t1326 = -t1864 + t1938;
t1665 = t1323 * t1645 + t1326 * t1648 + t1961;
t1371 = -pkin(3) * t1758 + qJ(4) * t1594 - t1652;
t1324 = -pkin(3) * t1807 + t1371 * t1647 - t1902;
t1325 = -t1903 - t1911;
t1664 = t1324 * t1645 + t1325 * t1648 + t1985;
t1378 = t1417 - t1938;
t1411 = t1812 - t1934;
t1663 = t1378 * t1648 + t1411 * t1645 - t1961;
t1379 = t1418 + t1903;
t1412 = t1811 + t1902;
t1662 = t1379 * t1648 + t1412 * t1645 - t1985;
t1293 = t1318 * t1648 + t1477 * t1645;
t1661 = pkin(7) * t1293 - (-pkin(2) * t1648 - pkin(8) * t1645) * t1317;
t1627 = t1640 * qJDD(2);
t1569 = t1599 * t1640;
t1567 = t1599 * t1638;
t1566 = t1692 * t1638;
t1555 = qJDD(3) * t1645 + t1583 * t1648;
t1534 = t1885 * t1644;
t1526 = t1691 * t1640;
t1525 = t1691 * t1638;
t1519 = t1594 * t1647 + t1596 * t1644;
t1512 = -t1569 * t1637 - t1639 * t1692;
t1511 = t1569 * t1639 - t1637 * t1692;
t1507 = t1554 * t1648 - t1741;
t1506 = t1553 * t1648 + t1741;
t1472 = t1520 * t1648 + t1602 * t1645;
t1461 = -t1526 * t1637 + t1555 * t1639;
t1460 = t1526 * t1639 + t1555 * t1637;
t1448 = -t1778 + (t1566 * t1638 + t1568 * t1640) * pkin(7);
t1447 = -t1783 + (-t1567 * t1638 - t1569 * t1640) * pkin(7);
t1431 = -t1638 * t1534 + t1640 * t1677;
t1430 = -t1638 * t1533 + t1640 * t1678;
t1429 = t1640 * t1534 + t1638 * t1677;
t1428 = t1640 * t1533 + t1638 * t1678;
t1419 = qJ(1) * (-t1515 * t1637 + t1524 * t1639);
t1395 = -t1638 * t1519 + t1640 * t1701;
t1394 = t1640 * t1519 + t1638 * t1701;
t1393 = pkin(2) * t1596 - t1811 - t1901;
t1392 = -pkin(2) * t1594 + t1812 - t1933;
t1391 = t1397 * t1640;
t1390 = t1397 * t1638;
t1376 = -pkin(1) * t1567 + t1638 * t1495 + t1640 * t1725;
t1375 = pkin(1) * t1566 + t1638 * t1496 + t1640 * t1726;
t1374 = pkin(1) * t1569 - t1640 * t1495 + t1638 * t1725;
t1373 = -pkin(1) * t1568 - t1640 * t1496 + t1638 * t1726;
t1368 = -t1431 * t1637 + t1507 * t1639;
t1367 = -t1430 * t1637 + t1506 * t1639;
t1366 = t1431 * t1639 + t1507 * t1637;
t1365 = t1430 * t1639 + t1506 * t1637;
t1364 = -t1396 * t1640 + t1638 * t1559;
t1363 = -t1396 * t1638 - t1640 * t1559;
t1343 = t1471 * t1644 - t1947;
t1342 = t1468 * t1644 - t1947;
t1328 = -t1395 * t1637 + t1472 * t1639;
t1327 = t1395 * t1639 + t1472 * t1637;
t1320 = -t1355 * t1647 - t1891;
t1319 = -t1358 * t1647 + t1891;
t1311 = t1933 + t1644 * t1371 + (pkin(2) + t1838) * t1594;
t1310 = t1901 + t1647 * t1372 + (-pkin(2) - t1826) * t1596;
t1305 = t1318 + t1770;
t1300 = -pkin(2) * t1477 + pkin(8) * t1318;
t1297 = t1347 * t1648 + t1948;
t1296 = t1346 * t1648 + t1948;
t1292 = pkin(1) * t1364 + t1397 * t1832;
t1291 = -pkin(1) * t1363 + t1397 * t1831;
t1285 = t1648 * t1317 + t1685;
t1283 = (-t1363 * t1638 - t1364 * t1640) * pkin(7);
t1282 = t1369 * t1647 + t1370 * t1644 + t1770;
t1267 = t1322 * t1648 + t1359 * t1645;
t1266 = t1321 * t1648 + t1362 * t1645;
t1259 = t1648 * t1288 - t1645 * t1591 + t1685;
t1252 = -t1645 * t1379 + t1648 * t1412 + t2019;
t1251 = -t1645 * t1378 + t1648 * t1411 + t2013;
t1250 = -t1638 * t1343 + t1640 * t1706;
t1249 = -t1638 * t1342 + t1640 * t1707;
t1246 = t1640 * t1343 + t1638 * t1706;
t1245 = t1640 * t1342 + t1638 * t1707;
t1236 = t1317 * t1638 + t1640 * t1716;
t1235 = -t1317 * t1640 + t1638 * t1716;
t1226 = -t1638 * t1392 + t1640 * t1662 + t2016;
t1225 = -t1638 * t1393 + t1640 * t1663 + t1999;
t1224 = t1640 * t1392 + t1638 * t1662 - t2015;
t1223 = t1640 * t1393 + t1638 * t1663 - t1998;
t1221 = -t1305 * t1638 + t1317 * t1792 + t1752;
t1220 = t1305 * t1640 + t1317 * t1793 + t1772;
t1217 = -t1638 * t1320 + t1640 * t1714;
t1216 = -t1638 * t1319 + t1640 * t1715;
t1215 = t1640 * t1320 + t1638 * t1714;
t1214 = t1640 * t1319 + t1638 * t1715;
t1213 = -t1638 * t1307 + t1640 * t1717;
t1212 = -t1638 * t1306 + t1640 * t1718;
t1211 = t1640 * t1307 + t1638 * t1717;
t1210 = t1640 * t1306 + t1638 * t1718;
t1209 = t1648 * t1323 - t1645 * t1326 - t2013;
t1208 = t1648 * t1324 - t1645 * t1325 - t2019;
t1206 = pkin(8) * t1299 + (-pkin(2) + t1732) * t1389;
t1204 = -t1638 * t1298 + t1640 * t1719;
t1203 = t1640 * t1298 + t1638 * t1719;
t1199 = -t1638 * t1282 + t1640 * t1720 + t1752;
t1198 = t1640 * t1282 + t1638 * t1720 + t1772;
t1194 = -t1638 * t1310 + t1640 * t1665 - t1999;
t1193 = t1640 * t1310 + t1638 * t1665 + t1998;
t1192 = -t1638 * t1311 + t1640 * t1664 - t2016;
t1191 = t1640 * t1311 + t1638 * t1664 + t2015;
t1178 = t1219 * t1644 + t1253 * t1647 - t2005;
t1177 = t1218 * t1644 + t1241 * t1647 + t1945;
t1175 = -(pkin(2) * t1645 - pkin(8) * t1648) * t1317 + (-t1235 * t1638 - t1236 * t1640) * pkin(7);
t1173 = -pkin(1) * t1235 - t1638 * t1300 + t1640 * t1661;
t1172 = pkin(1) * t1236 + t1640 * t1300 + t1638 * t1661;
t1165 = -pkin(2) * t1360 + pkin(8) * t1308 + t1184 * t1647 + t1284 * t1644;
t1164 = t1196 * t1647 + t1200 * t1644 + t1945;
t1163 = t1195 * t1647 + t1197 * t1644 + t2005;
t1160 = -pkin(2) * t1361 + pkin(8) * t1309 + t1176 * t1647 + t1242 * t1644;
t1159 = -t1645 * t1222 + t1648 * t1227 + (-t1203 * t1638 - t1204 * t1640) * pkin(7);
t1157 = -t1638 * t1189 + t1640 * t1721;
t1156 = t1640 * t1189 + t1638 * t1721;
t1154 = t1648 * t1183 - t1645 * t1207 + t2034;
t1152 = -pkin(1) * t1203 - t1638 * t1206 + t1640 * t1666;
t1151 = pkin(1) * t1204 + t1640 * t1206 + t1638 * t1666;
t1150 = t1648 * t1182 - t1645 * t1205 + t1988;
t1149 = -t1638 * t1180 + t1640 * t1722;
t1148 = t1640 * t1180 + t1638 * t1722;
t1147 = t1648 * t1167 - t1645 * t1186 + t1988;
t1146 = t1648 * t1166 - t1645 * t1185 - t2034;
t1144 = -t1638 * t1178 + t1640 * t1667 + t2031;
t1143 = t1640 * t1178 + t1638 * t1667 - t2030;
t1141 = -t1638 * t1177 + t1640 * t1668 - t1996;
t1140 = t1640 * t1177 + t1638 * t1668 + t1997;
t1139 = t1648 * t1168 - t1645 * t1179 + (-t1210 * t1638 - t1212 * t1640) * pkin(7);
t1138 = -pkin(2) * t1202 + pkin(8) * t1190 + t1171 * t1647 + t1174 * t1644;
t1137 = t1648 * t1162 - t1645 * t1170 + (-t1211 * t1638 - t1213 * t1640) * pkin(7);
t1136 = -t1638 * t1164 + t1640 * t1670 - t1996;
t1135 = t1640 * t1164 + t1638 * t1670 + t1997;
t1134 = -t1638 * t1163 + t1640 * t1671 - t2031;
t1133 = t1640 * t1163 + t1638 * t1671 + t2030;
t1132 = -pkin(1) * t1210 - t1638 * t1165 + t1640 * t1669;
t1131 = pkin(1) * t1212 + t1640 * t1165 + t1638 * t1669;
t1129 = -pkin(1) * t1211 - t1638 * t1160 + t1640 * t1672;
t1128 = pkin(1) * t1213 + t1640 * t1160 + t1638 * t1672;
t1127 = -pkin(2) * t1188 + pkin(8) * t1181 + t1153 * t1647 + t1155 * t1644;
t1126 = t1648 * t1145 - t1645 * t1158 + (-t1156 * t1638 - t1157 * t1640) * pkin(7);
t1125 = -pkin(1) * t1156 - t1638 * t1138 + t1640 * t1673;
t1124 = pkin(1) * t1157 + t1640 * t1138 + t1638 * t1673;
t1123 = t1648 * t1130 - t1645 * t1142 + (-t1148 * t1638 - t1149 * t1640) * pkin(7);
t1122 = -pkin(1) * t1148 - t1638 * t1127 + t1640 * t1674;
t1121 = pkin(1) * t1149 + t1640 * t1127 + t1638 * t1674;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1874, -t1873, -t1851, -qJ(1) * t1851, 0, 0, -t1695, 0, t1512, t1637 * t1769, -qJ(1) * t1511 - t1376 * t1637 + t1447 * t1639, qJ(1) * t1696 - t1637 * t1375 + t1639 * t1448, -t1391 * t1637 + t1396 * t1639, t1639 * t1283 - t1637 * t1291 - qJ(1) * (t1364 * t1639 + t1397 * t1637), t1368, t1328, -t2002, t1367, t1993, t1461, -t1637 * t1225 + t1639 * t1251 + t2011, -t1637 * t1226 + t1639 * t1252 + t2018, -t1221 * t1637 + t1285 * t1639 - t1829, t1639 * t1175 - t1637 * t1173 - qJ(1) * (t1236 * t1639 + t1293 * t1637), t1461, t2002, -t1993, t1368, t1328, t1367, -t1199 * t1637 + t1259 * t1639 - t1829, -t1637 * t1194 + t1639 * t1209 - t2011, -t1637 * t1192 + t1639 * t1208 - t2018, t1639 * t1159 - t1637 * t1152 - qJ(1) * (t1204 * t1639 + t1263 * t1637), t1876, -t1216 * t1637 + t1266 * t1639, -t1250 * t1637 + t1297 * t1639, t1967, -t2027, t1968, -t1637 * t1141 + t1639 * t1150 - t1990, -t1637 * t1144 + t1639 * t1154 + t2033, t1639 * t1139 - t1637 * t1132 - qJ(1) * (t1212 * t1639 + t1264 * t1637), t1639 * t1126 - t1637 * t1125 - qJ(1) * (t1157 * t1639 + t1169 * t1637), t1876, -t1249 * t1637 + t1296 * t1639, -t1217 * t1637 + t1267 * t1639, t1968, t2027, t1967, -t1637 * t1136 + t1639 * t1147 - t1990, t1639 * t1137 - t1637 * t1129 - qJ(1) * (t1213 * t1639 + t1265 * t1637), -t1637 * t1134 + t1639 * t1146 - t2033, t1639 * t1123 - t1637 * t1122 - qJ(1) * (t1149 * t1639 + t1161 * t1637); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1873, -t1874, t1852, qJ(1) * t1852, 0, 0, t1696, 0, t1511, -t1639 * t1769, qJ(1) * t1512 + t1376 * t1639 + t1447 * t1637, qJ(1) * t1695 + t1639 * t1375 + t1637 * t1448, t1391 * t1639 + t1396 * t1637, t1637 * t1283 + t1639 * t1291 + qJ(1) * (-t1364 * t1637 + t1397 * t1639), t1366, t1327, t2001, t1365, -t1992, t1460, t1639 * t1225 + t1637 * t1251 + t2010, t1639 * t1226 + t1637 * t1252 + t2017, t1221 * t1639 + t1285 * t1637 + t1419, t1637 * t1175 + t1639 * t1173 + qJ(1) * (-t1236 * t1637 + t1293 * t1639), t1460, -t2001, t1992, t1366, t1327, t1365, t1199 * t1639 + t1259 * t1637 + t1419, t1639 * t1194 + t1637 * t1209 - t2010, t1639 * t1192 + t1637 * t1208 - t2017, t1637 * t1159 + t1639 * t1152 + qJ(1) * (-t1204 * t1637 + t1263 * t1639), t1877, t1216 * t1639 + t1266 * t1637, t1250 * t1639 + t1297 * t1637, t1964, t2026, t1965, t1639 * t1141 + t1637 * t1150 + t1991, t1639 * t1144 + t1637 * t1154 + t2032, t1637 * t1139 + t1639 * t1132 + qJ(1) * (-t1212 * t1637 + t1264 * t1639), t1637 * t1126 + t1639 * t1125 + qJ(1) * (-t1157 * t1637 + t1169 * t1639), t1877, t1249 * t1639 + t1296 * t1637, t1217 * t1639 + t1267 * t1637, t1965, -t2026, t1964, t1639 * t1136 + t1637 * t1147 + t1991, t1637 * t1137 + t1639 * t1129 + qJ(1) * (-t1213 * t1637 + t1265 * t1639), t1639 * t1134 + t1637 * t1146 - t2032, t1637 * t1123 + t1639 * t1122 + qJ(1) * (-t1149 * t1637 + t1161 * t1639); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1751, t1603, 0, 0, 0, 0, t1566, 0, t1567, t1627, t1374, t1373, t1390, t1292, t1429, t1394, t1422, t1428, -t1421, t1525, t1223, t1224, t1220, t1172, t1525, -t1422, t1421, t1429, t1394, t1428, t1198, t1193, t1191, t1151, t1847, t1214, t1246, t1944, t1244, t1943, t1140, t1143, t1131, t1124, t1847, t1245, t1215, t1943, -t1244, t1944, t1135, t1128, t1133, t1121; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1830, -t1751, 0, 0, 0, t1599, 0, -t1692, 0, t1447, t1448, t1396, t1283, t1507, t1472, t1503, t1506, -t1502, t1555, t1251, t1252, t1285, t1175, t1555, -t1503, t1502, t1507, t1472, t1506, t1259, t1209, t1208, t1159, t1850, t1266, t1297, t1905, t1295, t1906, t1150, t1154, t1139, t1126, t1850, t1296, t1267, t1906, -t1295, t1905, t1147, t1137, t1146, t1123; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1830, 0, -t1603, 0, 0, 0, t1568, 0, t1569, -t1769, t1376, t1375, t1391, t1291, t1431, t1395, t1426, t1430, -t1425, t1526, t1225, t1226, t1221, t1173, t1526, -t1426, t1425, t1431, t1395, t1430, t1199, t1194, t1192, t1152, t1846, t1216, t1250, t1942, t1248, t1941, t1141, t1144, t1132, t1125, t1846, t1249, t1217, t1941, -t1248, t1942, t1136, t1129, t1134, t1122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1751, t1603, 0, 0, 0, 0, t1566, 0, t1567, t1627, t1374, t1373, t1390, t1292, t1429, t1394, t1422, t1428, -t1421, t1525, t1223, t1224, t1220, t1172, t1525, -t1422, t1421, t1429, t1394, t1428, t1198, t1193, t1191, t1151, t1847, t1214, t1246, t1944, t1244, t1943, t1140, t1143, t1131, t1124, t1847, t1245, t1215, t1943, -t1244, t1944, t1135, t1128, t1133, t1121; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1649, 0, 0, -t1559, t1495, 0, t1554, t1520, t1547, t1553, -t1544, t1583, t1411, t1412, t1317, pkin(8) * t1317, t1583, -t1547, t1544, t1554, t1520, t1553, t1288, t1323, t1324, t1227, t1686, t1321, t1347, t1883, t1345, t1879, t1182, t1183, t1168, t1145, t1686, t1346, t1322, t1879, -t1345, t1883, t1167, t1162, t1166, t1130; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1649, 0, qJDD(2), 0, t1559, 0, t1496, 0, t1619, -t1602, -t1768, -t1619, -t1767, -qJDD(3), t1378, t1379, 0, pkin(2) * t1317, -qJDD(3), t1768, t1767, t1619, -t1602, -t1619, t1591, t1326, t1325, t1222, -t1455, -t1362, -t1912, -t1452, -t1441, t1475, t1205, t1207, t1179, t1158, -t1455, -t1912, -t1359, t1475, t1441, -t1452, t1186, t1170, t1185, t1142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1495, -t1496, 0, 0, t1534, t1519, t1539, t1533, t1535, 0, t1393, t1392, t1305, t1300, 0, -t1539, -t1535, t1534, t1519, t1533, t1282, t1310, t1311, t1206, t1730, t1319, t1343, t1882, -t1340, t1880, t1177, t1178, t1165, t1138, t1730, t1342, t1320, t1880, t1340, t1882, t1164, t1160, t1163, t1127; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1595, t1596, t1604, -t1625, t1614, t1625, 0, t1477, t1417, 0, t1625, -t1604, -t1614, t1595, t1596, -t1625, t1370, -qJ(4) * t1596, t1371, -qJ(4) * t1389, t1808, t1868, t1471, -t1808, -t1465, t1580, t1218, t1219, t1284, t1174, t1808, t1468, -t1868, t1580, t1465, -t1808, t1200, t1242, t1197, t1155; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1758, t1594, t1612, -t1684, t1605, -t1758, -t1477, 0, t1418, 0, -t1758, -t1612, -t1605, t1758, t1594, -t1684, t1369, t1372, pkin(3) * t1594, -pkin(3) * t1389, -t1454, -t1358, -t1913, -t1450, -t1437, t1872, t1241, t1253, t1184, t1171, -t1454, -t1913, -t1355, t1872, t1437, -t1450, t1196, t1176, t1195, t1153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1619, t1602, t1768, t1619, t1767, qJDD(3), -t1417, -t1418, 0, 0, qJDD(3), -t1768, -t1767, -t1619, t1602, t1619, -t1591, t1864, t1911, t1733, t1455, t1362, t1912, t1452, t1441, -t1475, t1856, t1855, t1859, t1860, t1455, t1912, t1359, -t1475, -t1441, t1452, t1848, t1858, t1857, t1849; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(3), -t1768, -t1767, -t1619, t1602, t1619, 0, t1380, t1377, 0, t1455, t1362, t1912, t1452, t1441, -t1475, t1788 - t1932, t1337 + t1983, -pkin(9) * t1356 - t1871, -pkin(9) * t1871, t1455, t1912, t1359, -t1475, -t1441, t1452, -t1825 * t1870 - t1790 - t1932, -pkin(9) * t1357 - t1745, -t1774 - t1983, -pkin(9) * t1187 - t1281 * t1825 + t1276; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1625, t1604, t1614, -t1595, -t1596, t1625, -t1380, 0, t1389, 0, -t1808, -t1868, -t1471, t1808, t1465, -t1580, t1736, t1737, -t1835, -t1837, -t1808, -t1468, t1868, -t1580, -t1465, t1808, t1653, t1735, t1659 - 0.2e1 * t1820, t1738; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1758, t1612, t1605, -t1758, -t1594, t1684, -t1377, -t1389, 0, 0, t1454, t1358, t1913, t1450, t1437, -t1872, -t1728 + t1931, -t1727 + t1982, pkin(9) * t1360 - t1675, pkin(9) * t1202 - t1836, t1454, t1913, t1355, -t1872, -t1437, t1450, t1854 + t1931, pkin(9) * t1361 - t1676, t1853 - t1982, pkin(9) * t1188 - t1875; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1509, -t1870, t1866, t1560, t1556, -t1560, 0, t1348, t1279, 0, t1509, t1866, t1870, -t1560, -t1556, t1560, -qJ(6) * t1870, t1234, t1261, -qJ(6) * t1281; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1562, t1651, -t1771, -t1508, t1867, -t1562, -t1348, 0, t1280, 0, t1562, -t1771, -t1869, -t1562, -t1867, -t1508, t1262, t1232, pkin(5) * t1869, -t1834; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1808, t1868, t1471, -t1808, -t1465, t1580, -t1279, -t1280, 0, 0, t1808, t1468, -t1868, t1580, t1465, -t1808, t1657, t1773, t1606 + t1679, t1775; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1509, t1866, t1870, -t1560, -t1556, t1560, 0, t1258, -t1281, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1808, t1468, -t1868, t1580, t1465, -t1808, -t1258, 0, t1255, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1562, t1771, t1869, t1562, t1867, t1508, t1281, -t1255, 0, 0;];
m_new_reg  = t1;

------------------
--- TABLESPACE ---
------------------

CREATE TABLESPACE T1
  DATAFILE 'pcbang_df1.dbf' SIZE 500M AUTOEXTEND ON NEXT 100M
  MAXSIZE 2G
  LOGGING
  DEFAULT STORAGE (
    INITIAL 100M
    NEXT 100M
    MINEXTENTS 1
    MAXEXTENTS UNLIMITED
    PCTINCREASE 0
  )
  ONLINE;

CREATE TABLESPACE T2
  DATAFILE 'pcbang_df2.dbf' SIZE 1G AUTOEXTEND ON NEXT 200M
  MAXSIZE 4G
  LOGGING
  DEFAULT STORAGE (
    INITIAL 200M
    NEXT 200M
    MINEXTENTS 1
    MAXEXTENTS UNLIMITED
    PCTINCREASE 0
  )
  ONLINE;

ALTER TABLE ChiNhanh MOVE TABLESPACE T1;
ALTER TABLE NhanVien MOVE TABLESPACE T1;
ALTER TABLE ViTriCV MOVE TABLESPACE T1;
ALTER TABLE Luong MOVE TABLESPACE T1;
ALTER TABLE BoPhan MOVE TABLESPACE T1;
ALTER TABLE HangTK MOVE TABLESPACE T1;
ALTER TABLE Zone MOVE TABLESPACE T1;
ALTER TABLE DVAnUong MOVE TABLESPACE T1;
ALTER TABLE PLDVAnUong MOVE TABLESPACE T1;
ALTER TABLE DVKhac MOVE TABLESPACE T1;
ALTER TABLE ThietBi MOVE TABLESPACE T1;

ALTER TABLE KhachHang MOVE TABLESPACE T2;
ALTER TABLE TTMay MOVE TABLESPACE T2;
ALTER TABLE HoaDon MOVE TABLESPACE T2;
ALTER TABLE CTHoaDonInternet MOVE TABLESPACE T2;
ALTER TABLE CTHoaDonAnUong MOVE TABLESPACE T2;
ALTER TABLE CTHoaDonDVKhac MOVE TABLESPACE T2;
ALTER TABLE BaoTri MOVE TABLESPACE T2;
ALTER TABLE SuKien MOVE TABLESPACE T2;
ALTER TABLE ThamGiaSuKien MOVE TABLESPACE T2;
ALTER TABLE DatCho MOVE TABLESPACE T2;
ALTER TABLE GDNapTien MOVE TABLESPACE T2;

SELECT table_name, tablespace_name
FROM all_tables
WHERE tablespace_name in ('T1', 'T2');
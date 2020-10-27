-- Sosnowski Piotr 7 
--12
SELECT MIN(placa) AS 'najniższe_wynagrodzenie' FROM pracownicy;
--13
SELECT COUNT(*) AS 'magazynierzy' FROM pracownicy WHERE stanowisko = 'magazynier';
--14
SELECT AVG(placa) AS 'średnia płaca kierownika' FROM `pracownicy` WHERE stanowisko = 'kierownik';
--15
SELECT MIN(placa) AS 'min płaca sprzedawcy' FROM `pracownicy` WHERE stanowisko = 'sprzedawca';
--16
SELECT AVG(placa) AS 'srednia', MAX(placa) AS 'max', MIN(placa) AS 'min' FROM `pracownicy` WHERE stanowisko = 'sprzedawca';
--17
SELECT SUM(placa) AS 'suma plac - sprzedawca' FROM pracownicy WHERE stanowisko = 'sprzedawca';
--18
SELECT imie, AVG(placa) AS 'średnia placa' FROM pracownicy GROUP BY imie;
--19
SELECT imie, nazwisko FROM `pracownicy` ORDER BY placa DESC LIMIT 1;
--20
SELECT stanowisko, SUM(placa) AS 'wydatki na place' FROM `pracownicy` GROUP BY stanowisko;
--21
SELECT stanowisko, COUNT(stanowisko) AS 'liczba pracownikow' FROM `pracownicy` GROUP by stanowisko ORDER BY COUNT(stanowisko) ASC;
--22
SELECT MIN(placa) AS 'min', MAX(placa) AS 'max', AVG(placa) 'srednia', stanowisko from `pracownicy` GROUP BY stanowisko;

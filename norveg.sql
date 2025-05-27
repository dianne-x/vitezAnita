-- SQL export: 2025-03-30 00:00:00
CREATE DATABASE IF NOT EXISTS norway_info CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE norway_info;

CREATE TABLE IF NOT EXISTS contents (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  body TEXT NOT NULL,
  img VARCHAR(255),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO contents (title, body, img) VALUES 
('Természeti környezet', 
'Természeti környezete gazdag és változatos, hatalmas energia forráskészlettel rendelkezik, és azokat intelligens módon aknázzák ki, ami virágzó nemzetté teszi ezt a népet. A törvények értelmében, minden lakó és látogató hozzáférhet minden természeti erőforráshoz, akár az erdőkben, akár a tengeren, ott sétálhatnak és úszhatnak, ahol csak akarnak.', 
'nature.png'),

('Társadalom és életmód', 
'A lakosság csaknem 100%-a rendelkezik nagysebességű internet kapcsolattal. 5-ből 4 embernek van hajója. Az erdőket nem irtják. Tisztaság mindenhol. Becsületkasszás zöldség- és gyümölcsstandok. A csalás elfogadhatatlan. Az emberek akár 10 évre előre tervezhetik az életüket. A visszaeső bűnözők aránya csak 20%.', 
'society.png'),

('Gazdaság és jólét', 
'Norvégia az egyik leggazdagabb ország. A jólétet nem rendítette meg sem az olajár csökkenése, sem a valuta gyengülése. A bérkülönbségek kicsik, a férfiak és nők foglalkoztatása magas. Az ország pozitívan viszonyult a pénzügyi válsághoz. A levegő és víz tiszta, ipari szabályozás kiváló.', 
'economy.jpg'),

('Olajalap és gazdasági stabilitás', 
'A norvég állam 1990-ben létrehozta az Állami Nyugdíjalapot, amit olajalapnak hívnak. Ez a világ legnagyobb szuverén alapja, értéke 2024 márciusában 14 294 milliárd norvég korona. Az alap célja a jövő generációk jólétének biztosítása. 65%-a részvényekbe van fektetve világszerte.', 
'oilfund.jpg'),

('Munkaerőpiac és fizetések', 
'A lakosság 3/4-e folyamatosan foglalkoztatott. A várható élettartam 82 év. 2024-ben az átlagkereset 59 370 NOK volt, ami kb. 4 947 eurónak felel meg. A külföldiek számára nehéz munkát találni, mivel a piac zárt és szabályozott.', 
'work.jpg'),

('Energia és ipar', 
'Norvégia élen jár az energiaexportban. Víz-, szél- és napenergiát hasznosítanak. Az Északi-tengeren 70 olajfúró platform működik. Az ipar minden ágazatát érinti. Az ország szigorú környezetvédelmi és ipari előírásokat alkalmaz.', 
'energy.jpg'),

('Történelem és értékrend', 
'Norvégiában erős hagyománya van az egyenlőségnek, amely a viking korig nyúlik vissza. A nyereséget igazságosan osztották meg. Ez a kultúra a mai gazdaságban is tükröződik.', 
'vikings.jpg');
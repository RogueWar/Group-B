create database EMS;
use EMS;

CREATE TABLE IF NOT EXISTS employees
(
	id int auto_increment primary key,
	e_last_name varchar(255) DEFAULT NULL,
    e_first_name varchar(255) DEFAULT NULL,
	e_middle_name varchar(255) DEFAULT NULL,
    e_age int(11) DEFAULT NULL,
	trainee varchar(255) NOT NULL,
    average int(11) NOT NULL,
    attendance int(11) NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS trainees
(
	id int auto_increment primary key,
	t_last_name varchar(255) DEFAULT NULL,
    t_first_name varchar(255) DEFAULT NULL,
    t_middle_name varchar(255) DEFAULT NULL,
	t_age int(11) DEFAULT NULL,
    strength_average int(11) DEFAULT NULL
     ) ;
	
CREATE TABLE IF NOT EXISTS strengths (
	strength_id int AUTO_INCREMENT primary key,
	computer_skills int(11) NOT NULL,
	technical_ability int(11) NOT NULL,
	communication_skills int(11) NOT NULL,
	critical_thinking int(11) NOT NULL,
	punctuality int(11) NOT NULL,
	creativity int(11) NOT NULL,
	determination int(11) NOT NULL,
	versatility int(11) NOT NULL,
	average int(11) NOT NULL
	) ;

CREATE TABLE IF NOT EXISTS attend(
    id int auto_increment primary key,
    present int(11) not null,
	absent int(11) not null
) ;


#VALUES PER TABLE

INSERT INTO employees(e_last_name, e_first_name, e_middle_name, e_age, trainee, average, attendance) 
VALUES
	('7KkTM', 'hGHYx', 'KygYz', 25, '', 0, 0),
    ('bGe5M', 'AaVMt', 'fmFNg', 14, '', 0, 0),
    ('xsKm5', 'FzQoq', 'u8f2f', 17, '', 0, 0),
    ('MEtLS', 'drxIU', 'InVZt', 8, '', 0, 0),
    ('OI7eH', 'BuAXC', '142kG', 77, '', 0, 0),
    ('PdMXF', 'qWds9', 'Gq43p', 96, '', 0, 0),
    ('R3QfV', 'T8s2h', 'R0krc', 70, '', 0, 0),
    ('dFqpV', 'OProD', '781bB', 78, '', 0, 0),
    ('AyXaa', 'SO5pG', 'UVWCT', 73, '', 0, 0),
    ('5GOBb', 's5PxC', 'vRtgm', 93, '', 0, 0),
    ('IJzsw', 'w9Vtb', 'KaRa3', 24, '', 0, 0),
    ('4SEMX', '9XbfF', '9iS0n', 43, '', 0, 0),
    ('ycong', 'fWDex', 'xU6pL', 25, '', 0, 0),
    ('j1Ha7', 'OebxT', '8YBnu', 34, '', 0, 0),
    ('Tkyw1', 'KyFdB', 'WLA6f', 29, '', 0, 0),
    ('IC2fD', 'loNw4', 'BT7vm', 38, '', 0, 0),
    ('LyaTg', 'tjPfr', 'IOCuY', 48, '', 0, 0),
    ('SrYtR', '9wDh3', '0Gi3s', 63, '', 0, 0),
    ('m2C3E', 'PugQa', 'W4rks', 4, '', 0, 0),
    ('eDeh3', 'o0p9x', 'K8vPW', 0, '', 0, 0),
    ('4Hl1f', 'wJCX9', 'bh6Ar', 84, '', 0, 0),
    ('FT7dV', '48dkT', 'kywI9', 50, '', 0, 0),
    ('Qi7hk', 'iXKVT', 'XY53m', 89, '', 0, 0),
    ('1wahe', 'YwT87', 'sxACE', 77, '', 0, 0),
    ('6iKgV', 'TJkAm', 'Z4uh5', 68, '', 0, 0),
    ('iwWI9', 'JS2fb', 'kDBl2', 35, '', 0, 0),
    ('oAcfm', 'sWyUM', 'rZVin', 65, '', 0, 0),
    ('ahgdh', 'TlslU', '25QFR', 56, '', 0, 0),
    ('rxPSN', '4IrRP', 'Lfvvn', 80, '', 0, 0),
    ('rMPa2', 'CyIw8', 'u04Jf', 34, '', 0, 0),
    ('apAg3', 'hacXa', 'Btzkg', 97, '', 0, 0),
    ('lIgu8', 'qjVSI', 'oMFqJ', 87, '', 0, 0),
    ('0pzfH', 'z3XdY', 'bd4fe', 64, '', 0, 0),
    ('ZLuzv', 'ebB1o', 'Dq7vI', 47, '', 0, 0),
    ('dAIZ1', 'nY5Dm', 'cEi4q', 52, '', 0, 0),
    ('87EdQ', 'iA4gS', 'soroG', 39, '', 0, 0),
    ('FcvmL', 'D6SM5', 'kJJ3l', 100, '', 0, 0),
    ('8JNKj', 'ykgmb', 'lXzN4', 93, '', 0, 0),
    ('S8Owu', 'CGTbg', 'ZrWwx', 93, '', 0, 0),
    ('CACKR', 'w4WtI', '28B6f', 45, '', 0, 0),
    ('ZdNvD', 'CPwU2', 'oc1nL', 14, '', 0, 0),
    ('cSB6w', 'ed2LU', 'BcfwH', 36, '', 0, 0),
    ('4rQyg', 'aL8v4', 'z81If', 32, '', 0, 0),
    ('Z8L9s', 'QcIhf', 'S4mAm', 84, '', 0, 0),
    ('I4NvI', 'OnJ42', 'vKxhO', 40, '', 0, 0),
    ('c0QIG', '1nWNK', 'HBfyp', 38, '', 0, 0),
    ('OrCv0', 'WRGhE', 'UV9Rk', 29, '', 0, 0),
    ('SnMay', 'EGNTE', 'TZsnP', 30, '', 0, 0),
    ('wQKl6', 'GOscl', 'cLrnP', 28, '', 0, 0),
    ('hMsYE', 'Z2Ik2', 'GFml6', 94, '', 0, 0),
    ('tx6tP', 'gU3WQ', 'wmpX2', 32, '', 0, 0),
    ('nCE6n', '3sZ9J', 'ZeTL1', 47, '', 0, 0),
    ('jzxHV', 'eL4kR', '8yewi', 90, '', 0, 0),
    ('QzvLW', '5ddkO', 'yPRta', 88, '', 0, 0),
    ('92ybT', 'CQcod', '3F0Fo', 51, '', 0, 0),
    ('z2i5I', '8i6SC', 'BZ2sp', 11, '', 0, 0),
    ('ll8ZC', 'i5byi', 'fISxu', 23, '', 0, 0),
    ('72v8C', 'mbdO6', 'AVmpE', 48, '', 0, 0),
    ('YHfkf', 'qLtHD', 'NOPnr', 59, '', 0, 0),
    ('sU0O1', '1WRRJ', 'fv7Wa', 28, '', 0, 0),
    ('grISC', 'k5ROB', 'h649c', 35, '', 0, 0),
    ('duQBt', 'W29m0', 'ZTVzn', 83, '', 0, 0),
    ('Hhr02', 'ufp0U', 'PK6H7', 95, '', 0, 0),
    ('Jvwo6', 'jaZaW', 'uLpAZ', 56, '', 0, 0),
    ('WpIbD', 'XTq1i', 'ecmQI', 82, '', 0, 0),
    ('JjXL4', 'bdmWU', '9tl26', 2, '', 0, 0),
    ('LQhKF', 'MR4hW', 'IAa5J', 46, '', 0, 0),
    ('97HDf', 'tlzdo', 'NN4yc', 9, '', 0, 0),
    ('oFJuo', 'DtTWC', 'h1uMY', 89, '', 0, 0),
    ('Oliz6', 'PKoH7', 'Z6oiw', 81, '', 0, 0),
    ('pNcuE', '8ud3f', 'D0AKy', 82, '', 0, 0),
    ('8AMAS', 'S1m4K', '6eUKy', 33, '', 0, 0),
    ('mPpYc', 'Zg6Rj', 'cyXDm', 71, '', 0, 0),
    ('2pzpl', 'VAQDL', 'YRH8x', 18, '', 0, 0),
    ('mAVH1', 'rL1LW', 'kqEDz', 43, '', 0, 0),
    ('Fuhs8', 'RgtFA', '4eZmU', 35, '', 0, 0),
    ('vB4FY', '2FkkR', 'CfoBC', 84, '', 0, 0),
    ('6Y81f', 'mBiyN', 'kMC2O', 60, '', 0, 0),
    ('Vxc6n', 'XjbYG', '2NYyq', 78, '', 0, 0),
    ('8TY2B', 'FqJSF', 'eFoe5', 46, '', 0, 0),
    ('0IHvO', '8CdSu', 'QjOUh', 56, '', 0, 0),
    ('5z4iQ', 'm8QGi', 'aP73s', 59, '', 0, 0),
    ('qCTlJ', 'o6Sun', '5kXLn', 40, '', 0, 0),
    ('qYTUJ', '7v94j', 'Gjav2', 64, '', 0, 0),
    ('44B46', 'zOzr2', 'ZSKWn', 95, '', 0, 0),
    ('ETuhH', 'Qyxzz', 'bIKtW', 99, '', 0, 0),
    ('iIITw', 'oY171', 'EgkdX', 7, '', 0, 0),
    ('EclcI', 'SF7VM', 'BUdQK', 11, '', 0, 0),
    ('TMNBv', '847XO', '67Imd', 60, '', 0, 0),
    ('MhTSK', 'UcyvT', 'fquFf', 78, '', 0, 0),
    ('LB6rz', 'S2BUF', 'R1t9f', 92, '', 0, 0),
    ('EMnsR', 'AAyij', 'aLGkF', 85, '', 0, 0),
    ('FeNJz', '9rf1d', '6plJw', 20, '', 0, 0),
    ('Rsvcd', '7xhII', '1Ydba', 25, '', 0, 0),
    ('FjyAa', '1yHX7', 'EDO6q', 81, '', 0, 0),
    ('3N6FI', 'FNT1g', 'tHJ1w', 72, '', 0, 0),
    ('tkmjr', 'KGv9g', 'rvhfJ', 99, '', 0, 0),
    ('3X5V5', '8AtBN', 'QBoii', 3, '', 0, 0),
    ('xbiuy', 'GUz38', 'AESdb', 61, '', 0, 0),
    ('4UEvV', 'Ibj5K', 'kXW2K', 78, '', 0, 0)
;

INSERT INTO trainees(t_last_name, t_first_name, t_middle_name, t_age, strength_average) 
VALUES
	('Vx61A', 'qQIB7', 'OTkmZ', 7, 0),
    ('wYsQ4', '5oQAo', 'nFWyJ', 27, 0),
    ('67mpG', 'R7wn6', 'xGiWW', 29, 0),
    ('KJszU', 'TY4OT', 'SXL8Q', 11, 0),
    ('ABJm7', '3QavT', 'aqWK4', 15, 0),
    ('fnoc2', 'OYtT6', 'jpdko', 32, 0),
    ('3GNbC', 'OqsBO', 'krpO2', 1, 0),
    ('B1ZJa', '7bEXd', 'ALb10', 47, 0),
    ('t7fkU', 'Z09Lf', 'LzFMS', 49, 0),
    ('h17MW', 'DYL7G', 'EgApr', 32, 0),
    ('lZu57', 'WgqPs', 'EPuoq', 25, 0),
    ('yXGIK', 'L0qFl', 'i9WgJ', 28, 0),
    ('d4R5H', 'cLxLz', 'o0gFZ', 72, 0),
    ('oF19k', 'gsiEs', '8RhX6', 58, 0),
    ('JiCu4', 'zjFoP', 'EBNm2', 27, 0),
    ('SWlKh', 'rl5BD', 'QMBXJ', 33, 0),
    ('6RNHR', 'Btfqt', 'QmC3l', 39, 0),
    ('rzYYr', 'n4Itj', 'BQkFE', 6, 0),
    ('JroOQ', 'BTYAm', 'Vqese', 100, 0),
    ('mCLJh', 'aaKzW', 'ScIh0', 59, 0),
    ('TlAoM', '9Re00', 'iNR5x', 87, 0),
    ('Nyogo', 'ppMBZ', 'vuFOr', 66, 0),
    ('RJ8Ru', '326ZM', 'LLnfp', 50, 0),
    ('b2CNn', 'WNvti', 'am3u2', 81, 0),
    ('p84Uh', 'yrAhl', '4gf86', 45, 0),
    ('UowQ0', 'GZgi0', 'r3bQw', 27, 0),
    ('nINr9', 'I1cAp', 'TPD0i', 63, 0),
    ('4chvL', 'fHtio', 'fpglw', 50, 0),
    ('JFEJP', 'U40Ez', '8BXUs', 14, 0),
    ('ulaym', 'sqHjD', '9nUJo', 10, 0),
    ('8zHWK', 'QNggH', 'wDMFd', 79, 0),
    ('naNrA', '7VKk1', 'OB57z', 32, 0),
    ('Vilbt', 'D8Gjt', '006Ty', 65, 0),
    ('wxNoN', 'KkHHC', '7qnTi', 29, 0),
    ('xIqxX', 'qn0Kl', 'vTmto', 89, 0),
    ('VqdXc', '0Dlrr', 'YWivw', 37, 0),
    ('HF35u', 'Gt9PX', 'b7ZXX', 30, 0),
    ('2o1Cg', 'XZwJu', '5Sl4Y', 10, 0),
    ('X2JdQ', 'cvc5d', 'j4oY9', 8, 0),
    ('gNYJI', 'TPFpP', 'AdNBR', 64, 0),
    ('h1iLv', 'e67Ma', '7iueS', 61, 0),
    ('uUiy3', 'SgNMB', 'LuqjG', 1, 0),
    ('9cZaV', 'PDpSk', 'sPk34', 68, 0),
    ('xPjOO', 'BELVo', '9ToDo', 54, 0),
    ('Potam', 'S2pzM', 'E4z03', 65, 0),
    ('QEruy', 'W6tB1', 'M07T3', 46, 0),
    ('xb1lp', 'hdIVc', '6qcjd', 1, 0),
    ('fkUaT', 'UI3O6', 'VNi1c', 9, 0),
    ('M95xp', 'VIGMB', 'OT5XK', 49, 0),
    ('OhHEo', '8mZTx', 'b8Jn3', 41, 0),
    ('4DS5Z', 'W7A7l', 'JE60d', 95, 0),
    ('iWXjF', 'KoQDf', '9YAQr', 3, 0),
    ('D5Mf9', 'M5mge', 'mAxjh', 39, 0),
    ('ubjVu', 'uxq5W', 'V0sNs', 18, 0),
    ('CDxfa', 'IA2mt', 'LSB8n', 42, 0),
    ('e0C4h', 'FlC46', 'CtgGr', 24, 0),
    ('m4tEu', 'oBaZz', 'hmHe5', 75, 0),
    ('x29uf', 'GQxAj', 'PxUyB', 51, 0),
    ('0B6vY', 'sJkkY', 'qU5BM', 9, 0),
    ('gMeOj', 'C7wTw', 'FNDqy', 73, 0),
    ('UmG46', 'kIxPg', '3qraf', 94, 0),
    ('QhKwT', 'k95o1', 'yQTFb', 62, 0),
    ('4HUPt', 'lrdcs', '4VYtx', 1, 0),
    ('hBQV6', 'HjjWP', 'ICTg5', 73, 0),
    ('SLHih', 'Sgh3Z', '2gKtY', 84, 0),
    ('TnZYJ', 'EH0om', 'Ct3YF', 1, 0),
    ('Pm2I2', 'cuugF', 'wRW6t', 97, 0),
    ('NmDtq', '94EW2', '9HEpe', 55, 0),
    ('fJ9OW', '6BgTQ', 'Wx5MD', 84, 0),
    ('8YKte', '4N8wo', 'XHAfU', 14, 0),
    ('WAX08', 'crnVT', 'i5GNA', 21, 0),
    ('bSATQ', 'wFhCH', 'ZeOas', 78, 0),
    ('qkugx', 'PIs9y', '6AwJh', 7, 0),
    ('b8kbt', 'SmZMI', 'ZqThS', 42, 0),
    ('3PtT7', 'RdHNi', '90XPW', 42, 0),
    ('gSOl5', 'Z3xdo', '3chzG', 39, 0),
    ('ztbsL', 'qXChZ', '9g3oy', 77, 0),
    ('btRdT', 'v5LAm', 'QVxgz', 45, 0),
    ('rCbBX', 'q2rum', '4eNvM', 77, 0),
    ('lk9FU', 'LgvSu', 'JktGR', 44, 0),
    ('Uh1c2', 'XubIc', 'z985D', 89, 0),
    ('faD0V', 'eK7vY', 'vzsNu', 65, 0),
    ('gCNlz', 'sW3nK', 'nYIwq', 29, 0),
    ('Rp5i8', 'NzNS1', 'ikAyO', 83, 0),
    ('cyT7a', 'fE9yW', 'vIOmB', 23, 0),
    ('t2uUv', 'PVabo', 'Ifxm6', 76, 0),
    ('g8as6', 'M02WK', 'cyInT', 87, 0),
    ('rj0ba', 'TUfyu', 'cvypv', 19, 0),
    ('tOdPa', 'orSNe', 'IAzEK', 43, 0),
    ('ULPbA', 'mWb6J', 'Kzayf', 49, 0),
    ('bXQRG', 'QvrIe', 'NYDx8', 100, 0),
    ('0ImQj', 'JfbFI', 'VDDJa', 92, 0),
    ('1FNAt', '5UshP', 'TDEiU', 2, 0),
    ('IpuMr', 'owQJQ', 'bJjUB', 20, 0),
    ('FZ4By', 'Inism', 'mFGCh', 35, 0),
    ('vCvxu', 'tEbvn', 'Vg7LZ', 21, 0),
    ('OoJzr', 'lpl8k', 'jeawB', 69, 0),
    ('2oO0Z', 'oFy1K', 'deCvm', 36, 0),
    ('USHMD', 'bF15j', 'iKasH', 1, 0),
    ('dOFjT', 'mcdi7', 'pRJTJ', 91, 0)
;

	
INSERT INTO strengths(computer_skills, technical_ability, 
communication_skills, critical_thinking, punctuality, creativity, 
determination, versatility, average)
VALUES
    (62, 62, 25, 61, 22, 61, 33, 99, 0),
    (48, 23, 88, 95, 76, 70, 47, 87, 0),
    (34, 83, 15, 75, 89, 31, 40, 6, 0),
    (36, 99, 71, 33, 74, 79, 82, 45, 0),
    (9, 70, 66, 30, 95, 90, 87, 13, 0),
    (15, 84, 47, 47, 14, 42, 32, 37, 0),
    (56, 15, 4, 38, 78, 54, 16, 47, 0),
    (99, 51, 83, 64, 39, 76, 75, 29, 0),
    (0, 97, 18, 100, 57, 21, 74, 13, 0),
    (34, 50, 26, 8, 30, 5, 98, 1, 0),
    (67, 67, 54, 55, 17, 28, 34, 84, 0),
    (36, 85, 2, 19, 88, 79, 55, 23, 0),
    (8, 31, 2, 95, 40, 41, 32, 40, 0),
    (38, 6, 13, 3, 56, 28, 8, 84, 0),
    (73, 85, 55, 29, 72, 8, 100, 26, 0),
    (85, 63, 6, 43, 29, 34, 2, 66, 0),
    (35, 46, 66, 54, 76, 56, 65, 84, 0),
    (0, 74, 13, 82, 45, 78, 28, 5, 0),
    (24, 32, 85, 94, 82, 83, 72, 3, 0),
    (15, 97, 83, 96, 68, 0, 75, 92, 0),
    (42, 85, 56, 64, 8, 76, 87, 7, 0),
    (16, 3, 79, 48, 15, 79, 52, 92, 0),
    (20, 20, 5, 99, 91, 83, 80, 11, 0),
    (69, 31, 35, 72, 69, 71, 36, 53, 0),
    (100, 36, 67, 18, 69, 72, 18, 58, 0),
    (54, 79, 35, 76, 48, 89, 68, 6, 0),
    (25, 98, 20, 43, 92, 87, 28, 33, 0),
    (20, 59, 46, 10, 23, 8, 5, 15, 0),
    (51, 6, 91, 2, 52, 63, 81, 100, 0),
    (15, 89, 63, 36, 35, 9, 83, 49, 0),
    (7, 15, 18, 93, 97, 18, 83, 57, 0),
    (21, 43, 40, 29, 45, 50, 17, 45, 0),
    (4, 98, 6, 98, 78, 96, 29, 45, 0),
    (21, 89, 76, 75, 56, 85, 21, 11, 0),
    (35, 80, 34, 38, 73, 67, 85, 31, 0),
    (52, 47, 11, 26, 31, 27, 39, 3, 0),
    (13, 1, 57, 95, 26, 59, 15, 43, 0),
    (20, 69, 94, 28, 36, 50, 86, 73, 0),
    (7, 29, 49, 85, 68, 52, 4, 88, 0),
    (78, 18, 17, 40, 43, 94, 21, 12, 0),
    (37, 32, 64, 34, 78, 18, 60, 38, 0),
    (42, 27, 50, 98, 8, 96, 23, 93, 0),
    (76, 16, 71, 79, 86, 30, 67, 33, 0),
    (76, 83, 82, 41, 86, 98, 10, 23, 0),
    (64, 60, 88, 99, 94, 89, 22, 35, 0),
    (60, 82, 75, 48, 59, 83, 55, 79, 0),
    (83, 95, 29, 90, 62, 74, 53, 62, 0),
    (55, 30, 37, 62, 45, 25, 84, 44, 0),
    (2, 10, 93, 17, 91, 46, 65, 9, 0),
    (36, 56, 64, 90, 59, 85, 58, 87, 0),
    (1, 89, 13, 39, 89, 57, 17, 72, 0),
    (42, 60, 60, 73, 35, 44, 94, 5, 0),
    (31, 95, 98, 36, 29, 42, 76, 73, 0),
    (71, 13, 36, 16, 11, 67, 88, 95, 0),
    (49, 41, 22, 77, 58, 48, 4, 30, 0),
    (89, 50, 65, 62, 42, 68, 0, 4, 0),
    (12, 96, 30, 18, 95, 91, 14, 75, 0),
    (5, 23, 0, 42, 61, 47, 15, 23, 0),
    (95, 17, 7, 54, 71, 62, 18, 39, 0),
    (81, 90, 77, 46, 14, 81, 62, 38, 0),
    (72, 99, 7, 51, 3, 8, 6, 98, 0),
    (0, 0, 46, 97, 90, 77, 14, 97, 0),
    (35, 89, 100, 33, 13, 68, 58, 72, 0),
    (3, 17, 38, 49, 66, 63, 52, 75, 0),
    (58, 45, 6, 12, 68, 34, 82, 99, 0),
    (51, 67, 98, 60, 45, 28, 26, 58, 0),
    (97, 67, 31, 43, 59, 63, 6, 15, 0),
    (14, 32, 40, 12, 78, 36, 78, 82, 0),
    (61, 37, 85, 66, 100, 60, 93, 61, 0),
    (77, 12, 100, 44, 16, 32, 5, 38, 0),
    (64, 38, 35, 7, 81, 97, 21, 42, 0),
    (49, 47, 37, 77, 25, 24, 2, 77, 0),
    (83, 7, 14, 23, 44, 12, 45, 74, 0),
    (7, 34, 0, 62, 42, 85, 94, 72, 0),
    (16, 10, 32, 43, 59, 12, 17, 79, 0),
    (73, 24, 12, 70, 53, 26, 9, 35, 0),
    (61, 11, 7, 29, 49, 47, 84, 24, 0),
    (38, 99, 59, 66, 14, 88, 14, 87, 0),
    (0, 87, 47, 43, 48, 53, 66, 11, 0),
    (99, 29, 70, 43, 69, 8, 62, 63, 0),
    (6, 38, 44, 76, 34, 46, 62, 71, 0),
    (95, 20, 77, 9, 70, 93, 62, 20, 0),
    (58, 95, 24, 59, 30, 84, 98, 4, 0),
    (90, 75, 78, 1, 63, 16, 92, 19, 0),
    (22, 27, 4, 38, 60, 42, 13, 51, 0),
    (35, 59, 88, 53, 0, 11, 48, 68, 0),
    (45, 52, 49, 92, 57, 85, 7, 18, 0),
    (12, 50, 19, 11, 94, 0, 58, 37, 0),
    (46, 60, 8, 85, 78, 86, 24, 10, 0),
    (96, 8, 9, 23, 22, 32, 26, 0, 0),
    (52, 92, 3, 6, 93, 64, 87, 60, 0),
    (19, 24, 73, 46, 77, 20, 90, 59, 0),
    (36, 88, 58, 64, 15, 51, 25, 5, 0),
    (50, 14, 27, 31, 66, 49, 4, 73, 0),
    (54, 18, 21, 27, 46, 86, 76, 42, 0),
    (58, 43, 99, 3, 42, 32, 3, 75, 0),
    (9, 64, 30, 58, 69, 95, 56, 65, 0),
    (60, 77, 79, 68, 82, 25, 29, 78, 0),
    (69, 6, 66, 92, 21, 4, 12, 50, 0),
    (45, 63, 97, 33, 21, 26, 79, 25, 0)
;

insert into attend(present, absent)
Values
	(38, 85),
    (18, 19),
    (95, 26),
    (20, 31),
    (24, 92),
    (58, 10),
    (89, 52),
    (84, 63),
    (12, 86),
    (28, 32),
    (82, 55),
    (25, 24),
    (40, 33),
    (45, 43),
    (26, 17),
    (83, 20),
    (58, 27),
    (47, 14),
    (8, 24),
    (65, 53),
    (71, 22),
    (23, 17),
    (95, 11),
    (69, 85),
    (64, 71),
    (54, 57),
    (87, 26),
    (80, 19),
    (15, 24),
    (43, 35),
    (34, 19),
    (75, 97),
    (25, 10),
    (43, 23),
    (62, 21),
    (30, 68),
    (35, 75),
    (33, 17),
    (64, 89),
    (81, 67),
    (4, 61),
    (39, 46),
    (22, 75),
    (62, 36),
    (40, 86),
    (85, 21),
    (8, 10),
    (15, 33),
    (3, 15),
    (92, 2),
    (71, 38),
    (38, 83),
    (59, 84),
    (100, 98),
    (71, 87),
    (53, 57),
    (40, 83),
    (19, 33),
    (9, 19),
    (48, 28),
    (97, 78),
    (91, 70),
    (32, 12),
    (13, 10),
    (82, 13),
    (1, 81),
    (55, 2),
    (79, 46),
    (84, 54),
    (97, 42),
    (41, 14),
    (65, 11),
    (91, 40),
    (86, 19),
    (14, 59),
    (76, 39),
    (85, 48),
    (23, 60),
    (58, 44),
    (67, 32),
    (58, 31),
    (100, 16),
    (38, 2),
    (93, 23),
    (80, 29),
    (38, 62),
    (37, 35),
    (82, 48),
    (93, 31),
    (34, 90),
    (72, 64),
    (95, 10),
    (2, 96),
    (56, 55),
    (9, 84),
    (94, 85),
    (18, 82),
    (35, 80),
    (45, 67),
    (92, 11)
;

#TOTAL AVG strengths PER ROW , RESULTS (PASSED_FAILED)
SELECT strength_id, sum(computer_skills + technical_ability + communication_skills + critical_thinking + punctuality + creativity + determination + versatility)/8 as total,
if(sum(computer_skills + technical_ability + communication_skills + critical_thinking + punctuality + creativity + determination + versatility)/8 > 50, 'Passed','Failed') as remarks from strengths group by strength_id;
#-------------------------------------------------------

#1. GET THE AVERAGE SCORE OF THE TRAINEES IN EACH OF THE STRENGTH
update trainees set strength_average=
(select sum(computer_skills + technical_ability + communication_skills + critical_thinking + punctuality + creativity + determination + versatility)/8 from strengths where trainees.id = strengths.strength_id);
#CTRL + ENTER to run
select t_last_name, strength_average from trainees;
#---------------------------------------------------------

#2. GET THE AVERAGE SCORE OF THE TRAINEES TRAINED BY EACH EMPLOYEE 
update employees set trainee=
(select t_last_name from trainees where employees.id = trainees.id);

update employees set average=
(select strength_average from trainees where employees.id = trainees.id);
#CTRL + ENTER to run
select * from employees;
#----------------------------------------------------------

#3. GET THE TRAINEES WHOSE STRENGTH IS GREATER THAN AVERAGE FOR THAT STRENGTH. THE TARGET STRENGTH IS DEFINED BY PARAM
DELIMITER $$
CREATE PROCEDURE GetTrainee(IN input INT, OUT OUTPUT VARCHAR(255))
BEGIN
	select t_last_name, t_first_name, t_middle_name, strength_average from trainees where strength_average > input;
END$$
DELIMITER ;
#CTRL + ENTER to run
call gettrainee (50, @ems);
#----------------------------------------------------------

#4. GET THE EMPLOYEE AND THE TOTAL NUMBER OF ABSENCES OF THEIR TRAINEES
update employees set attendance=
(select absent from attend where employees.id = attend.id);
#CTRL + ENTER to run
select * from employees;
#----------------------------------------------------------
#5. GET THE EMPLOYEE WHOSE ALL TRAINEES ACHIEVE AVERAGE STRENGTH GREATER THAN PARAM
update employees set average=
(select strength_average from trainees where employees.id = trainees.id);
#CTRL + ENTER to run
select * from employees;

DELIMITER $$
CREATE PROCEDURE getemployee(IN input INT, OUT OUTPUT VARCHAR(255))
BEGIN
	select e_last_name, e_first_name, e_middle_name, trainee, average from employees where average > input;
END$$
DELIMITER ;
#CTRL + ENTER to run
call getemployee (50, @employee);
#-----------------------------------------------------------
#Delete Employees age greater than 50
Delete from employees
where e_age > 50; 
#CTRL + ENTER to run
select * from employees;
#-----------------------------------------------------------
#Delete trainees age greater than 30
Delete from trainees
where t_age > 30; 
#CTRL + ENTER to run
select * from trainees;
#-----------------------------------------------------------
#Drop Database
drop database EMS;
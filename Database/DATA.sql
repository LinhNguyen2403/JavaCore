-- =============================================
-- INSERT DATA 
-- =============================================
INSERT INTO  project 	 (`name`, 					manager_id,			created_date	)
VALUES			
						('TP thong minh',								2	,			'2020-10-01'	),
						('Game doan so',								4	,			'2020-05-01'	),
						('Giao dien ATM',								8	,			'2020-07-01'	),
						('He thong quan ly may chu',					12	,			'2021-10-01'	),
						('He thong dat ve may bay',						15	,			'2022-10-01'	);

INSERT INTO department  (`name`,									created_date) 
VALUES
						('Marketing'					,			'2018-10-01'	),
						('Sale'							,			'2018-10-01'	),
						('Sercurity'					,			'2018-10-01'	),
						('Technical'					,			'2018-10-01'	),
						('Accounting '					,			'2018-10-01'	),
						('Director'						,			'2018-10-01'	),
						('Audit'						,			'2018-10-01'	),
						('Purchasing'					,			'2018-10-01'	),
						('Training'						,			'2018-10-01'	),
						('Administration'				,			'2018-10-01'	),
						('HR'							,			'2018-10-01'	),
						('Customer Service'				,			'2018-10-01'	),
						('Vice director'				,			'2018-10-01'	),
						('IT'							,			'2018-10-01'	),
						('IT help desk'					,			'2018-10-01'	),
						('International Payment'		,			'2018-10-01'	),
						('Financial'					,			'2018-10-01'	),
						('International Relations'		,			'2018-10-01'	),
						('Local Payment'				,			'2018-10-01'	),
						('Pulic Relations'				,			'2018-10-01'	);

                       
INSERT INTO  `user`  (fullname,						phone,				email,							username, 				`password`,		department_id,		`role`,		project_id,		created_date	)
VALUES			
						(N'Nguyễn Ngọc Duy',		'+84 12345678',		'duynn03@gmail.com',			'duynn03',				'123456',		6,				'Employee'		,		1,			'2019-10-01'	),
						(N'Trần Phú Dao',			'+84 12345677',		'dat.tranphu@gmail.com',		'dat.tranphu',			'123456',		3,				'Manager'	,		1,			'2020-11-02'	),
						(N'Dinh Thị Đào',			'+84 12345676',		'du.lengoc@gmail.com',			'du.lengoc',			'123456',		5,				'Employee'	,		1,			'2018-07-09'	),
						(N'Nguyễn Thế Đức',			'+84 12345675',		'duc.nguyenthe@gmail.com',		'duc.nguyenthe',		'123456',		15,				'Manager'	,		2,			'2017-05-09'	),
						(N'Vũ Hoàng Hiệp',			'+84 12345674',		'hiep.vuhoang@gmail.com',		'hiep.vuhoang',			'123456',		3,				'Employee'	,		2,			'2016-04-09'	),
						(N'Nguyễn Thị Mỹ Nhung',	'+84 12345673',		 'nhung.nguyenthi@gmail.com',	'nhung.nguyenthi',		'123456',		2,				'Employee'	,		2,			'2015-11-09'	),
						(N'Tống Thị Nhung',			'+84 12345672',		'nhung.tongthi@gmail.com',		'nhung.tongthi',		'123456',		11,				'Employee'	,		2,			NOW()			),
						(N'Mai Chiến Thắng',		'+84 12345671',		'thang.maichien@gmail.com',		'thang.maichien',		'123456',		3,				'Manager'	,		3,			NOW()			),
                       	(N'Đinh Thu Thảo',			'+84 12345670',		'thao.dinhthu@gmail.com',		'thao.dinhthu',			'123456',		1,				'Employee'		,		2,			'2020-11-11'	),
						(N'Nguyễn Thị Linh',		'+84 12345689',		'linh.nguyenthi@gmail.com',		'linh.nguyenthi',		'123456',		15,				'Employee'		,		4,			NOW()			),
						(N'Văn Thị Linh',			'+84 12345688',		'linh.vanthi@gmail.com',		'linh.vanthi',			'123456',		3,				'Employee'	,		4,			'2023-01-22'	),
						(N'Trần Văn Đạt',			'+84 12345687',		'dat.tranvan@gmail.com',		'dat.tranvan',			'123456',		2,				'Manager'	,		5,			NOW()			),
						(N'Nguyễn Xuân Tùng',		'+84 12345686',		'tung.nguyenxuan@gmail.com',	'tung.nguyenxuan',		'123456',		16,				'Employee'	,		4,			NOW()			),
						(N'Nguyễn Tùng Lâm',		'+84 12345685',		'lam.nguyentung@gmail.com',		'lam.nguyentung',		'123456',		7,				'Employee'	,		4,			'2015-05-21'	),
						(N'Trịnh Thị Thu Hiền', 	'+84 12345684',		'hien.trinhthithu@gmail.com',	'hien.trinhthithu',		'123456',		7,				'Manager'	,		4,			'2023-02-17'	),
						(N'Phạm Tuấn Đạt',			'+84 12345683',		'dat.phamtuan@gmail.com',		'dat.phamtuan',			'123456',		1,				'Employee'	,		4,			'2022-07-07'	),
						(N'Nguyễn Văn Hưởng',		'+84 12345682',		'huong.nguyenvan@gmail.com',	'huong.nguyenvan',		'123456',		13,				'Employee'	,		4,			NOW()			),
                        (N'Nguyễn Thị Mỵ',			'+84 12345681',		'my.nguyenthi@gmail.com',		'my.nguyenthi',			'123456',		1,				'Employee'	,		5,			'2021-04-12'	),
						(N'Nguyễn Thế Hưng',		'+84 12345680',		'hung.nguyenthe@gmail.com',		'hung.nguyenthe',		'123456',		10,				'Employee'	,		5,			'2022-06-25'	),
                       	(N'Lê Thị Na',				'+84 12345668',		'le.thina@gmail.com',			'le.thina',				'123456',		11,				'Employee'	,			5,			'2023-02-17'	),
                       	(N'Lê Văn Nam',				'+84 12345669',		'le.vanna@gmail.com',			'le.vanna',				'123456',		11,				'Employee'	,		5,			'2023-02-17'	);
INSERT INTO  employee  (user_id,						proskill	)
VALUES		   
						(3,  							'sql'		),
						(5,  							'sql'		),
						(6,  							'java'		),
						(7,  							'html'		),
						(11,  							'html'		),
						(13,  							'css'		),
						(14,  							'css'		),
						(16,  							'css'		),
						(17,  							'sql'		),
						(18,  							'css'		),
						(19,  							'java'		),
						(21,  							'java'		);
INSERT INTO  manager  (user_id,						exp_in_year	)
VALUES		   
						(2,  							4		),
						(4,  							3		),
						(8,  							2		),
						(12,  							4		),
						(15,  							5		);
    ALTER TABLE project
    ADD FOREIGN KEY (manager_id) REFERENCES `user`(id);
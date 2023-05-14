
-- -- -- Setup trigger sao cho
-- -- -- a. Khi insert / update / delete User trong project thì sẽ tự động update size của project
-- -- -- b. Khi insert / update / delete User trong department thì sẽ tự động update size của department

DROP TRIGGER IF EXISTS sync_insert_user;
DELIMITER $$
CREATE TRIGGER sync_insert_user
AFTER INSERT ON `user`
FOR EACH ROW
BEGIN
	 DECLARE old_member_size_project INT;
     DECLARE old_member_size_department INT;
     -- Tang SL member trong project sau insert
     SELECT member_size INTO old_member_size_project
     FROM	project
     WHERE	id = NEW.project_id;
     
     UPDATE	project
     SET	member_size = old_member_size_project + 1
     WHERE	id = NEW.project_id;
     -- Tang SL member trong department sau insert
     SELECT member_size INTO old_member_size_department
     FROM	department
     WHERE	id = NEW.department_id;
     
     UPDATE	department
     SET	member_size = old_member_size_department + 1
     WHERE	id = NEW.department_id;
     
END$$	
DELIMITER ;

DROP TRIGGER IF EXISTS sync_delete_user;
DELIMITER $$
CREATE TRIGGER sync_delete_user
AFTER DELETE ON `user`
FOR EACH ROW
BEGIN
     DECLARE old_member_size_project INT;
     DECLARE old_member_size_department INT;
     -- Giam SL member trong project sau insert
     SELECT member_size INTO old_member_size_project
     FROM	project
     WHERE	id = OLD.project_id;
     
     UPDATE	project
     SET	member_size = old_member_size_project - 1
     WHERE	id = OLD.project_id;
     -- Giam  SL member trong department sau insert
     SELECT member_size INTO old_member_size_department
     FROM	department
     WHERE	id = OLD.department_id;
     
     UPDATE	department
     SET	member_size = old_member_size_department - 1
     WHERE	id = OLD.department_id;
END$$	
DELIMITER ;

-- auto update user in department
DROP TRIGGER IF EXISTS sync_updateSize_user;
DELIMITER $$
CREATE TRIGGER sync_updateSize_user
AFTER UPDATE ON `user`
FOR EACH ROW
BEGIN
	DECLARE old_member_size_project INT;
	DECLARE old_member_size_department INT;
            -- project
            -- tang so luong project mơi
			SELECT member_size INTO old_member_size_project
			FROM project
			WHERE id = NEW.project_id;
    
			UPDATE project
			SET member_size = (old_member_size_project + 1)
			WHERE id = NEW.project_id;
			
              -- giam so luong cua project cu
			SELECT member_size INTO old_member_size_project
			FROM project
			WHERE id = OLD.project_id;
    
			UPDATE project
			SET member_size = (old_member_size_project - 1)
			WHERE id = OLD.project_id;
            
		-- department
			-- tang so luong
			SELECT member_size INTO old_member_size_department
			FROM department
			WHERE id = NEW.department_id;
    
			UPDATE department
			SET member_size = (old_member_size_department + 1)
			WHERE id = NEW.department_id;
			
              -- giam so luong cua project cu
			SELECT member_size INTO old_member_size_department
			FROM department
			WHERE id = OLD.department_id;
    
			UPDATE department
			SET member_size = (old_member_size_department - 1)
			WHERE id = OLD.department_id;
    

END$$	
DELIMITER ;
-- INSERT INTO  `user`  (fullname,						phone,				email,							username, 				`password`,		department_id,		`role`,		project_id,		created_date	)
-- VALUES			
-- 						(N'Nguyễn Ngọc Hoi',		'+84 12345610',		'hoinn03@gmail.com',			'hoinn03',				'123456',		6,				'Admin'		,		1,			'2019-10-01'	);


-- UPDATE `user`
-- SET project_id = 2, department_id = 2
-- WHERE id = 22; 

-- DELETE FROM `user` WHERE id = 22;
-- SELECT * 
-- FROM `user` u
-- LEFT JOIN department d ON d.id = u.department_id
-- LEFT JOIN project p ON p.id = u.project_id;



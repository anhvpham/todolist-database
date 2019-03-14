CREATE TABLE todoItems( 
todoID INT PRIMARY KEY AUTO_INCREMENT, 
todoItem VARCHAR(255) UNIQUE NOT NULL, 
dateCreated DATETIME NOT NULL DEFAULT NOW(), 
todoStatus TEXT NOT NULL,
projectID INT NOT NULL,

INDEX (todoItem)

CONSTRAINT fk_projectID FOREIGN KEY (projectID)
    REFERENCES projects (projectID)
    ON DELETE CASCADE
    ON UPDATE CASCADE

);   

-- CREATE INDEX todoItem
-- ON todoItems (todoItem);
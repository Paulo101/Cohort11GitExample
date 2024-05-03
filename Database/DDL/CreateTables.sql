Create Table AppUser(
userId int Identity(1,1),
userName text not null,
primary key(userId)
);

Create Table Task(
taskId int identity(1,1),
TaskName text not null,
DueDate date,
IsComplete bit,
userId int,
primary key(TaskId),
Foreign Key(userId) references AppUser
);
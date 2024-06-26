-- Create the table with primary key
CREATE TABLE public.student (
                                id int GENERATED ALWAYS AS IDENTITY NOT NULL,
                                "name" varchar NOT NULL,
                                dob date NULL,
                                postal_code int NULL,
                                address varchar NULL,
                                grade varchar NULL,
                                gender varchar NULL,
                                utc_created_at timestamp DEFAULT timezone('UTC'::text, CURRENT_TIMESTAMP) NULL,
                                CONSTRAINT student_pkey PRIMARY KEY (id)
);

-- Set the replica identity for debezium
ALTER TABLE public.student REPLICA IDENTITY FULL;

CREATE TABLE public.teacher (
                                id int GENERATED ALWAYS AS IDENTITY NOT NULL,
                                name varchar NOT NULL,
                                subject varchar NOT NULL,
                                CONSTRAINT teacher_pkey PRIMARY KEY (id)
);

ALTER TABLE public.teacher REPLICA IDENTITY FULL;

-- Student
INSERT INTO public.student ("name") values ('Ali');

UPDATE public.student SET "name"='Ali' WHERE id=1;

UPDATE public.student SET "name"='Alibaba' WHERE id=1;

INSERT INTO public.student ("name") values ('Muthu');

UPDATE public.student SET "name"='Muthu' WHERE id=2;

UPDATE public.student SET "name"='MuthuCurry' WHERE id=2;

INSERT INTO public.student ("name") values ('Ah Kao');

UPDATE public.student SET "name"='Ah Niao' WHERE id=3;

UPDATE public.student SET "name"='Ah Lian' WHERE id=3;

UPDATE public.student SET "name"='Ah Xiao' WHERE id=3;

-- Teacher
INSERT INTO public.teacher ("name", "subject") values ('Mr Chan', 'Math');

INSERT INTO public.teacher ("name", "subject") values ('Mr Lim', 'Science');

UPDATE public.teacher SET "name"='Mr Koh' WHERE id=1;

UPDATE public.teacher SET "name"='Mr Ahmad' WHERE id=2;

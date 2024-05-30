-- Create the table with primary key
CREATE TABLE public.student (
                                id int GENERATED ALWAYS AS IDENTITY NOT NULL,
                                name varchar NOT NULL,
                                CONSTRAINT student_pkey PRIMARY KEY (id)
);

-- Set the replica identity to use the primary key
ALTER TABLE public.student REPLICA IDENTITY FULL;

INSERT INTO public.student ("name") VALUES
    ('Ali');

INSERT INTO public.student ("name") values ('Ali');

UPDATE public.student SET "name"='Ali' WHERE id=1;

UPDATE public.student SET "name"='Alibaba' WHERE id=1;

INSERT INTO public.student ("name") values ('Muthu');

UPDATE public.student SET "name"='Muthu' WHERE id=2;

INSERT INTO public.student ("name") values ('Ah Kao');

UPDATE public.student SET "name"='Ah kao' WHERE id=3;

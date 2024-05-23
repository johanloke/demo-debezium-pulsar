-- Create the table with primary key
CREATE TABLE public.student (
                                id int GENERATED ALWAYS AS IDENTITY NOT NULL,
                                name varchar NOT NULL,
                                CONSTRAINT student_pkey PRIMARY KEY (id)
);

-- Set the replica identity to use the primary key
ALTER TABLE public.student REPLICA IDENTITY DEFAULT;

INSERT INTO public.student ("name") VALUES
    ('Ali');

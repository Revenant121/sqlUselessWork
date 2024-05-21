-- Последовательность для номера бронирования
CREATE SEQUENCE book_ref_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

-- Последовательность для номера билета
CREATE SEQUENCE ticket_no_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

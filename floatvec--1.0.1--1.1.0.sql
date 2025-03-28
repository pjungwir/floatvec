/* floatvec--1.0.1--1.1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION floatvec" to load this file. \quit

-- elements

CREATE OR REPLACE FUNCTION
vec_elements(anyarray, integer[])
RETURNS anyarray
AS 'floatvec', 'vec_elements_from_int'
LANGUAGE c;

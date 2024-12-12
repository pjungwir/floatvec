/* floatvec--1.1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION floatvec" to load this file. \quit


-- add

CREATE OR REPLACE FUNCTION
vec_add(anyarray, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_add_with_vec'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_add(anyarray, anyelement)
RETURNS anyarray
AS 'floatvec', 'vec_add_with_scalar'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_add(anyelement, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_add_with_scalar'
LANGUAGE c;

-- sub

CREATE OR REPLACE FUNCTION
vec_sub(anyarray, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_sub_with_vec'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_sub(anyarray, anyelement)
RETURNS anyarray
AS 'floatvec', 'vec_sub_with_scalar'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_sub(anyelement, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_sub_with_scalar'
LANGUAGE c;

-- mul

CREATE OR REPLACE FUNCTION
vec_mul(anyarray, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_mul_with_vec'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_mul(anyarray, anyelement)
RETURNS anyarray
AS 'floatvec', 'vec_mul_with_scalar'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_mul(anyelement, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_mul_with_scalar'
LANGUAGE c;

-- div

CREATE OR REPLACE FUNCTION
vec_div(anyarray, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_div_with_vec'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_div(anyarray, anyelement)
RETURNS anyarray
AS 'floatvec', 'vec_div_with_scalar'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_div(anyelement, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_div_with_scalar'
LANGUAGE c;

-- pow

CREATE OR REPLACE FUNCTION
vec_pow(anyarray, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_pow_with_vec'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_pow(anyarray, anyelement)
RETURNS anyarray
AS 'floatvec', 'vec_pow_with_scalar'
LANGUAGE c;

CREATE OR REPLACE FUNCTION
vec_pow(anyelement, anyarray)
RETURNS anyarray
AS 'floatvec', 'vec_pow_with_scalar'
LANGUAGE c;

-- elements

CREATE OR REPLACE FUNCTION
vec_elements(anyarray, integer[])
RETURNS anyarray
AS 'floatvec', 'vec_elements_from_int'
LANGUAGE c;

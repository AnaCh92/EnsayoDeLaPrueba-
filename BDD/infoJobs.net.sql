-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.3-beta
-- PostgreSQL version: 12.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: new_database | type: DATABASE --
-- -- DROP DATABASE IF EXISTS new_database;
-- CREATE DATABASE new_database;
-- -- ddl-end --
-- 

-- object: public."Persona" | type: TABLE --
-- DROP TABLE IF EXISTS public."Persona" CASCADE;
CREATE TABLE public."Persona" (
	"cedulaPersona" varchar(10) NOT NULL,
	"nombrePersona" character(45) NOT NULL,
	"apellidoPersona" character(45),
	"telefonoPersona" varchar(10),
	"direccionPersona" character(55),
	"emailPersona" character(25),
	CONSTRAINT "cedulaPersona_pk" PRIMARY KEY ("cedulaPersona")

);
-- ddl-end --
COMMENT ON TABLE public."Persona" IS E'Tabla persona';
-- ddl-end --
COMMENT ON COLUMN public."Persona"."cedulaPersona" IS E'idPersona Clave Primaria';
-- ddl-end --
COMMENT ON COLUMN public."Persona"."nombrePersona" IS E'nombrePersona método';
-- ddl-end --
COMMENT ON COLUMN public."Persona"."apellidoPersona" IS E'apellidoPersona Método';
-- ddl-end --
COMMENT ON COLUMN public."Persona"."telefonoPersona" IS E'telefonoPersona Método';
-- ddl-end --
COMMENT ON COLUMN public."Persona"."direccionPersona" IS E'direccionPersona Método';
-- ddl-end --
COMMENT ON COLUMN public."Persona"."emailPersona" IS E'emailPersona Método';
-- ddl-end --
ALTER TABLE public."Persona" OWNER TO postgres;
-- ddl-end --

-- object: public."TipoPersona" | type: TABLE --
-- DROP TABLE IF EXISTS public."TipoPersona" CASCADE;
CREATE TABLE public."TipoPersona" (
	"idTipoPersona" serial NOT NULL,
	"nombreTipoPersona" character(55) NOT NULL,
	"descripcionTipoPersona" character(55),
	"cedulaPersona_fk" varchar(10) NOT NULL,
	"idCandidato_fk" serial NOT NULL,
	CONSTRAINT "idTipoPersona" PRIMARY KEY ("idTipoPersona")

);
-- ddl-end --
COMMENT ON TABLE public."TipoPersona" IS E'Tabla TipoPersona';
-- ddl-end --
COMMENT ON COLUMN public."TipoPersona"."idTipoPersona" IS E'idTipoPersona Clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."TipoPersona"."descripcionTipoPersona" IS E'descripcionTipoPersona Método';
-- ddl-end --
COMMENT ON COLUMN public."TipoPersona"."cedulaPersona_fk" IS E'cedulaPersona_fk clave secundaria';
-- ddl-end --
COMMENT ON CONSTRAINT "idTipoPersona" ON public."TipoPersona"  IS E'idTipoPersona calve primaria';
-- ddl-end --
ALTER TABLE public."TipoPersona" OWNER TO postgres;
-- ddl-end --

-- object: public."Candidato" | type: TABLE --
-- DROP TABLE IF EXISTS public."Candidato" CASCADE;
CREATE TABLE public."Candidato" (
	"idCandidato" serial NOT NULL,
	"nombreCandidato" character(55) NOT NULL,
	"descripcionCandidato" character(55),
	CONSTRAINT "idCandidato_pk" PRIMARY KEY ("idCandidato")

);
-- ddl-end --
COMMENT ON TABLE public."Candidato" IS E'tabla Candidato';
-- ddl-end --
COMMENT ON COLUMN public."Candidato"."idCandidato" IS E'idCandidato clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."Candidato"."nombreCandidato" IS E'nombreCandidato método';
-- ddl-end --
COMMENT ON COLUMN public."Candidato"."descripcionCandidato" IS E'descripcionCandidato método';
-- ddl-end --
COMMENT ON CONSTRAINT "idCandidato_pk" ON public."Candidato"  IS E'idCandidato_pk clave primaria';
-- ddl-end --
ALTER TABLE public."Candidato" OWNER TO postgres;
-- ddl-end --

-- object: public."OfertaEmpleo" | type: TABLE --
-- DROP TABLE IF EXISTS public."OfertaEmpleo" CASCADE;
CREATE TABLE public."OfertaEmpleo" (
	"idOfertaEmpleo" serial NOT NULL,
	"idCandidato_fk" serial NOT NULL,
	CONSTRAINT "idOfertaEmpleo_pk" PRIMARY KEY ("idOfertaEmpleo")

);
-- ddl-end --
COMMENT ON TABLE public."OfertaEmpleo" IS E'ofertaEmpleo clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."OfertaEmpleo"."idOfertaEmpleo" IS E'idOfertaEmpleo clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."OfertaEmpleo"."idCandidato_fk" IS E'idCandidato_fk clave secundaria';
-- ddl-end --
COMMENT ON CONSTRAINT "idOfertaEmpleo_pk" ON public."OfertaEmpleo"  IS E'idOfertaEmpleo_pk clave primaria';
-- ddl-end --
ALTER TABLE public."OfertaEmpleo" OWNER TO postgres;
-- ddl-end --

-- object: public."Registro" | type: TABLE --
-- DROP TABLE IF EXISTS public."Registro" CASCADE;
CREATE TABLE public."Registro" (
	"idRegistro" serial NOT NULL,
	"idCandidato_fk" serial NOT NULL,
	"nombreRegistro" character(55) NOT NULL,
	"direccionRegistro" character(55) NOT NULL,
	"telefonoRegistro" varchar(10),
	"emailRegistro" character(25),
	CONSTRAINT "idRegistro_pk" PRIMARY KEY ("idRegistro")

);
-- ddl-end --
COMMENT ON TABLE public."Registro" IS E'tabla Registro';
-- ddl-end --
COMMENT ON COLUMN public."Registro"."idRegistro" IS E'idRegistro clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."Registro"."idCandidato_fk" IS E'idCandidato_fk clave secundaria';
-- ddl-end --
COMMENT ON COLUMN public."Registro"."nombreRegistro" IS E'nombreRegistro clave secundaria';
-- ddl-end --
COMMENT ON COLUMN public."Registro"."direccionRegistro" IS E'direccionRegistro método';
-- ddl-end --
COMMENT ON COLUMN public."Registro"."telefonoRegistro" IS E'telefonoRegistro método';
-- ddl-end --
COMMENT ON COLUMN public."Registro"."emailRegistro" IS E'emailRegistro método';
-- ddl-end --
COMMENT ON CONSTRAINT "idRegistro_pk" ON public."Registro"  IS E'idRegistro_pk clave primaria';
-- ddl-end --
ALTER TABLE public."Registro" OWNER TO postgres;
-- ddl-end --

-- object: public."Curriculum" | type: TABLE --
-- DROP TABLE IF EXISTS public."Curriculum" CASCADE;
CREATE TABLE public."Curriculum" (
	"idCurriculum" serial NOT NULL,
	"idRegistro_fk" serial NOT NULL,
	CONSTRAINT "idCurriculum_pk" PRIMARY KEY ("idCurriculum")

);
-- ddl-end --
COMMENT ON TABLE public."Curriculum" IS E'tabla Curriculum';
-- ddl-end --
COMMENT ON COLUMN public."Curriculum"."idCurriculum" IS E'idCurriculum método';
-- ddl-end --
COMMENT ON COLUMN public."Curriculum"."idRegistro_fk" IS E'idRegistro_fk clave secundaria';
-- ddl-end --
COMMENT ON CONSTRAINT "idCurriculum_pk" ON public."Curriculum"  IS E'idCurriculum clave primaria';
-- ddl-end --
ALTER TABLE public."Curriculum" OWNER TO postgres;
-- ddl-end --

-- object: public."FormacionAcademica" | type: TABLE --
-- DROP TABLE IF EXISTS public."FormacionAcademica" CASCADE;
CREATE TABLE public."FormacionAcademica" (
	"idFormacionAcademica" serial NOT NULL,
	"idCurriculum_fk" serial NOT NULL,
	"tituloFormacionAcademica" character(55) NOT NULL,
	"especialidadFormacionAcademica" character(55) NOT NULL,
	"institucionFormacionAcademica" character(55) NOT NULL,
	"fechaFormacionAcademica" date NOT NULL,
	"meritofechaFormacionAcademica" character(55),
	CONSTRAINT "idFormacionAcademica_pk" PRIMARY KEY ("idFormacionAcademica")

);
-- ddl-end --
COMMENT ON TABLE public."FormacionAcademica" IS E'FormacionAcademica tabla';
-- ddl-end --
COMMENT ON COLUMN public."FormacionAcademica"."idFormacionAcademica" IS E'idFormacionAcademica clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."FormacionAcademica"."tituloFormacionAcademica" IS E'tituloFormacionAcademica método';
-- ddl-end --
COMMENT ON COLUMN public."FormacionAcademica"."especialidadFormacionAcademica" IS E'especialidadFormacionAcademica método';
-- ddl-end --
COMMENT ON COLUMN public."FormacionAcademica"."institucionFormacionAcademica" IS E'institucionFormacionAcademica método';
-- ddl-end --
COMMENT ON COLUMN public."FormacionAcademica"."fechaFormacionAcademica" IS E'fechaFormacionAcademica';
-- ddl-end --
COMMENT ON COLUMN public."FormacionAcademica"."meritofechaFormacionAcademica" IS E'meritofechaFormacionAcademica método';
-- ddl-end --
COMMENT ON CONSTRAINT "idFormacionAcademica_pk" ON public."FormacionAcademica"  IS E'idFormacionAcademica clave primaria';
-- ddl-end --
ALTER TABLE public."FormacionAcademica" OWNER TO postgres;
-- ddl-end --

-- object: public."Empresa" | type: TABLE --
-- DROP TABLE IF EXISTS public."Empresa" CASCADE;
CREATE TABLE public."Empresa" (
	"idEmpresa" serial NOT NULL,
	"idOfertaEmpleo_fk" serial,
	CONSTRAINT "idEmpresa_pk" PRIMARY KEY ("idEmpresa")

);
-- ddl-end --
COMMENT ON TABLE public."Empresa" IS E'comentario';
-- ddl-end --
COMMENT ON COLUMN public."Empresa"."idEmpresa" IS E'idEmpresa clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."Empresa"."idOfertaEmpleo_fk" IS E'idOfertaEmpleo_fk clave secundaria';
-- ddl-end --
COMMENT ON CONSTRAINT "idEmpresa_pk" ON public."Empresa"  IS E'idEmpresa calve primaria';
-- ddl-end --
ALTER TABLE public."Empresa" OWNER TO postgres;
-- ddl-end --

-- object: public."NuevasOfertasDeTrabajo" | type: TABLE --
-- DROP TABLE IF EXISTS public."NuevasOfertasDeTrabajo" CASCADE;
CREATE TABLE public."NuevasOfertasDeTrabajo" (
	"idNuevaOfertaTrabjo_pk" serial NOT NULL,
	"idOfertaEmpleo_fk" serial NOT NULL,
	"descripcionNuevaOfertaTrabjo" character(100) NOT NULL,
	"numeroVacantesNuevaOfertaTrabjo" character(75),
	"fechaNuevaOfertaTrabjo" date NOT NULL,
	"provinciaNuevaOfertaTrabjo" character(55),
	"paisNuevaOfertaTrabjo" character(44) NOT NULL,
	CONSTRAINT "idNuevaOfertaTrabjo_pk" PRIMARY KEY ("idNuevaOfertaTrabjo_pk")

);
-- ddl-end --
COMMENT ON TABLE public."NuevasOfertasDeTrabajo" IS E'NuevasOfertasDeTrabajo tabla';
-- ddl-end --
COMMENT ON COLUMN public."NuevasOfertasDeTrabajo"."idNuevaOfertaTrabjo_pk" IS E'idNuevaOfertaTrabjo clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."NuevasOfertasDeTrabajo"."idOfertaEmpleo_fk" IS E'idOfertaEmpleo_fk clave secundaria';
-- ddl-end --
COMMENT ON COLUMN public."NuevasOfertasDeTrabajo"."descripcionNuevaOfertaTrabjo" IS E'descripcionNuevaOfertaTrabjo método';
-- ddl-end --
COMMENT ON COLUMN public."NuevasOfertasDeTrabajo"."numeroVacantesNuevaOfertaTrabjo" IS E'numeroVacantesNuevaOfertaTrabjo clave secundaria';
-- ddl-end --
COMMENT ON COLUMN public."NuevasOfertasDeTrabajo"."fechaNuevaOfertaTrabjo" IS E'fechaNuevaOfertaTrabjo método';
-- ddl-end --
COMMENT ON COLUMN public."NuevasOfertasDeTrabajo"."provinciaNuevaOfertaTrabjo" IS E'provinciaNuevaOfertaTrabjo método';
-- ddl-end --
COMMENT ON COLUMN public."NuevasOfertasDeTrabajo"."paisNuevaOfertaTrabjo" IS E'paisNuevaOfertaTrabjo método';
-- ddl-end --
COMMENT ON CONSTRAINT "idNuevaOfertaTrabjo_pk" ON public."NuevasOfertasDeTrabajo"  IS E'idNuevaOfertaTrabjo_pk clave primaria';
-- ddl-end --
ALTER TABLE public."NuevasOfertasDeTrabajo" OWNER TO postgres;
-- ddl-end --

-- object: public."RequisitoPuesto" | type: TABLE --
-- DROP TABLE IF EXISTS public."RequisitoPuesto" CASCADE;
CREATE TABLE public."RequisitoPuesto" (
	"idRequisitoPuesto_pk" serial NOT NULL,
	"idNuevaOfertaTrabjo_fk" serial NOT NULL,
	"duracionRequisitoEmpleo" character(55) NOT NULL,
	"horarioRequisitoEmpleo" time NOT NULL,
	CONSTRAINT "idRequisitoEmpleo_pk" PRIMARY KEY ("idRequisitoPuesto_pk")

);
-- ddl-end --
COMMENT ON TABLE public."RequisitoPuesto" IS E'tabla RequisitoEmpleo';
-- ddl-end --
COMMENT ON COLUMN public."RequisitoPuesto"."idRequisitoPuesto_pk" IS E'idRequisitoPuesto_pk  clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."RequisitoPuesto"."idNuevaOfertaTrabjo_fk" IS E'idNuevaOfertaTrabjo_fk clave secundaria';
-- ddl-end --
COMMENT ON CONSTRAINT "idRequisitoEmpleo_pk" ON public."RequisitoPuesto"  IS E'idRequisitoEmpleo_pk clave primaria';
-- ddl-end --
ALTER TABLE public."RequisitoPuesto" OWNER TO postgres;
-- ddl-end --

-- object: public."SalarioAsociadoPuesto" | type: TABLE --
-- DROP TABLE IF EXISTS public."SalarioAsociadoPuesto" CASCADE;
CREATE TABLE public."SalarioAsociadoPuesto" (
	"idSalarioAsociadoPuesto" serial NOT NULL,
	"idRequisitoPuesto_fk" serial NOT NULL,
	CONSTRAINT "idSalarioAsociadoPuesto_pk" PRIMARY KEY ("idSalarioAsociadoPuesto")

);
-- ddl-end --
COMMENT ON TABLE public."SalarioAsociadoPuesto" IS E'tabla SalarioAsociadoPuesto';
-- ddl-end --
COMMENT ON COLUMN public."SalarioAsociadoPuesto"."idRequisitoPuesto_fk" IS E'idRequisitoPuesto_fk clave secundaria';
-- ddl-end --
COMMENT ON CONSTRAINT "idSalarioAsociadoPuesto_pk" ON public."SalarioAsociadoPuesto"  IS E'idSalarioAsociadoPuesto_pk';
-- ddl-end --
ALTER TABLE public."SalarioAsociadoPuesto" OWNER TO postgres;
-- ddl-end --

-- object: public."TipoRequisito" | type: TABLE --
-- DROP TABLE IF EXISTS public."TipoRequisito" CASCADE;
CREATE TABLE public."TipoRequisito" (
	"idTipoRequisito" serial NOT NULL,
	"idRequisitoPuesto_fk" serial NOT NULL,
	"nivelEstudioTipoRequisito" character(75) NOT NULL,
	"experienciaPreviaTipoRequisito" character(55) NOT NULL,
	"idiomasTipoRequisito" character(55),
	CONSTRAINT "idTipoRequisito" PRIMARY KEY ("idTipoRequisito")

);
-- ddl-end --
COMMENT ON TABLE public."TipoRequisito" IS E'tabla TipoRequisito';
-- ddl-end --
COMMENT ON COLUMN public."TipoRequisito"."idTipoRequisito" IS E'idTipoRequisito clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."TipoRequisito"."idRequisitoPuesto_fk" IS E'idRequisitoPuesto_fk clave secundaria';
-- ddl-end --
COMMENT ON COLUMN public."TipoRequisito"."nivelEstudioTipoRequisito" IS E'nivelEstudioTipoRequisito método';
-- ddl-end --
COMMENT ON COLUMN public."TipoRequisito"."experienciaPreviaTipoRequisito" IS E'experienciaEstudioTipoRequisito método';
-- ddl-end --
COMMENT ON COLUMN public."TipoRequisito"."idiomasTipoRequisito" IS E'idiomasTipoRequisito método';
-- ddl-end --
COMMENT ON CONSTRAINT "idTipoRequisito" ON public."TipoRequisito"  IS E'idTipoRequisito clave primaria';
-- ddl-end --
ALTER TABLE public."TipoRequisito" OWNER TO postgres;
-- ddl-end --

-- object: public."subscripcionCandidato" | type: TABLE --
-- DROP TABLE IF EXISTS public."subscripcionCandidato" CASCADE;
CREATE TABLE public."subscripcionCandidato" (
	"idSubscripcionCandidato_pk" serial NOT NULL,
	"idCandidato_fk" serial NOT NULL,
	"idOfertaEmpleo_fk" serial NOT NULL,
	CONSTRAINT "idSubscripcionCandidato_pk" PRIMARY KEY ("idSubscripcionCandidato_pk")

);
-- ddl-end --
COMMENT ON TABLE public."subscripcionCandidato" IS E'tabla subscripcionCandidato';
-- ddl-end --
COMMENT ON COLUMN public."subscripcionCandidato"."idSubscripcionCandidato_pk" IS E'idSubscripcionCandidato_pk clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."subscripcionCandidato"."idCandidato_fk" IS E'idCandidato_fk clave secundaria';
-- ddl-end --
COMMENT ON COLUMN public."subscripcionCandidato"."idOfertaEmpleo_fk" IS E'idOfertaEmpleo_fk clave secundaria';
-- ddl-end --
COMMENT ON CONSTRAINT "idSubscripcionCandidato_pk" ON public."subscripcionCandidato"  IS E'idSubscripcionCandidato_pk clave primaria';
-- ddl-end --
ALTER TABLE public."subscripcionCandidato" OWNER TO postgres;
-- ddl-end --

-- object: public."categoriaInteres" | type: TABLE --
-- DROP TABLE IF EXISTS public."categoriaInteres" CASCADE;
CREATE TABLE public."categoriaInteres" (
	"idCategoriaInteres" serial NOT NULL,
	"idSubscripcionCandidato_fk" smallint NOT NULL,
	"nombrecategoriaInteres" character(55) NOT NULL,
	"descripcionCategoriaInteres" character(55),
	"fechaCategoriaInteres" date,
	CONSTRAINT "idCategoriaInteres" PRIMARY KEY ("idCategoriaInteres")

);
-- ddl-end --
COMMENT ON TABLE public."categoriaInteres" IS E'tabla categoriaInteres';
-- ddl-end --
COMMENT ON COLUMN public."categoriaInteres"."idCategoriaInteres" IS E'idCategoriaInteres clave primaria';
-- ddl-end --
COMMENT ON COLUMN public."categoriaInteres"."nombrecategoriaInteres" IS E'nombrecategoriaInteres método';
-- ddl-end --
COMMENT ON COLUMN public."categoriaInteres"."descripcionCategoriaInteres" IS E'descripcionCategoriaInteres';
-- ddl-end --
COMMENT ON COLUMN public."categoriaInteres"."fechaCategoriaInteres" IS E'fechaCategoriaInteres método';
-- ddl-end --
COMMENT ON CONSTRAINT "idCategoriaInteres" ON public."categoriaInteres"  IS E'idCategoriaInteres clave primaria';
-- ddl-end --
ALTER TABLE public."categoriaInteres" OWNER TO postgres;
-- ddl-end --

-- object: "cedulaPersona_fk" | type: CONSTRAINT --
-- ALTER TABLE public."TipoPersona" DROP CONSTRAINT IF EXISTS "cedulaPersona_fk" CASCADE;
ALTER TABLE public."TipoPersona" ADD CONSTRAINT "cedulaPersona_fk" FOREIGN KEY ("cedulaPersona_fk")
REFERENCES public."Persona" ("cedulaPersona") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "cedulaPersona_fk" ON public."TipoPersona"  IS E'cedulaPersona_fk clave secundaria';
-- ddl-end --


-- object: "idCandidato_fk" | type: CONSTRAINT --
-- ALTER TABLE public."TipoPersona" DROP CONSTRAINT IF EXISTS "idCandidato_fk" CASCADE;
ALTER TABLE public."TipoPersona" ADD CONSTRAINT "idCandidato_fk" FOREIGN KEY ("idCandidato_fk")
REFERENCES public."Candidato" ("idCandidato") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idCandidato_fk" ON public."TipoPersona"  IS E'idCandidato_fk clave secundaria';
-- ddl-end --


-- object: "idCandidato_fk" | type: CONSTRAINT --
-- ALTER TABLE public."OfertaEmpleo" DROP CONSTRAINT IF EXISTS "idCandidato_fk" CASCADE;
ALTER TABLE public."OfertaEmpleo" ADD CONSTRAINT "idCandidato_fk" FOREIGN KEY ("idCandidato_fk")
REFERENCES public."Candidato" ("idCandidato") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idCandidato_fk" ON public."OfertaEmpleo"  IS E'idCandidato_fk clave secundaria';
-- ddl-end --


-- object: "idCandidato_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Registro" DROP CONSTRAINT IF EXISTS "idCandidato_fk" CASCADE;
ALTER TABLE public."Registro" ADD CONSTRAINT "idCandidato_fk" FOREIGN KEY ("idCandidato_fk")
REFERENCES public."Candidato" ("idCandidato") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idCandidato_fk" ON public."Registro"  IS E'idCandidato_fk clave secundaria';
-- ddl-end --


-- object: "idRegistro_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Curriculum" DROP CONSTRAINT IF EXISTS "idRegistro_fk" CASCADE;
ALTER TABLE public."Curriculum" ADD CONSTRAINT "idRegistro_fk" FOREIGN KEY ("idRegistro_fk")
REFERENCES public."Registro" ("idRegistro") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idRegistro_fk" ON public."Curriculum"  IS E'idRegistro_fk clave secundaria';
-- ddl-end --


-- object: "idCurriculum_fk" | type: CONSTRAINT --
-- ALTER TABLE public."FormacionAcademica" DROP CONSTRAINT IF EXISTS "idCurriculum_fk" CASCADE;
ALTER TABLE public."FormacionAcademica" ADD CONSTRAINT "idCurriculum_fk" FOREIGN KEY ("idCurriculum_fk")
REFERENCES public."Curriculum" ("idCurriculum") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "idOfertaEmpleo_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Empresa" DROP CONSTRAINT IF EXISTS "idOfertaEmpleo_fk" CASCADE;
ALTER TABLE public."Empresa" ADD CONSTRAINT "idOfertaEmpleo_fk" FOREIGN KEY ("idOfertaEmpleo_fk")
REFERENCES public."OfertaEmpleo" ("idOfertaEmpleo") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idOfertaEmpleo_fk" ON public."Empresa"  IS E'idOfertaEmpleo_fk clave secundaria';
-- ddl-end --


-- object: "idOfertaEmpleo_fk" | type: CONSTRAINT --
-- ALTER TABLE public."NuevasOfertasDeTrabajo" DROP CONSTRAINT IF EXISTS "idOfertaEmpleo_fk" CASCADE;
ALTER TABLE public."NuevasOfertasDeTrabajo" ADD CONSTRAINT "idOfertaEmpleo_fk" FOREIGN KEY ("idOfertaEmpleo_fk")
REFERENCES public."OfertaEmpleo" ("idOfertaEmpleo") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idOfertaEmpleo_fk" ON public."NuevasOfertasDeTrabajo"  IS E'idOfertaEmpleo_fk clave secundaria';
-- ddl-end --


-- object: "idNuevaOfertaTrabjo_fk" | type: CONSTRAINT --
-- ALTER TABLE public."RequisitoPuesto" DROP CONSTRAINT IF EXISTS "idNuevaOfertaTrabjo_fk" CASCADE;
ALTER TABLE public."RequisitoPuesto" ADD CONSTRAINT "idNuevaOfertaTrabjo_fk" FOREIGN KEY ("idNuevaOfertaTrabjo_fk")
REFERENCES public."NuevasOfertasDeTrabajo" ("idNuevaOfertaTrabjo_pk") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idNuevaOfertaTrabjo_fk" ON public."RequisitoPuesto"  IS E'idNuevaOfertaTrabjo_fk clave secundaria';
-- ddl-end --


-- object: "idRequisitoPuesto_fk" | type: CONSTRAINT --
-- ALTER TABLE public."SalarioAsociadoPuesto" DROP CONSTRAINT IF EXISTS "idRequisitoPuesto_fk" CASCADE;
ALTER TABLE public."SalarioAsociadoPuesto" ADD CONSTRAINT "idRequisitoPuesto_fk" FOREIGN KEY ("idRequisitoPuesto_fk")
REFERENCES public."RequisitoPuesto" ("idRequisitoPuesto_pk") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idRequisitoPuesto_fk" ON public."SalarioAsociadoPuesto"  IS E'idRequisitoPuesto_fk clave secundaria';
-- ddl-end --


-- object: "idRequisitoPuesto_fk" | type: CONSTRAINT --
-- ALTER TABLE public."TipoRequisito" DROP CONSTRAINT IF EXISTS "idRequisitoPuesto_fk" CASCADE;
ALTER TABLE public."TipoRequisito" ADD CONSTRAINT "idRequisitoPuesto_fk" FOREIGN KEY ("idRequisitoPuesto_fk")
REFERENCES public."RequisitoPuesto" ("idRequisitoPuesto_pk") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idRequisitoPuesto_fk" ON public."TipoRequisito"  IS E'idRequisitoPuesto_fk clave secundaria';
-- ddl-end --


-- object: "idCandidato_fk" | type: CONSTRAINT --
-- ALTER TABLE public."subscripcionCandidato" DROP CONSTRAINT IF EXISTS "idCandidato_fk" CASCADE;
ALTER TABLE public."subscripcionCandidato" ADD CONSTRAINT "idCandidato_fk" FOREIGN KEY ("idCandidato_fk")
REFERENCES public."Candidato" ("idCandidato") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idCandidato_fk" ON public."subscripcionCandidato"  IS E'clave secundaria idCandidato_fk';
-- ddl-end --


-- object: "idOfertaEmpleo_fk" | type: CONSTRAINT --
-- ALTER TABLE public."subscripcionCandidato" DROP CONSTRAINT IF EXISTS "idOfertaEmpleo_fk" CASCADE;
ALTER TABLE public."subscripcionCandidato" ADD CONSTRAINT "idOfertaEmpleo_fk" FOREIGN KEY ("idOfertaEmpleo_fk")
REFERENCES public."OfertaEmpleo" ("idOfertaEmpleo") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idOfertaEmpleo_fk" ON public."subscripcionCandidato"  IS E'idOfertaEmpleo_fk clave secundaria';
-- ddl-end --


-- object: "idSubscripcionCandidato_fk" | type: CONSTRAINT --
-- ALTER TABLE public."categoriaInteres" DROP CONSTRAINT IF EXISTS "idSubscripcionCandidato_fk" CASCADE;
ALTER TABLE public."categoriaInteres" ADD CONSTRAINT "idSubscripcionCandidato_fk" FOREIGN KEY ("idSubscripcionCandidato_fk")
REFERENCES public."subscripcionCandidato" ("idSubscripcionCandidato_pk") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --
COMMENT ON CONSTRAINT "idSubscripcionCandidato_fk" ON public."categoriaInteres"  IS E'idSubscripcionCandidato_fk clave secundaria';
-- ddl-end --




CREATE TABLE smn_pagos.smn_anticipo(
  smn_anticipo_id INTEGER NOT NULL,
  smn_orden_compra_rf INTEGER NOT NULL,
  smn_entidad_rf INTEGER NOT NULL,
  smn_sucursal_rf INTEGER,
  smn_proveedor_rf INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL,
  ant_numero_documento INTEGER NOT NULL,
  ant_porcentaje DOUBLE PRECISION NOT NULL,
  ant_monto_ml DOUBLE PRECISION NOT NULL,
  smn_moneda_rf INTEGER,
  smn_tasa_rf INTEGER,
  ant_monto_ma DOUBLE PRECISION,
  ant_estatus CHARACTER(2) NOT NULL,
  ant_idioma CHARACTER(2) NOT NULL,
  ant_usuario VARCHAR(10) NOT NULL,
  ant_fecha_registro DATE NOT NULL,
  ant_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_anticipo;


CREATE TABLE smn_pagos.smn_autorizador(
  smn_autorizador_id INTEGER NOT NULL,
  smn_usuario_rf INTEGER NOT NULL,
  smn_entidades_rf INTEGER NOT NULL,
  smn_sucursales_rf INTEGER NOT NULL,
  aut_estatus CHARACTER(2),
  aut_vigencia DATE NOT NULL,
  aut_idioma CHARACTER(2) NOT NULL,
  aut_usuario CHARACTER(10) NOT NULL,
  aut_fecha_registro DATE NOT NULL,
  aut_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_autorizador;


CREATE TABLE smn_pagos.smn_tipo_firma(
  smn_tipo_firma_id INTEGER NOT NULL,
  tfi_codigo CHARACTER(16) NOT NULL,
  tfi_descripcion VARCHAR(64) NOT NULL,
  tfi_estatus CHARACTER(2) NOT NULL,
  tfi_vigencia DATE NOT NULL,
  tfi_idioma CHARACTER(2) NOT NULL,
  tfi_usuario CHARACTER(10) NOT NULL,
  tfi_fecha_registro DATE NOT NULL,
  tfi_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_tipo_firma;


CREATE TABLE smn_pagos.smn_autorizador_firmas_cuentas(
  smn_aut_firmas_cuentas_id INTEGER NOT NULL,
  smn_autorizador_id INTEGER NOT NULL,
  smn_entidades_financieras_rf INTEGER NOT NULL,
  smn_tipo_firma_id INTEGER NOT NULL,
  fcb_estatus CHARACTER(2) NOT NULL,
  fcb_vigencia DATE NOT NULL,
  fcb_idioma CHARACTER(2) NOT NULL,
  fcb_usuario CHARACTER(10) NOT NULL,
  fcb_fecha_registro DATE NOT NULL,
  fcb_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_autorizador_firmas_cuentas;


CREATE TABLE smn_pagos.smn_canal_pago(
  smn_canal_pago_id INTEGER NOT NULL,
  cdp_codigo CHARACTER(16) NOT NULL,
  cdp_descripcion VARCHAR(64) NOT NULL,
  cdp_estatus CHARACTER(2) NOT NULL,
  cdp_vigencia DATE NOT NULL,
  cdp_idioma CHARACTER(2) NOT NULL,
  cdp_usuario CHARACTER(10) NOT NULL,
  cdp_fecha_registro DATE NOT NULL,
  cdp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_canal_pago;


CREATE TABLE smn_pagos.smn_formato_impresion(
  smn_clave_formato_impresion_id INTEGER NOT NULL,
  foi_codigo CHARACTER(16) NOT NULL,
  foi_descripcion VARCHAR(64) NOT NULL,
  foi_texto TEXT NOT NULL,
  foi_estatus CHARACTER(2) NOT NULL,
  foi_vigencia DATE NOT NULL,
  foi_idioma CHARACTER(2) NOT NULL,
  foi_usuario VARCHAR(10) NOT NULL,
  foi_fecha_registro DATE NOT NULL,
  foi_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_formato_impresion;


CREATE TABLE smn_pagos.smn_rol(
  smn_rol_id INTEGER NOT NULL,
  smn_usuario_rf INTEGER NOT NULL,
  rol_tipo CHARACTER(2) NOT NULL,
  smn_corporaciones_rf INTEGER,
  smn_entidades_rf INTEGER,
  smn_sucursales_rf INTEGER,
  smn_areas_servicios_rf INTEGER,
  smn_unidades_servicios_rf INTEGER,
  smn_estructura_organizacional_rf INTEGER,
  rol_estatus CHARACTER(2) NOT NULL,
  rol_vigencia DATE NOT NULL,
  rol_idioma CHARACTER(2) NOT NULL,
  rol_usuario CHARACTER(10) NOT NULL,
  rol_fecha_registro DATE NOT NULL,
  rol_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_rol;


CREATE TABLE smn_pagos.smn_tipo_documento(
  smn_tipo_documento_id INTEGER NOT NULL,
  tdo_codigo CHARACTER(16) NOT NULL,
  tdo_descripcion VARCHAR(64) NOT NULL,
  tdo_tipo_movimiento CHARACTER(2) NOT NULL,
  tdo_estatus CHARACTER(2) NOT NULL,
  tdo_vigencia DATE NOT NULL,
  tdo_idioma CHARACTER(2) NOT NULL,
  tdo_hora CHARACTER(8) NOT NULL,
  tdo_usuario VARCHAR(10) NOT NULL,
  tdo_fecha_registro DATE NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_tipo_documento;


CREATE TABLE smn_pagos.smn_documento(
  smn_documento_id INTEGER NOT NULL,
  smn_documentos_generales_rf INTEGER NOT NULL,
  smn_tipo_documento_id INTEGER NOT NULL,
  smn_modulo_origen_rf INTEGER NOT NULL,
  doc_codigo CHARACTER(16) NOT NULL,
  doc_descripcion VARCHAR(64) NOT NULL,
  doc_ver_recepcion_item CHARACTER(2) NOT NULL,
  doc_ver_recepcion_servicio CHARACTER(2) NOT NULL,
  doc_ver_orden_compra CHARACTER(2) NOT NULL,
  doc_ver_control_documento CHARACTER(2) NOT NULL,
  doc_porcentaje REAL,
  doc_monto_fijo REAL,
  doc_estatus CHARACTER(2) NOT NULL,
  doc_vigencia DATE NOT NULL,
  doc_idioma CHARACTER(2) NOT NULL,
  doc_usuario CHARACTER(10) NOT NULL,
  doc_fecha_registro DATE NOT NULL,
  doc_hora CHARACTER(8) NOT NULL,
  doc_secuencia INTEGER NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_documento;


CREATE TABLE smn_pagos.smn_solicitud_documento(
  smn_solicitud_documento_id INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL,
  sdp_numero_solicitud_pago INTEGER NOT NULL,
  smn_rol_id INTEGER NOT NULL,
  smn_entidad_bancaria_rf INTEGER NOT NULL,
  smn_cuenta_bancaria_rf INTEGER NOT NULL,
  smn_usuario_id INTEGER NOT NULL,
  smn_clave_formato_impresion_id INTEGER NOT NULL,
  sdp_fecha_solicitud DATE NOT NULL,
  sdp_fecha_recepcion DATE,
  sdp_fecha_activacion DATE,
  sdp_numero INTEGER NOT NULL,
  sdp_numero_inicial INTEGER,
  sdp_numero_final INTEGER,
  sdp_cantidad_documentos INTEGER,
  sdp_estatus_solicitud CHARACTER(2),
  sdp_idioma CHARACTER(2) NOT NULL,
  sdp_usuario CHARACTER(10) NOT NULL,
  sdp_fecha_registro DATE NOT NULL,
  sdp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_solicitud_documento;


CREATE TABLE smn_pagos.smn_control_documento(
  smn_control_documento_id INTEGER NOT NULL,
  smn_solicitud_documento_id INTEGER NOT NULL,
  smn_cuenta_bancaria_rf INTEGER NOT NULL,
  dpd_numero_documento INTEGER NOT NULL,
  dpd_fecha_uso DATE,
  dpd_fecha_anulacion DATE,
  dpd_estatus CHARACTER(2) NOT NULL,
  dpd_idioma CHARACTER(2) NOT NULL,
  dpd_usuario VARCHAR(10) NOT NULL,
  dpd_fecha_registro DATE NOT NULL,
  dpd_hora CHARACTER(10) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_control_documento;


CREATE TABLE smn_pagos.smn_orden_pago(
  smn_orden_pago_id INTEGER NOT NULL,
  smn_documento_contable_rf INTEGER NOT NULL,
  smn_entidades_rf INTEGER NOT NULL,
  smn_sucursales_rf INTEGER NOT NULL,
  smn_clase_auxiliar_rf INTEGER NOT NULL,
  smn_auxiliar_rf INTEGER NOT NULL,
  smn_usuario_rf INTEGER NOT NULL,
  smn_tipo_documento_id INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL,
  opa_numero DOUBLE PRECISION NOT NULL,
  smn_modulo_rf INTEGER NOT NULL,
  smn_documento_rf INTEGER NOT NULL,
  opa_numero_documento DOUBLE PRECISION NOT NULL,
  opa_descripcion VARCHAR(100),
  smn_centro_costo_rf INTEGER,
  smn_proyecto_rf INTEGER,
  smn_orden_compra_rf INTEGER,
  opa_monto_factura_ml DOUBLE PRECISION NOT NULL,
  opa_monto_factura_ma DOUBLE PRECISION,
  opa_monto_pagado_ml DOUBLE PRECISION NOT NULL,
  opa_monto_pagado_ma INTEGER,
  opa_monto_dif_camb DOUBLE PRECISION,
  opa_monto_dif_camb_pag DOUBLE PRECISION,
  opa_saldo_factura_ml DOUBLE PRECISION NOT NULL,
  opa_saldo_factura_ma DOUBLE PRECISION,
  opa_saldo_opa_dif_cambiario DOUBLE PRECISION,
  smn_moneda_rf INTEGER,
  smn_tasa_cambio_rf INTEGER,
  opa_estatus_financiero CHARACTER(2) NOT NULL,
  opa_fecha_reverso DATE,
  opa_estatus CHARACTER(2) NOT NULL,
  opa_idioma CHARACTER(2) NOT NULL,
  opa_usuario VARCHAR(10) NOT NULL,
  opa_fecha_registro DATE NOT NULL,
  tdo_hora VARCHAR(8) NOT NULL,
  smn_clave_imp_ret_id INTEGER,
  smn_orden_compra_op_id INTEGER,
  opa_documento_descripcion_origen VARCHAR(100) NOT NULL,
  opa_fecha_vencimiento DATE NOT NULL,
  opa_fecha_recepcion DATE NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_orden_pago;


CREATE TABLE smn_pagos.smn_descuento_retencion(
  smn_descuento_retencion_op_id INTEGER NOT NULL,
  smn_orden_pago_id INTEGER NOT NULL,
  smn_auxiliar_rf INTEGER NOT NULL,
  smn_descuento_retencion_rf INTEGER NOT NULL,
  dro_monto_base DOUBLE PRECISION NOT NULL,
  dro_porcentaje INTEGER NOT NULL,
  dro_monto_descuento DOUBLE PRECISION NOT NULL,
  dro_idioma CHARACTER(2) NOT NULL,
  dro_usuario VARCHAR(10) NOT NULL,
  dro_fecha_registro DATE NOT NULL,
  dro_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_descuento_retencion;


CREATE TABLE smn_pagos.smn_firmas_cuentas(
  smn_firmas_cuentas_id INTEGER NOT NULL,
  fcb_codigo CHARACTER(16) NOT NULL,
  fcb_descripcion VARCHAR(64) NOT NULL,
  smn_cuentas_bancarias_rf INTEGER NOT NULL,
  fcb_cantidad INTEGER NOT NULL,
  smn_tipo_firma_id INTEGER NOT NULL,
  fcb_estatus CHARACTER(2) NOT NULL,
  fcb_vigencia DATE NOT NULL,
  fcb_idioma CHARACTER(2) NOT NULL,
  fcb_usuario CHARACTER(10) NOT NULL,
  fcb_fecha_registro DATE NOT NULL,
  fcb_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_firmas_cuentas;


CREATE TABLE smn_pagos.smn_formpag_documento_banco(
  smn_formpag_documento_banco_id INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL,
  smn_forma_pago_rf INTEGER NOT NULL,
  smn_entidad_financiera_rf INTEGER NOT NULL,
  fdb_genera_transaccion CHARACTER(2) NOT NULL,
  fdb_programa_impresion VARCHAR(65),
  fdb_estatus CHARACTER(2) NOT NULL,
  fdb_vigencia DATE NOT NULL,
  fdb_idioma CHARACTER(2) NOT NULL,
  fdb_usuario VARCHAR(10) NOT NULL,
  fdb_fecha_registro DATE NOT NULL,
  fdb_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_formpag_documento_banco;


CREATE TABLE smn_pagos.smn_impuestos_retenciones(
  smn_clave_imp_ret_id INTEGER NOT NULL,
  smn_orden_pago_id INTEGER NOT NULL,
  smn_codigo_impuesto_rf INTEGER NOT NULL,
  iop_base_imponible DOUBLE PRECISION NOT NULL,
  iop_base_excenta DOUBLE PRECISION,
  iop_porcentaje_retencion DOUBLE PRECISION,
  iop_monto_impuesto DOUBLE PRECISION,
  iop_idioma CHARACTER(2) NOT NULL,
  iop_usuario VARCHAR(10) NOT NULL,
  iop_fecha_registro DATE NOT NULL,
  iop_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_impuestos_retenciones;


CREATE TABLE smn_pagos.smn_nota_entrada(
  smn_nota_entrada_op_id INTEGER NOT NULL,
  smn_nota_entrada_rf INTEGER NOT NULL,
  smn_documento_inventario_rf INTEGER NOT NULL,
  smn_orden_compra_rf INTEGER NOT NULL,
  smn_documento_rf INTEGER NOT NULL,
  smn_numero_documento_rf INTEGER NOT NULL,
  smn_clase_rf INTEGER NOT NULL,
  smn_proveedor_id INTEGER NOT NULL,
  smn_usuario_rf INTEGER NOT NULL,
  nep_monto_ml DOUBLE PRECISION NOT NULL,
  nep_monto_ma INTEGER,
  smn_moneda_rf INTEGER,
  nep_monto_usado_ml INTEGER NOT NULL,
  nep_monto_usado_ma DOUBLE PRECISION,
  nep_monto_saldo_ml DOUBLE PRECISION NOT NULL,
  nep_monto_saldo_ma DOUBLE PRECISION,
  ocp_estatus CHARACTER(2) NOT NULL,
  nep_idioma CHARACTER(10) NOT NULL,
  nep_usuario VARCHAR(10) NOT NULL,
  nep_fecha_registro DATE NOT NULL,
  nep_hora CHARACTER(8) NOT NULL,
  smn_orden_pago_id INTEGER NOT NULL,
  smn_entidad_rf INTEGER NOT NULL,
  smn_sucursal_rf INTEGER
);

CREATE SEQUENCE smn_pagos.seq_smn_nota_entrada;


CREATE TABLE smn_pagos.smn_nota_recepcion_servicio(
  smn_nota_recepcion_servicio_id INTEGER NOT NULL,
  smn_orden_compra_rf INTEGER,
  smn_centro_costo_rf INTEGER,
  smn_tipo_documento_rf INTEGER,
  smn_documento_rf INTEGER,
  smn_numero_documento_rf INTEGER,
  smn_documento_id INTEGER NOT NULL,
  nrs_numero INTEGER NOT NULL,
  smn_clase_rf INTEGER NOT NULL,
  smn_proveedor_id INTEGER NOT NULL,
  smn_usuario_rf INTEGER NOT NULL,
  nrs_monto_saldo_ml DOUBLE PRECISION NOT NULL,
  nrs_monto_saldo_ma DOUBLE PRECISION,
  nrs_monto_ml DOUBLE PRECISION NOT NULL,
  nrs_monto_ma DOUBLE PRECISION,
  smn_moneda_rf INTEGER,
  nrs_monto_usado_ml DOUBLE PRECISION NOT NULL,
  nrs_monto_usado_ma DOUBLE PRECISION,
  nrs_estatus CHARACTER(2) NOT NULL,
  nrs_idioma CHARACTER(2) NOT NULL,
  nrs_usuario CHARACTER(10) NOT NULL,
  nrs_fecha_registro DATE NOT NULL,
  nrs_hora CHARACTER(8) NOT NULL,
  smn_entidad INTEGER,
  smn_sucursal INTEGER,
  smn_ingresos_rf INTEGER,
  smn_prestador_servicio_rf INTEGER,
  smn_componente_rf INTEGER
);

CREATE SEQUENCE smn_pagos.seq_smn_nota_recepcion_servicio;


CREATE TABLE smn_pagos.smn_orden_compra(
  smn_orden_compra_op_id INTEGER NOT NULL,
  smn_orden_compra_rf INTEGER NOT NULL,
  smn_documento_rf INTEGER NOT NULL,
  smn_numero_documento_rf INTEGER NOT NULL,
  smn_proveedor_id INTEGER NOT NULL,
  smn_usuario_rf INTEGER NOT NULL,
  ocp_monto_ml DOUBLE PRECISION NOT NULL,
  ocp_impuesto_ml DOUBLE PRECISION,
  smn_moneda_rf INTEGER,
  ocp_monto_ma DOUBLE PRECISION,
  ocp_monto_impuestos_ma DOUBLE PRECISION,
  ocp_monto_usado_ml DOUBLE PRECISION NOT NULL,
  ocp_impuesto_usado_ml DOUBLE PRECISION NOT NULL,
  ocp_monto_usado_ma DOUBLE PRECISION,
  ocp_monto_impuestos_usado_ma DOUBLE PRECISION NOT NULL,
  ocp_monto_saldo_ml DOUBLE PRECISION NOT NULL,
  ocp_impuestos_saldo_ml DOUBLE PRECISION NOT NULL,
  ocp_monto_saldo_ma DOUBLE PRECISION,
  ocp_monto_impuestos_saldo_ma DOUBLE PRECISION,
  ocp_estatus CHARACTER(2) NOT NULL,
  ocp_idioma CHARACTER(2) NOT NULL,
  ocp_usuario VARCHAR(10) NOT NULL,
  ocp_fecha_registro DATE NOT NULL,
  ocp_hora CHARACTER(8) NOT NULL,
  smn_entidad_rf INTEGER NOT NULL,
  smn_sucursal_rf INTEGER
);

CREATE SEQUENCE smn_pagos.seq_smn_orden_compra;


CREATE TABLE smn_pagos.smn_orden_pago_old(
  smn_orden_pago_id INTEGER NOT NULL,
  smn_entidades_rf INTEGER NOT NULL,
  smn_sucursales_rf INTEGER NOT NULL,
  smn_clase_auxiliar_rf INTEGER NOT NULL,
  smn_auxiliar_rf INTEGER NOT NULL,
  smn_usuario_rf INTEGER,
  smn_tipo_documento_id INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL,
  opa_numero DOUBLE PRECISION,
  smn_modulo_rf INTEGER NOT NULL,
  smn_documento_rf INTEGER,
  opa_numero_documento DOUBLE PRECISION,
  opa_descripcion VARCHAR(100),
  smn_centro_costo_rf INTEGER,
  smn_proyecto_rf INTEGER,
  smn_orden_compra_rf INTEGER,
  opa_monto_factura_ml DOUBLE PRECISION NOT NULL,
  opa_monto_factura_ma DOUBLE PRECISION,
  opa_monto_pagado_ml DOUBLE PRECISION NOT NULL,
  opa_monto_pagado_ma INTEGER,
  opa_monto_dif_camb DOUBLE PRECISION,
  opa_monto_dif_camb_pag DOUBLE PRECISION,
  opa_saldo_factura_ml DOUBLE PRECISION NOT NULL,
  opa_saldo_factura_ma DOUBLE PRECISION,
  opa_saldo_opa_dif_cambiario DOUBLE PRECISION,
  smn_moneda_rf INTEGER,
  smn_tasa_cambio_rf INTEGER,
  opa_estatus_financiero CHARACTER(2) NOT NULL,
  opa_fecha_reverso DATE,
  opa_estatus CHARACTER(2) NOT NULL,
  opa_idioma CHARACTER(2) NOT NULL,
  opa_usuario VARCHAR(10) NOT NULL,
  opa_fecha_registro DATE NOT NULL,
  tdo_hora VARCHAR(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_orden_pago_old;


CREATE TABLE smn_pagos.smn_plan_descuento_retencion(
  smn_plan_descuento_retencion_id INTEGER NOT NULL,
  smn_proveedor_id INTEGER NOT NULL,
  pdr_fecha_desde DATE NOT NULL,
  pdr_fecha_hasta DATE NOT NULL,
  smn_descuento_retencion_rf INTEGER NOT NULL,
  pdr_monto_total DOUBLE PRECISION,
  pdr_monto_parcial_descuento DOUBLE PRECISION,
  pdr_estatus CHARACTER(2) NOT NULL,
  pdr_idioma CHARACTER(2) NOT NULL,
  pdr_usuario VARCHAR(10) NOT NULL,
  pdr_fecha_registro DATE NOT NULL,
  pdr_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_plan_descuento_retencion;


CREATE TABLE smn_pagos.smn_rechazo(
  smn_rechazo_id INTEGER NOT NULL,
  rec_codigo CHARACTER(16) NOT NULL,
  rec_descripcion VARCHAR(64) NOT NULL,
  rec_estatus CHARACTER(2) NOT NULL,
  rec_vigencia DATE NOT NULL,
  rec_idioma CHARACTER(2) NOT NULL,
  rec_usuario CHARACTER(10) NOT NULL,
  rec_fecha_registro DATE NOT NULL,
  rec_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_rechazo;


CREATE TABLE smn_pagos.smn_rel_autorizador_agenda(
  smn_rel_autorizador_agenda_id INTEGER NOT NULL,
  smn_autorizador_id INTEGER NOT NULL,
  smn_agenda_rf INTEGER NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_rel_autorizador_agenda;


CREATE TABLE smn_pagos.smn_rel_autorizador_documento(
  smn_rel_autorizador_documento_id INTEGER NOT NULL,
  smn_autorizador_id INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_rel_autorizador_documento;


CREATE TABLE smn_pagos.smn_rel_documento_entidades(
  smn_rel_documento_entidades_id INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_rel_documento_entidades;


CREATE TABLE smn_pagos.smn_rel_orden_pago_ne(
  smn_rel_orden_pago_ne_id INTEGER NOT NULL,
  smn_nota_entrada_op_id INTEGER,
  smn_orden_pago_id INTEGER
);

CREATE SEQUENCE smn_pagos.seq_smn_rel_orden_pago_ne;


CREATE TABLE smn_pagos.smn_rel_orden_pago_nrs(
  smn_rel_orden_pago_nrs_id INTEGER NOT NULL,
  smn_nota_recepcion_servicio_id INTEGER,
  smn_orden_pago_id INTEGER
);

CREATE SEQUENCE smn_pagos.seq_smn_rel_orden_pago_nrs;


CREATE TABLE smn_pagos.smn_rel_orden_pago_oc(
  smn_rel_orden_pago_oc_id INTEGER NOT NULL,
  smn_orden_pago_id INTEGER NOT NULL,
  smn_orden_compra_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_rel_orden_pago_oc;


CREATE TABLE smn_pagos.smn_rel_rol_documento(
  smn_rel_rol_documento_id INTEGER NOT NULL,
  smn_rol_id INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_rel_rol_documento;


CREATE TABLE smn_pagos.smn_tipo_documento(
  smn_tipo_documento_id INTEGER NOT NULL,
  tdo_codigo VARCHAR(16) NOT NULL,
  tdo_descripcion VARCHAR(64) NOT NULL,
  tdo_tipo_movimiento CHARACTER(2) NOT NULL,
  tdo_estatus CHARACTER(2) NOT NULL,
  tdo_idioma CHARACTER(2) NOT NULL,
  tdo_usuario VARCHAR(10) NOT NULL,
  tdo_fecha_registro DATE NOT NULL,
  tdo_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_tipo_documento;


CREATE TABLE smn_pagos.smn_lote_pago(
  smn_lote_pago_id INTEGER NOT NULL,
  smn_entidad_financiera_rf INTEGER NOT NULL,
  smn_cuenta_bancaria_rf INTEGER NOT NULL,
  smn_forma_pago_rf INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL,
  lpa_numero_lote VARCHAR(20) NOT NULL,
  lpa_descripcion_lote VARCHAR(120) NOT NULL,
  lpa_fecha_lote DATE NOT NULL,
  lpa_monto_lote_ml DOUBLE PRECISION DEFAULT 0,
  smn_moneda_rf INTEGER,
  smn_tasa_cambio_rf INTEGER,
  lpa_monto_lote_ma DOUBLE PRECISION DEFAULT 0,
  smn_canal_pago_id INTEGER,
  lpa_ano_comprobante_contable INTEGER,
  lpa_periodo_comprobante_contable INTEGER,
  lpa_tipo_comprobante_contable_id INTEGER,
  lpa_numero_comprobante_contable INTEGER,
  lpa_estatus VARCHAR(2) NOT NULL,
  lpa_idioma CHARACTER(2) NOT NULL,
  lpa_usuario VARCHAR(10) NOT NULL,
  lpa_fecha_registro DATE NOT NULL,
  lpa_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_lote_pago;


CREATE TABLE smn_pagos.smn_rel_orden_pago_lote(
  smn_rel_orden_pago_lote_id INTEGER NOT NULL,
  smn_orden_pago_id INTEGER NOT NULL,
  smn_lote_pago_id INTEGER NOT NULL,
  smn_proveedor_rf INTEGER NOT NULL,
  smn_documento_id INTEGER NOT NULL,
  eol_numero_pago INTEGER NOT NULL,
  eol_fecha_pago DATE NOT NULL,
  eol_referencia_bancaria CHARACTER(25),
  eol_monto_pago_ml DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_monto_incremento_ml DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_monto_anticipo_ml DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_monto_retencion_ml DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_monto_neto_ml DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_diferencial_cambiario_ml DOUBLE PRECISION NOT NULL DEFAULT 0,
  smn_moneda_rf INTEGER,
  smn_tasa_cambio_rf INTEGER,
  eol_monto_pago_ma DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_monto_incremento_ma DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_monto_anticipo_ma DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_monto_retencion_ma DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_monto_neto_ma DOUBLE PRECISION NOT NULL DEFAULT 0,
  eol_estatus CHARACTER(2) NOT NULL,
  eol_idioma CHARACTER(2) NOT NULL,
  eol_usuario VARCHAR(10) NOT NULL,
  eol_fecha_registro DATE NOT NULL,
  eol_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_pagos.seq_smn_rel_orden_pago_lote;



ALTER TABLE smn_pagos.smn_autorizador ADD PRIMARY KEY (smn_autorizador_id);

ALTER TABLE smn_pagos.smn_tipo_firma ADD PRIMARY KEY (smn_tipo_firma_id);

ALTER TABLE smn_pagos.smn_autorizador_firmas_cuentas ADD PRIMARY KEY (smn_aut_firmas_cuentas_id);
ALTER TABLE smn_pagos.smn_autorizador_firmas_cuentas ADD CONSTRAINT FK_smn_autorizador_firmas_cuentas_0 FOREIGN KEY (smn_autorizador_id) REFERENCES smn_pagos.smn_autorizador (smn_autorizador_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_autorizador_firmas_cuentas ADD CONSTRAINT FK_smn_autorizador_firmas_cuentas_1 FOREIGN KEY (smn_tipo_firma_id) REFERENCES smn_pagos.smn_tipo_firma (smn_tipo_firma_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_canal_pago ADD PRIMARY KEY (smn_canal_pago_id);

ALTER TABLE smn_pagos.smn_formato_impresion ADD PRIMARY KEY (smn_clave_formato_impresion_id);

ALTER TABLE smn_pagos.smn_rol ADD PRIMARY KEY (smn_rol_id);

ALTER TABLE smn_pagos.smn_tipo_documento ADD PRIMARY KEY (smn_tipo_documento_id);

ALTER TABLE smn_pagos.smn_documento ADD PRIMARY KEY (smn_documento_id);
ALTER TABLE smn_pagos.smn_documento ADD CONSTRAINT FK_smn_documento_0 FOREIGN KEY (smn_tipo_documento_id) REFERENCES smn_pagos.smn_tipo_documento (smn_tipo_documento_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_solicitud_documento ADD PRIMARY KEY (smn_solicitud_documento_id);
ALTER TABLE smn_pagos.smn_solicitud_documento ADD CONSTRAINT FK_smn_solicitud_documento_0 FOREIGN KEY (smn_clave_formato_impresion_id) REFERENCES smn_pagos.smn_formato_impresion (smn_clave_formato_impresion_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_solicitud_documento ADD CONSTRAINT FK_smn_solicitud_documento_1 FOREIGN KEY (smn_rol_id) REFERENCES smn_pagos.smn_rol (smn_rol_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_solicitud_documento ADD CONSTRAINT FK_smn_solicitud_documento_2 FOREIGN KEY (smn_documento_id) REFERENCES smn_pagos.smn_documento (smn_documento_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_control_documento ADD PRIMARY KEY (smn_control_documento_id);
ALTER TABLE smn_pagos.smn_control_documento ADD CONSTRAINT FK_smn_control_documento_0 FOREIGN KEY (smn_solicitud_documento_id) REFERENCES smn_pagos.smn_solicitud_documento (smn_solicitud_documento_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_orden_pago ADD PRIMARY KEY (smn_orden_pago_id);
ALTER TABLE smn_pagos.smn_orden_pago ADD CONSTRAINT FK_smn_orden_pago_0 FOREIGN KEY (smn_tipo_documento_id) REFERENCES smn_pagos.smn_tipo_documento (smn_tipo_documento_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_orden_pago ADD CONSTRAINT FK_smn_orden_pago_1 FOREIGN KEY (smn_documento_id) REFERENCES smn_pagos.smn_documento (smn_documento_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_descuento_retencion ADD PRIMARY KEY (smn_descuento_retencion_op_id);
ALTER TABLE smn_pagos.smn_descuento_retencion ADD CONSTRAINT FK_smn_descuento_retencion_0 FOREIGN KEY (smn_orden_pago_id) REFERENCES smn_pagos.smn_orden_pago (smn_orden_pago_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_firmas_cuentas ADD PRIMARY KEY (smn_firmas_cuentas_id);
ALTER TABLE smn_pagos.smn_firmas_cuentas ADD CONSTRAINT FK_smn_firmas_cuentas_0 FOREIGN KEY (smn_tipo_firma_id) REFERENCES smn_pagos.smn_tipo_firma (smn_tipo_firma_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_formpag_documento_banco ADD PRIMARY KEY (smn_formpag_documento_banco_id);
ALTER TABLE smn_pagos.smn_formpag_documento_banco ADD CONSTRAINT FK_smn_formpag_documento_banco_0 FOREIGN KEY (smn_documento_id) REFERENCES smn_pagos.smn_documento (smn_documento_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_impuestos_retenciones ADD PRIMARY KEY (smn_clave_imp_ret_id);

ALTER TABLE smn_pagos.smn_nota_entrada ADD PRIMARY KEY (smn_nota_entrada_op_id);

ALTER TABLE smn_pagos.smn_nota_recepcion_servicio ADD PRIMARY KEY (smn_nota_recepcion_servicio_id);
ALTER TABLE smn_pagos.smn_nota_recepcion_servicio ADD CONSTRAINT FK_smn_nota_recepcion_servicio_0 FOREIGN KEY (smn_documento_id) REFERENCES smn_pagos.smn_documento (smn_documento_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_orden_compra ADD PRIMARY KEY (smn_orden_compra_op_id);

ALTER TABLE smn_pagos.smn_orden_pago_old ADD PRIMARY KEY (smn_orden_pago_id);

ALTER TABLE smn_pagos.smn_plan_descuento_retencion ADD PRIMARY KEY (smn_plan_descuento_retencion_id);

ALTER TABLE smn_pagos.smn_rechazo ADD PRIMARY KEY (smn_rechazo_id);

ALTER TABLE smn_pagos.smn_rel_autorizador_agenda ADD PRIMARY KEY (smn_rel_autorizador_agenda_id);
ALTER TABLE smn_pagos.smn_rel_autorizador_agenda ADD CONSTRAINT FK_smn_rel_autorizador_agenda_0 FOREIGN KEY (smn_autorizador_id) REFERENCES smn_pagos.smn_autorizador (smn_autorizador_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_rel_autorizador_documento ADD PRIMARY KEY (smn_rel_autorizador_documento_id);
ALTER TABLE smn_pagos.smn_rel_autorizador_documento ADD CONSTRAINT FK_smn_rel_autorizador_documento_0 FOREIGN KEY (smn_documento_id) REFERENCES smn_pagos.smn_documento (smn_documento_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_rel_autorizador_documento ADD CONSTRAINT FK_smn_rel_autorizador_documento_1 FOREIGN KEY (smn_autorizador_id) REFERENCES smn_pagos.smn_autorizador (smn_autorizador_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_rel_documento_entidades ADD PRIMARY KEY (smn_rel_documento_entidades_id);
ALTER TABLE smn_pagos.smn_rel_documento_entidades ADD CONSTRAINT FK_smn_rel_documento_entidades_0 FOREIGN KEY (smn_documento_id) REFERENCES smn_pagos.smn_documento (smn_documento_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_rel_orden_pago_ne ADD PRIMARY KEY (smn_rel_orden_pago_ne_id);
ALTER TABLE smn_pagos.smn_rel_orden_pago_ne ADD CONSTRAINT FK_smn_rel_orden_pago_ne_0 FOREIGN KEY (smn_nota_entrada_op_id) REFERENCES smn_pagos.smn_nota_entrada (smn_nota_entrada_op_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_rel_orden_pago_ne ADD CONSTRAINT FK_smn_rel_orden_pago_ne_1 FOREIGN KEY (smn_orden_pago_id) REFERENCES smn_pagos.smn_orden_pago (smn_orden_pago_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_rel_orden_pago_nrs ADD PRIMARY KEY (smn_rel_orden_pago_nrs_id);
ALTER TABLE smn_pagos.smn_rel_orden_pago_nrs ADD CONSTRAINT FK_smn_rel_orden_pago_nrs_0 FOREIGN KEY (smn_orden_pago_id) REFERENCES smn_pagos.smn_orden_pago (smn_orden_pago_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_rel_orden_pago_nrs ADD CONSTRAINT FK_smn_rel_orden_pago_nrs_1 FOREIGN KEY (smn_nota_recepcion_servicio_id) REFERENCES smn_pagos.smn_nota_recepcion_servicio (smn_nota_recepcion_servicio_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_rel_orden_pago_oc ADD PRIMARY KEY (smn_rel_orden_pago_oc_id);
ALTER TABLE smn_pagos.smn_rel_orden_pago_oc ADD CONSTRAINT FK_smn_rel_orden_pago_oc_0 FOREIGN KEY (smn_orden_compra_id) REFERENCES smn_pagos.smn_orden_compra (smn_orden_compra_op_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_rel_orden_pago_oc ADD CONSTRAINT FK_smn_rel_orden_pago_oc_1 FOREIGN KEY (smn_orden_pago_id) REFERENCES smn_pagos.smn_orden_pago (smn_orden_pago_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_rel_rol_documento ADD PRIMARY KEY (smn_rel_rol_documento_id);
ALTER TABLE smn_pagos.smn_rel_rol_documento ADD CONSTRAINT FK_smn_rel_rol_documento_0 FOREIGN KEY (smn_rol_id) REFERENCES smn_pagos.smn_rol (smn_rol_id) ON DELETE NO ACTION;
ALTER TABLE smn_pagos.smn_rel_rol_documento ADD CONSTRAINT FK_smn_rel_rol_documento_1 FOREIGN KEY (smn_documento_id) REFERENCES smn_pagos.smn_documento (smn_documento_id) ON DELETE NO ACTION;

ALTER TABLE smn_pagos.smn_tipo_documento ADD PRIMARY KEY (smn_tipo_documento_id);

ALTER TABLE smn_pagos.smn_lote_pago ADD PRIMARY KEY (smn_lote_pago_id);

ALTER TABLE smn_pagos.smn_rel_orden_pago_lote ADD PRIMARY KEY (smn_rel_orden_pago_lote_id);


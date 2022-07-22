$('#td_orden_pago').empty();

<smn_orden_pago_rf_rows>
    $('#td_orden_pago').append('<input name="smn_orden_pago_id" id="smn_orden_pago_id" type="checkbox" value="${fld:id}" style="width:10px" /> Num. doc: ${fld:numdoc@#######} |-| Monto ML: ${fld:mtoml@#,###,##0.00} |-| Monto MA: ${fld:mtoma@#,###,##0.00}<br/>');
</smn_orden_pago_rf_rows>

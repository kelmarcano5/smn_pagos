
if(${fld:cont}==${fld:cantidad}){
	uri = "${def:context}${def:actionroot}/../smn_solicitud_documento/smn_control_documento/form?id_solicitud_documento=" + ${fld:id_solicitud_documento};
    openDialog("editor5", uri, 900, 600);
    
}else{
	activarResto(${fld:id_solicitud_documento}, ${fld:numero_inicial},${fld:cuenta_bancaria},${fld:cantidad},${fld:cont});
	
}

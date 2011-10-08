var section = {
	init:function(){
		section.mount();
		
        $.mask.masks = $.extend($.mask.masks,{
        	 moeda:{ mask : '99,999.9999', type : 'reverse' }
        });
        
        $('input:text').setMask();
	},
	
	mount: function(){
		$('#btnSalvar').bind('click', section.validate);
		
		$('#txtDataAbertura, #txtDataEncerramento').datepicker({ 
			altFormat: 'dd-mm-yyyy',
			dayNamesMin: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'],
			monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
			monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Maio', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
		});
		
		$('#txtProcesso').bind('focus', shared.pressItem);
		$('#txtCliente').bind('focus', shared.pressItem);
		$('#txtDataAbertura').bind('focus', shared.pressItem);
		$('#txtDataEncerramento').bind('focus', shared.pressItem);
		$('#txtTaxa').bind('focus', shared.pressItem);
	},
	
	validate: function(e){
		var filterText = /^\s*$/;
		var filterNumbers = /^\d+$/;
		var filterDate = new RegExp("(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/[12][0-9]{3}");
		
		var numeroProcesso = $('#txtProcesso').val();
		var nomeCliente = $('#txtCliente').val();
		var dataAbertura = $('#txtDataAbertura').val();
		var dataEncerramento = $('#txtDataEncerramento').val();
		var taxaContrato = $('#txtTaxa').val();
		
       if(filterText.test(numeroProcesso) || !filterNumbers.test(numeroProcesso)) {
        	jAlert('Digite corretamente o campo <strong>Número do processo!</strong>', 'Erro!');
        	$('#txtProcesso').addClass('error');
            return false;
        } else if(filterText.test(nomeCliente)) {
        	jAlert('Digite corretamente o campo <strong>Cliente!</strong>', 'Erro!');
        	$('#txtCliente').addClass('error');
            return false;
        } else if(filterText.test(dataAbertura) || !filterDate.test(dataAbertura)) {
        	jAlert('Digite corretamente o campo <strong>Data de abertura!</strong>', 'Erro!');
        	$('#txtDataAbertura').addClass('error');
            return false;
        }else if(filterText.test(dataEncerramento) || !filterDate.test(dataEncerramento)) {
        	jAlert('Digite corretamente o campo <strong>Data de encerramento!</strong>', 'Erro!');
        	$('#txtDataEncerramento').addClass('error');
            return false;
        } else if(filterText.test(taxaContrato)) {
        	jAlert('Digite corretamente o campo <strong>Taxa do contrato!</strong>', 'Erro!');
        	$('#txtTaxa').addClass('error');
            return false;
        }
        return true;
	}
};

$(document).ready(section.init);
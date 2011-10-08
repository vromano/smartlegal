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
		
		$('#txtDataDespesa').datepicker({ 
			altFormat: 'dd-mm-yyyy',
			dayNamesMin: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'],
			monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
			monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Maio', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
		});
		
		$('#txtProcesso').bind('focus', shared.pressItem);
		$('#txtDataDespesa').bind('focus', shared.pressItem);
		$('#txtValorDespesa').bind('focus', shared.pressItem);
	},
	
	validate: function(e){
		var filterText = /^\s*$/;
		var filterNumbers = /^\d+$/;
		var filterDate = new RegExp("(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/[12][0-9]{3}");
		
		var numeroProcesso = $('#txtProcesso').val();
		var dataDespesa = $('#txtDataDespesa').val();
		var valorDespesa = $('#txtValorDespesa').val();
		
		if(filterText.test(numeroProcesso) || !filterNumbers.test(numeroProcesso)) {
        	jAlert('Digite corretamente o campo <strong>Número do processo!</strong>', 'Erro!');
        	$('#txtProcesso').addClass('error');
            return false;
        } else if(filterText.test(dataDespesa) || !filterDate.test(dataDespesa)) {
        	jAlert('Digite corretamente o campo <strong>Data da despesa!</strong>', 'Erro!');
        	$('#txtDataDespesa').addClass('error');
            return false;
        } else if(filterText.test(valorDespesa)) {
        	jAlert('Digite corretamente o campo <strong>Valor despesa</strong>', 'Erro!');
        	$('#txtValorDespesa').addClass('error');
            return false;
        }
        return true;
	}
	
};

$(document).ready(section.init);
var section = {
	init:function(){
		section.mount();
	},
	
	mount: function(){
		$('#btnBuscar').bind('click', section.validate);
		
		$('#txtDataInicial, #txtDataFinal').datepicker({ 
			altFormat: 'dd-mm-yyyy',
			dayNamesMin: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'],
			monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
			monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Maio', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
		});
		
		$('#txtDataInicial').bind('focus', shared.pressItem);
		$('#txtDataFinal').bind('focus', shared.pressItem);
		$('#txtProcesso').bind('focus', shared.pressItem);
	},
	
	validate: function(e){
		var filterText = /^\s*$/;
		var filterNumbers = /^\d+$/;
		var filterDate = new RegExp("(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/[12][0-9]{3}");
		
		var dataInicial = $('#txtDataInicial').val();
		var dataFinal = $('#txtDataFinal').val();
		var numeroProcesso = $('#txtProcesso').val();
		
       if(filterText.test(dataInicial) || !filterDate.test(dataInicial)) {
        	jAlert('Digite corretamente o campo <strong>Data inicial!</strong>', 'Erro!');
        	$('#txtDataInicial').addClass('error');
            return false;
        } else if(filterText.test(dataFinal) || !filterDate.test(dataFinal)) {
        	jAlert('Digite corretamente o campo <strong>Data final!</strong>', 'Erro!');
        	$('#txtDataFinal').addClass('error');
            return false;
        } else if(filterText.test(numeroProcesso) || !filterNumbers.test(numeroProcesso)){
        	jAlert('Digite corretamente o campo <strong>Número do processo!</strong>', 'Erro!');
        	$('#txtProcesso').addClass('error');
        	 return false;
        }
        return true;
	}
};

$(document).ready(section.init);
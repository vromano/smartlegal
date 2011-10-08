var section = {
	init:function(){
		section.mount();
		
        $.mask.masks = $.extend($.mask.masks,{
            time:{ mask : '99:99' }
        });
        
        $('input:text').setMask();
	},
	
	mount: function(){
		$('#btnSalvar').bind('click', section.validate);
		
		$('#txtDataInicial').datepicker({ 
			altFormat: 'dd-mm-yyyy',
			dayNamesMin: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'],
			monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
			monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Maio', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
		});
		
		$('#txtAgenda').bind('focus', shared.pressItem);
		$('#txtProcesso').bind('focus', shared.pressItem);
		$('#txtAdvogado').bind('focus', shared.pressItem);
		$('#txtDataInicial').bind('focus', shared.pressItem);
		$('#txtHoraDoEvento').bind('focus', shared.pressItem);
	},
	
	validate: function(e){
		var filterText = /^\s*$/;
		var filterNumbers = /^\d+$/;
		var filterDate = new RegExp("(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/[12][0-9]{3}");
		var filterHours = /^([0-1][0-9]|[2][0-3])(:([0-5][0-9])){1,2}$/;
		
		var numeroAgenda = $('#txtAgenda').val();
		var numeroProcesso = $('#txtProcesso').val();
		var numeroAdvogado = $('#txtAdvogado').val();
		var dataEvento = $('#txtDataInicial').val();
		var horaEvento = $('#txtHoraDoEvento').val();
		
        if (filterText.test(numeroAgenda) || !filterNumbers.test(numeroAgenda)) {
        	jAlert('Digite corretamente o campo <strong>Número da agenda!</strong>', 'Erro!');
        	$('#txtAgenda').addClass('error');
            return false;
        } else if(filterText.test(numeroProcesso) || !filterNumbers.test(numeroProcesso)) {
        	jAlert('Digite corretamente o campo <strong>Número do processo!</strong>', 'Erro!');
        	$('#txtProcesso').addClass('error');
            return false;
        	
        } else if(filterText.test(numeroAdvogado) || !filterNumbers.test(numeroAdvogado)) {
        	jAlert('Digite corretamente o campo <strong>Número do advogado!</strong>', 'Erro!');
        	$('#txtAdvogado').addClass('error');
            return false;
        } else if(filterText.test(dataEvento) || !filterDate.test(dataEvento)) {
        	jAlert('Digite corretamente o campo <strong>Data do evento!</strong>', 'Erro!');
        	$('#txtDataInicial').addClass('error');
            return false;
        } else if(filterText.test(horaEvento) || !filterHours.test(horaEvento)) {
        	jAlert('Digite corretamente o campo <strong>Hora do evento!</strong>', 'Erro!');
        	$('#txtHoraDoEvento').addClass('error');
            return false;
        }
        return true;
	}
};

$(document).ready(section.init);
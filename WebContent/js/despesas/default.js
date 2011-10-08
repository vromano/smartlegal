var section = {
	init:function(){
		section.mount();
	},
	
	mount: function(){
		$('#btnSalvar').bind('click', section.validate);
		$('#txtNome').bind('focus', shared.pressItem);
	},
	
	validate: function(e){
		var filterText = /^\s*$/;
		var filterNumbers = /^\d+$/;
		
		var nomeDespesa = $('#txtNome').val();
		
		if(filterText.test(nomeDespesa) || filterNumbers.test(nomeDespesa)) {
        	jAlert('Digite corretamente o campo <strong>Nome da despesa!</strong>', 'Erro!');
        	$('#txtNome').addClass('error');
            return false;
        }
        return true;
	}
};

$(document).ready(section.init);
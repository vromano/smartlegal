var shared = {
		windowHeight: null,
		documentHeight:null,
		result:null,
		currentClean: null,
		
		init: function(){
			shared.menu();
			shared.getWindow();

			$('.export-pdf').click(shared.exportPDF);
		},
		
		menu: function(){
			$('.content-header ul .last')
				.bind('mouseenter', shared.showMenu)
				.bind('mouseleave', shared.hideMenu);
			
			shared.verifyMenu();
			
		},
		
		showMenu: function(el){
			$(el.currentTarget).children('ul').stop().show();
		},
		
		hideMenu: function(el){
			$(el.currentTarget).children('ul').stop().hide();
		},
		
		getWindow: function(){
			shared.windowHeight = $(window).height();
			shared.documentHeight = $('.general').height();
			shared.result = parseInt(shared.windowHeight - shared.documentHeight);
			$('.footer').height(shared.result);
		},
		
		pressItem: function(el){
			shared.currentClean = /^\s*$/;
			var _this = $(el.currentTarget);
			if(!shared.currentClean.test(_this)){
				_this.removeClass('error');
			}
		},
		
		verifyMenu: function(){
			var getUrl = window.location.href.split('/');
			
	        if (getUrl[4] == 'agenda') {
				$('.content-header ul li a:eq(1)').addClass('active');
	        } else if (getUrl[4] == 'lancamento-despesa') {
	        	$('.content-header ul li a:eq(2)').addClass('active');
	        } else if (getUrl[4] == 'despesas') {
	        	$('.content-header ul li a:eq(3)').addClass('active');
	        } else if (getUrl[4] == 'processos') {
	        	$('.content-header ul li a:eq(4)').addClass('active');
	        } else if (getUrl[4] == 'relatorios') {
	        	if(getUrl[5] == 'processo-por-advogado'){
	        		$('.content-header ul li a:eq(5)').addClass('active');
	        		$('.content-header ul li').find('ul li a:eq(0)').addClass('active');
	        	} else if(getUrl[5] == 'despesa-por-processo'){
	        		$('.content-header ul li a:eq(5)').addClass('active');
	        		$('.content-header ul li').find('ul li a:eq(1)').addClass('active');
	        	} else if(getUrl[5] == 'custo-de-processo-mes'){
	        		$('.content-header ul li a:eq(5)').addClass('active');
	        		$('.content-header ul li').find('ul li a:eq(2)').addClass('active');
	        	} else if(getUrl[5] == 'despesas'){
	        		$('.content-header ul li a:eq(5)').addClass('active');
	        		$('.content-header ul li').find('ul li a:eq(3)').addClass('active');
	        	}
	        } else {
	        	$('.content-header ul li a:eq(0)').addClass('active');
	        }
		},
		
		pdfHeader: function(_doc, _size, _cols, _head, title) {
			_doc.setFontSize(14);
			_doc.text(5, 18, title);
			
			_doc.setFontSize(18);
			_doc.text(5, 10, 'Smart Legal');

			_doc.setFontSize(15);
			for ( var i = 0; i < _cols; i++ ) {
				_doc.text(20 + _size, 40, $(_head[i]).html());
				_size += ((300 / _cols) - 25);
			}

			_doc.setFontSize(10);
			_doc.text(4, 42, '________________________________________________________________________________________________________');
			_doc.setFontSize(9);
		},
		
		pdfPageNumber: function(_doc, page, date) {
			_doc.setFontSize(10);
			_doc.text(4, 280, '________________________________________________________________________________________________________');
			_doc.text(5, 287, '' + date);
			_doc.setFontSize(15);
			_doc.text(105, 287, '' + page);
			_doc.setFontSize(9);
		},

		exportPDF: function(e) {
			if (typeof jsPDF === 'function') {

				var _this = $(e.target),
					_list = $('#' + _this.attr('export')),
				    _head = _list.find('thead tr').children(),
				    _body = _list.find('tbody tr'),
				    title = _this.attr('pdf-title'),
				    _cols = _head.length,
				    _line = 50,
				    _size = 0,
				    _now  = new Date(),
				    _date = _now.getDate() + '/' + (_now.getMonth() + 1) + '/' + _now.getFullYear() + ' ' + _now.getHours() + ':' + _now.getMinutes(),
				    _doc  = new jsPDF();
				
				/// pdf info
				///
				_doc.setProperties({
					title	: _this.attr('pdf-title'),
					subject	: _this.attr('pdf-subject'),		
					author	: 'Smart Legal',
					creator	: 'Smart Legal'
				});
				
				shared.pdfHeader(_doc, _size, _cols, _head.clone(), title);
				shared.pdfPageNumber(_doc, 1, _date);

				/// body
				///
				var items = 0, pages = 2;

				for ( var i = 0; i < _body.length; i++, items++ ) {
					var current = $(_body[i]).find('td');
					_size = 0;
					
					if ( items === 23 ) {
						_doc.addPage();
						shared.pdfPageNumber(_doc, pages++, _date);
						shared.pdfHeader(_doc, _size, _cols, _head.clone(), title);
						_line = 50;
						items = 0;
					}

					for ( var j = 0; j < _cols; j++ ) {
						_doc.text(20 + _size, _line, $(current[j]).html());
						_size += ((300 / _cols) - 25);
					}

					_line += 10;
				}
				_doc.output('datauri');
			}
		}
};

$(document).ready(shared.init);
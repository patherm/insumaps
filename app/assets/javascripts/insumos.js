
$(document).on('turbolinks:load', function(){
    console.log("hehehe")
    hover();
    clickb();
	filterDistList();
})
/*-------------------------------------------------------------------------------*/
    function hover(){
$('.navbar .dropdown').hover(function () {
        $(this).find('.dropdown-menu').first().stop(true, true).slideDown(150);
    }, function () {
        $(this).find('.dropdown-menu').first().stop(true, true).slideUp(105)
    });
};

/*-------------------------------------------------------------------------------*/

function filterDistList(){

	// $('#nome2').change(function(){
 //    id = $('#nome2 :selected').val();
 //    console.log(id);
 //    location.href = "/cidades/"+id+"/distribuidoras";

  dist = $('#_distribuidoras_nome').html();
  $('#nome3').change(function(){
  	 id = $('#nome3 :selected').val();
    nome = $('#nome3 :selected').text();
    optgroup = "optgroup[label='"+ nome + "']";
    options = $(dist).filter(optgroup).html();

    if(nome != ""){
      $('#_distribuidoras_nome').html(options);
      id2 = $('#_distribuidoras_nome :selected').val();
      console.log(id2);
	}

	$('#_distribuidoras_nome').change(function(){
		id2 = $('#_distribuidoras_nome :selected').val();
      console.log(id2);
	});

      $("#submito").click(function() {
      	console.log("mas homi");
      	window.location.replace("/cidades/"+id+"/distribuidoras/"+id2+"/insumos/new");
});
      //location.href = "/cidades/"+id+"/distribuidoras/"+id2+"/insumos/new";
    
  });
}
/*-------------------------------------------------------------------------------*/

function clickb(){
	$('#nome').change(function(){
    id = $('#nome :selected').val();
    console.log(id);
    location.href = "/cidades/"+id+"/distribuidoras/new";

});

	$('#nome2').change(function(){
    id = $('#nome2 :selected').val();
    console.log(id);
    location.href = "/cidades/"+id+"/distribuidoras";

});

}
/*-------------------------------------------------------------------------------*/
$(function() {    
        $('#input-search').on('keyup', function() {
          var rex = new RegExp($(this).val(), 'i');
            $('.searchable-container .items').hide();
            $('.searchable-container .items').filter(function() {
                return rex.test($(this).text());
            }).show();
        });
    });
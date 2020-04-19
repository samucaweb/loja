


function sideBar(){
  document.querySelector('.filter_sidebar_header').addEventListener('click', function(e){
      let sidebar = document.querySelector('.aside_filter');
      let upArow = document.querySelector('.filter_sidebar_header img');
      

      if(sidebar.style.display == 'none' || sidebar.style.display == ''  ){
        sidebar.style.display = 'flex';
        
        upArow.src = 'http://localhost/pitua/assets/images/arow.png';
      }else{
        sidebar.style.display = 'none';
        upArow.src = 'http://localhost/pitua/assets/images/up.png';
      }
  });
let input = document.querySelectorAll('.filterarea input');
  for(i=0;i<input.length;i++){
    input[i].addEventListener('change', function(){
      document.querySelector('.filterarea form').submit();
    });
  }
 
}
/* meu resposivo começa aque*/

  document.querySelector('.menu_resposivo').addEventListener('click', function(e){
    let nav_left = document.querySelector('.nav-left');
     if(nav_left.style.display == 'flex'){
          nav_left.style.display = 'none';
     }else{
      nav_left.style.display = 'flex';
     }
  });

/* meu resposivo  termina aque*/

function add(){
    let button = document.querySelectorAll('button');
    
    button[0].addEventListener("click", (event)=>{
      event.preventDefault();
      let qt  =  parseInt(document.querySelector('.addtocart_qt').value);
      let stockMax  = parseInt(document.querySelector('input[name=max_product]').value);
    let qt_product = parseInt(document.querySelector('#qt_product').value);
      if(qt-1 >= 1) {
          qt = qt - 1;

          document.querySelector('.addtocart_qt').value = qt;
          document.querySelector('#qt_product').value = qt;
      }
      if(qt <= stockMax){
        button[1].removeAttribute("disabled");
        
      }
    });
    button[1].addEventListener("click", (event)=>{
      event.preventDefault();
      let qt  =  parseInt(document.querySelector('.addtocart_qt').value);
      let qt_product = parseInt(document.querySelector('#qt_product').value);
      let stockMax  = parseInt(document.querySelector('input[name=max_product]').value);
      
      qt = qt + 1;
      if(qt >= stockMax){
        button[1].setAttribute("disabled", "disabled");
        alert('Excedeu o limite do estoque');
      }
      document.querySelector('.addtocart_qt').value = qt;
      document.querySelector('#qt_product').value = qt;
      

    });

}
/*function cart(){
  
  
  //let price =  parseFloat(document.querySelector('input[name=price]').value);
  let cartadd = document.querySelectorAll('.cartadd');
  
  
  for(let i=0; i < cartadd.length; i++){
      let valor = parseInt(cartadd[i].children[1].innerHTML);
      let btnmenos = cartadd[i].children[0];
      let btnmas = cartadd[i].children[3];
      let id = parseInt(cartadd[i].children[2].value);
      let price = parseFloat(cartadd[i].children[4].innerHTML);
      
      
      
      btnmenos.addEventListener("click", (event)=>{
        event.preventDefault();
          if(valor == 1){
            alert('Excluindo item do carrinho');
            window.location.href = "http://localhost/pitua/cart/del/"+id;
          }
          valor = valor - 1;
          
          cartadd[i].children[1].innerHTML = valor;
          let sub = price / valor;    
          let sub_total = parseFloat(document.querySelector('.sub').innerHTML);
          let sub_valor = sub_total - parseFloat(sub);

          console.log(sub+" sub")
          console.log(parseFloat(sub_total)+" sub_total")
          console.log(sub_valor+" sub_valor")
          
          document.querySelector('.sub').innerHTML = sub_valor;



      });
      btnmas.addEventListener("click", (event)=>{
        event.preventDefault();
       
              valor = valor + 1;
              
              

              cartadd[i].children[1].innerHTML = valor; 
              let sub = price * valor;    
              let sub_total = parseFloat(document.querySelector('.sub').innerHTML);
              let sub_valor = sub_total + parseFloat(sub) - price;

              console.log(sub+" sub")
              console.log(parseFloat(sub_total)+" sub_total")
              console.log(sub_valor+" sub_valor")
              
              document.querySelector('.sub').innerHTML = sub_valor;
              
      });
     
  }
   
}
*/

//script para prenche o cep automatico//
function limpa_formulário_cep() {
  //Limpa valores do formulário de cep.
  document.getElementById('rua').value=("");
  document.getElementById('bairro').value=("");
  document.getElementById('cidade').value=("");
  document.getElementById('uf').value=("");
}

function meu_callback(conteudo) {
if (!("erro" in conteudo)) {
  //Atualiza os campos com os valores.
  document.getElementById('rua').value=(conteudo.logradouro);
  document.getElementById('bairro').value=(conteudo.bairro);
  document.getElementById('cidade').value=(conteudo.localidade);
  document.getElementById('uf').value=(conteudo.uf);
} //end if.
else {
  //CEP não Encontrado.
  limpa_formulário_cep();
  alert("CEP não encontrado.");
}
}

function pesquisacep(valor) {

//Nova variável "cep" somente com dígitos.
var cep = valor.replace(/\D/g, '');

//Verifica se campo cep possui valor informado.
if (cep != "") {

  //Expressão regular para validar o CEP.
  var validacep = /^[0-9]{8}$/;

  //Valida o formato do CEP.
  if(validacep.test(cep)) {

      //Preenche os campos com "..." enquanto consulta webservice.
      document.getElementById('rua').value="...";
      document.getElementById('bairro').value="...";
      document.getElementById('cidade').value="...";
      document.getElementById('uf').value="...";

      //Cria um elemento javascript.
      var script = document.createElement('script');

      //Sincroniza com o callback.
      script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

      //Insere script no documento e carrega o conteúdo.
      document.body.appendChild(script);

  } //end if.
  else {
      //cep é inválido.
      limpa_formulário_cep();
      alert("Formato de CEP inválido.");
  }
} //end if.
else {
  //cep sem valor, limpa formulário.
  limpa_formulário_cep();
}
};

function trocaFoto(){
}
let foto_m = document.querySelector('.foto_m');

  
let foto_p = document.querySelectorAll('.foto_p');

for(let i =0;i < foto_p.length;i++){
  foto_p[i].addEventListener('click', function(){
    foto_m.src = foto_p[i].src;
    
  });
}



